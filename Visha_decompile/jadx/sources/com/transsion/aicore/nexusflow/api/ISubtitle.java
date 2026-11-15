package com.transsion.aicore.nexusflow.api;

import androidx.annotation.Keep;
import com.transsion.aicore.nexusflow.IAapCallback;
import com.transsion.aicore.nexusflow.bean.SubtitleBean;
import com.transsion.aicore.nexusflow.constant.State;

@Keep
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
