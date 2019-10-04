class VocabularyController < ApplicationController

  def index
    @maching_data = Datum.where(user_id: @current_user.id)
    @q = @maching_data.ransack(params[:q])
    @datas = @q.result(distinct: true)
  end
def new
  @new_vocab = Datum.new
end
def add
@new_vocab = Datum.new(word: params[:word],
                meaning: params[:meaning],
                user_id: @current_user.id)

      if @new_vocab.save
        redirect_to("/vocabulary/index")

      else
        render("vocabulary/new")
end
end

def destroy
  @vocabulary = Datum.find(params[:id])
  @vocabulary.destroy
  redirect_to("/vocabulary/index")
end

def show
 @vocabulary = Datum.find_by(id: params[:id])

end

def edit
  @vocabulary = Datum.find_by(id: params[:id])
end

def update
  @vocabulary = Datum.find_by(id: params[:id])
  @vocabulary.word = params[:word]
  @vocabulary.meaning = params[:meaning]
  @vocabulary.user_id = @current_user.id
  if @vocabulary.save
    redirect_to("/vocabulary/index")
end
end

end
