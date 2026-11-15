package com.google.firebase.heartbeatinfo;

public interface HeartBeatInfo {

    public enum HeartBeat {
        NONE(0),
        SDK(1),
        GLOBAL(2),
        COMBINED(3);

        private final int code;

        HeartBeat(int i10) {
            this.code = i10;
        }

        public int getCode() {
            return this.code;
        }
    }

    HeartBeat b(String str);
}
