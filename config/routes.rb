YearbookApp::Application.routes.draw do

  get("/am", :controller => "Students", :action => "morning")
  get("/pm", :controller => "Students", :action => "afternoon")
  get("/students", :controller => "Students", :action => "index")
end
