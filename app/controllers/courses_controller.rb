class CoursesController < ApplicationController

    # GET /courses/:id
    def show
        @course = Course.find(params[:id])
    end

    # GET /courses/new
    def new
        @course = Course.new
    end

    # POST /courses
    def create
        course = Course.new(course_params)
        if (course.save)
            redirect_to course
        else
            render :new
        end
    end

    # GET /courses/:id/edit
    def edit
    end

    # PATCH/PUT /courses/:id
    def update
    end

    # DELETE /courses/:id
    def destroy
    end

private
    def course_params
        params.require(:course).permit(:name, :url, :description, :difficulty, :duration)
    end

end
