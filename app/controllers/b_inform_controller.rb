# coding: utf-8
class BInformController < ApplicationController
    def toukou
      #セッション情報からアカウント情報識別

      #募集をDBに登録
      re_id_=tmp_id=params[:re_id]
      bosyuu_=tmp_h=params[:ht2]

      if tmp_id.size==0 #re_idがNULLの場合通常発言
        re_id_=nil
      end

      if tmp_h.size ==0 || (tmp_h.gsub(/\r\n|\r|\n|\s|\t/, "")).size==0
        bosyuu_=nil
      end
      Bosyuu.create(bosyuu:bosyuu_,re_id:re_id_ ,account_id:"bbb")
      Bosyuu.where(bosyuu:nil,re_id:nil).destroy_all
    end

  end

