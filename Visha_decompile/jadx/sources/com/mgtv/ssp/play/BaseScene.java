package com.mgtv.ssp.play;

import android.view.View;
import android.view.ViewGroup;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.mgtv.ssp.a.a;

public abstract class BaseScene implements IScene {
    protected AuthInfo.SceneData mSceneData;
    protected a playData;

    public void addToViewGroup(View view, ViewGroup viewGroup) {
        if (view == null || viewGroup == null) {
            return;
        }
        if (view.getParent() != null && view.getParent() != viewGroup) {
            ((ViewGroup) view.getParent()).removeView(view);
            viewGroup.addView(view);
        } else if (view.getParent() == null) {
            viewGroup.addView(view);
        }
    }

    @Override
    public a getAuthData() {
        return this.playData;
    }

    public AuthInfo.SceneData getPlayerAuthData() {
        AuthInfo.SceneData sceneData;
        a aVar = this.playData;
        if (aVar == null || (sceneData = aVar.h) == null) {
            return null;
        }
        return sceneData;
    }

    @Override
    public void setAuthData(a aVar) {
        this.playData = aVar;
        this.mSceneData = getPlayerAuthData();
    }
}
