package com.transsion.livecaption.api;

import com.transsion.livecaption.IAapCallback;
import com.transsion.livecaption.bean.SubtitleBean;
import com.transsion.livecaption.constant.State;

public interface ISubtitle {
    State getState();

    void release();

    void setCallback(IAapCallback.Stub stub);

    void start(SubtitleBean subtitleBean);

    void stop();

    void stop(int i);

    void translate(String str);

    void update(SubtitleBean subtitleBean);
}
