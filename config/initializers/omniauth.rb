Rails.application.config.middleware.use OmniAuth::Builder do

  # ==> Twitter
   provider :twitter, 'jaXy6bFPJQExRcPv5lhZQ', 'cuGjmwJfhtQ6RzZACnNQjLRKHW02Mffc1oIIWfU'

  # ==> Facebook
   provider :facebook, '451523801588789', 'ea254033437ed31d00247659a97c6098'
  
  # ==> GitHub
   provider :github, 'f967bb4406f914062f7e', '91d6a8fd27a756b9cdcb0674918daafa1528e583'
  
  # ==> LinkedIn
   provider :linked_in, 'rkc0q7vu71rb', 'Xo1EzI3sVct5LEPc'



end
