class Api::V1::PollsController < ApplicationController
    def create
        @poll = Poll.create(name: params[:name], bookclub_id: params[:bookclub_id])
        render json: @poll
    end

    def update 
        @poll = Poll.find(params[:id])
        @poll.update(active: params[:active])
        render json: @poll
    end

    def create_option 
        @poll_option = PollOption.create(google_book_id: params[:google_book_id], poll_id: params[:poll_id], votes: params[:votes])
        render json: @poll_option
    end

    def increment_vote 
        @poll_option = PollOption.find(params[:id])
        @poll_option.update(votes: params[:increasedVote])
        @poll = Poll.find(@poll_option.poll_id)
        render json: @poll, include: [:poll_options]
    end
end

