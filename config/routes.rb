  Rails.application.routes.draw do

    get "inform/hatsugen_inf"
    get "inform/:ht11" => "inform#toukou"
    get "inform/:re_id" => "inform#toukou"
    get "inform/toukou" => "inform"
    get "/b_inform/bosyuu_inf"
    get "b_inform/:ht22" => "b_inform#toukou"
    get "b_inform/:re_id" => "b_inform#toukou"
    get "b_inform/toukou" => "b_inform"

  end