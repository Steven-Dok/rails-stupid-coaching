class QuestionsController < ApplicationController
  def ask
    # Affiche le formulaire
  end

  def answer
    @question = params[:answer]

    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question.end_with?(`?`)
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
