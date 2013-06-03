class TodosController < ApplicationController
# Check that the user is logged in
  before_filter :check_login_status!

  # GET /todos
  # GET /todos.json
  def index

#   @todos = Todo.all
    # Get all Todo lists related to user where the primary key of User record is in session[:user_id]
    @todos = User.find(session[:user_id]).todos.scoped
    @todos = @todos.order(:priority)


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @todos }
    end
  end

# list all todos for a particular subject
  def subjecttodos

#   @todos = Todo.all
# Get all Todo lists related to user where the primary key of User record is in session[:user_id]
    @todos = User.find(session[:user_id]).todos

    respond_to do |format|
      format.html # subjecttodos.html.erb
      format.json { render json: @todos }
    end
  end

  # GET /todos/1
  # GET /todos/1.json
  def show
    $current_todo=params[:id]
    @todo = Todo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @todo }
    end
  end

  # GET /todos/new
  # GET /todos/new.json
  def new

    @todo = Todo.new
#    @todo.user_id= session[:user_id]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @todo }
    end
  end

  # GET /todos/1/edit
  def edit
    @todo = Todo.find(params[:id])
  end

  # POST /todos
  # POST /todos.json
  def create
    @todo = Todo.new(params[:todo])
    @todo.user_id= session[:user_id]

    respond_to do |format|
      if @todo.save

        format.html { redirect_to @todo, notice: 'Todo was successfully created.' }
        format.json { render json: @todo, status: :created, location: @todo }
      else
        format.html { render action: "new" }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /todos/1
  # PUT /todos/1.json
  def update
    @todo = Todo.find(params[:id])

    respond_to do |format|
      if @todo.update_attributes(params[:todo])
        format.html { redirect_to @todo, notice: 'Todo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todos/1
  # DELETE /todos/1.json
  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    respond_to do |format|
      format.html { redirect_to todos_url }
      format.json { head :no_content }
    end
  end
end
