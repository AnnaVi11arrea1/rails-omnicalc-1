Rails.application.routes.draw do
  get("/home", { :controller => "pages", :action => "home" })

  get("/square/new", { :controller => "pages", :action => "square" })
  get("/square/results", { :controller => "pages", :action => "square_result" })

  get("/square_root/new", { :controller => "pages", :action => "squareroot" })
  get("/square_root/results", { :controller => "pages", :action => "squareroot_results" })

  get("/payment/new", { :controller => "pages", :action => "payment" })
  get("/payment/results", { :controller => "pages", :action => "payment_results" })


  get("/random", { :controller => "pages", :action => "random" })
end
