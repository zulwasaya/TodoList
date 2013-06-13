class TodoMailer < ActionMailer::Base
  default from: "zul@digi-serve.co.uk"

  def todo_created(todo,email)
    @todo= todo
    @email_string=email
    mail subject: "Todolist:"+@todo.subject, to: @email_string, bcc: 'zul_wasaya@yahoo.co.uk'
  end
end
