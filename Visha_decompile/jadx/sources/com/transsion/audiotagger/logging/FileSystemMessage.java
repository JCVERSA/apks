package com.transsion.audiotagger.logging;

public enum FileSystemMessage {
    ACCESS_IS_DENIED("Access is denied"),
    PERMISSION_DENIED("Permission denied");

    String msg;

    FileSystemMessage(String str) {
        this.msg = str;
    }

    public String getMsg() {
        return this.msg;
    }
}
