Tenderpets::Application.routes.draw do

  get 'pets/index' => 'pets#index'
  get 'getpet/:id' => 'pets#getpet'

  get 'findpets/:options' => 'pets#findpets'

  get 'random/:options' => 'pets#random'

  get 'listbreeds/:animal' => 'pets#listbreeds'

  root :to => 'pets#index'

end
