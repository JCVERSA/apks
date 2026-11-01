package com.snaptube.taskManager.task;

public class TaskException extends RuntimeException {
    private TaskError error;

    public TaskException(TaskError taskError) {
        this.error = taskError;
    }

    public TaskException(TaskError taskError, String str) {
        super(str);
        this.error = taskError;
    }

    public TaskError getError() {
        return this.error;
    }
}
