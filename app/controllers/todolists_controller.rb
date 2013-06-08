class TodolistsController < ApplicationController
  # GET /todolists
  # GET /todolists.json
  def index
#    @todolists = Todolist.all
#    @todolists = User.find(session[:user_id]).todos.todolists
#   list all todolists of current todo
    @todolists = Todolist.where(:todo_id  => $current_todo).order(:priority)



#    @todolists = @todolists.order(:priority)




    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @todolists }
    end
  end

  # GET /todolists/1
  # GET /todolists/1.json
  def show
    @todolist = Todolist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @todolist }
    end
  end

  # GET /todolists/new
  # GET /todolists/new.json
  def new
    @todolist = Todolist.new
    @todolist.todo_id= $current_todo

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @todolist }
    end
  end

  # GET /todolists/1/edit
  def edit
    @todolist = Todolist.find(params[:id])
  end

  # POST /todolists
  # POST /todolists.json
  def create
    @todolist = Todolist.new(params[:todolist])
    @todolist.todo_id= $current_todo

    respond_to do |format|
      if @todolist.save
        format.html { redirect_to @todolist, notice: 'Task was successfully created.' }
        format.json { render json: @todolist, status: :created, location: @todolist }
      else
        format.html { render action: "new" }
        format.json { render json: @todolist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /todolists/1
  # PUT /todolists/1.json
  def update
    @todolist = Todolist.find(params[:id])

    respond_to do |format|
      if @todolist.update_attributes(params[:todolist])
        format.html { redirect_to @todolist, notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @todolist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todolists/1
  # DELETE /todolists/1.json
  def destroy
    @todolist = Todolist.find(params[:id])
    @todolist.destroy

    respond_to do |format|
      format.html { redirect_to todo_url($current_todo) }
      format.json { head :no_content }
    end
  end
end
