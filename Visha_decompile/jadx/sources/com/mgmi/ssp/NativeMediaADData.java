package com.mgmi.ssp;

public interface NativeMediaADData {
    int getCurrentPosition();

    int getDuration();

    boolean isPlaying();

    void play();

    void resume();

    void stop();
}
