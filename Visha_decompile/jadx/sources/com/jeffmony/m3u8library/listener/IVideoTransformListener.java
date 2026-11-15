package com.jeffmony.m3u8library.listener;

public interface IVideoTransformListener {
    void onTransformFailed(Exception exc);

    void onTransformFinished();

    void onTransformProgress(float f);
}
