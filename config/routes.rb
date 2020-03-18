# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :contacts
  end
  root 'admin/contacts#index'
  devise_for :users
end
