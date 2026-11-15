package com.mgtv.ssp.play;

import android.view.ViewGroup;
import com.mgtv.ssp.a.a;

public interface IScene {
    void attach(ViewGroup viewGroup);

    void detach(ViewGroup viewGroup);

    a getAuthData();

    void setAuthData(a aVar);
}
