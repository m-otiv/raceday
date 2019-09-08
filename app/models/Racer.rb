class Racer < ApplicationRecord
  include ActiveModel::Model

  attr_accessor :id, :number, :first_name, :last_name, :gender, :group, :secs

  def initialize(params={})
    @id=params[:_id].nil? ? params[:id] : params[:_id].to_s
    @number=params[:number].to_i
    @first_name=params[:first_name]
    @last_name=params[:last_name]
    @gender=params[:gender]
    @group=params[:group]
    @secs=params[:secs].to_i
  end

  def persisted?
    !@id.nil?
  end

  def created_at
    nil
  end

  def updated_at
    nil
  end

  def self.mongo_client
    Mongoid::Clients.default
  end

  def self.collection

  end

  def self.all(prototype={}, sort={}, skip=0, limit=nil)

  end
end
