package com.transsion.hubsdk.core.foldable;

import android.content.Context;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.foldable.TranFoldingScreen;
import com.transsion.hubsdk.interfaces.foldable.ITranFoldingScreenAdapter;
import java.lang.reflect.Method;

public class TranThubFoldingScreenManager implements ITranFoldingScreenAdapter {
    private TranFoldingScreen mFoldingScreen = new TranFoldingScreen();

    @Override
    public void addActivityEmbeddingPkg(Context context, String str) {
        this.mFoldingScreen.addActivityEmbeddingPkg(context, str);
    }

    @Override
    public String getActivityEmbeddingPkgs(Context context) {
        return this.mFoldingScreen.getActivityEmbeddingPkgs(context);
    }

    @Override
    public int getCompatibleMode(Context context, String str) {
        return this.mFoldingScreen.getCompatibleMode(context, str);
    }

    @Override
    public boolean getHoverModeStateForPackage(Context context, String str) throws TranThubIncompatibleException {
        TranFoldingScreen tranFoldingScreen = this.mFoldingScreen;
        if (tranFoldingScreen != null) {
            return tranFoldingScreen.getHoverModeStateForPackage(context, str);
        }
        return false;
    }

    @Override
    public int getScreenRelayMode(Context context) {
        return this.mFoldingScreen.getScreenRelayMode(context);
    }

    @Override
    public boolean isPkgInActivityEmbedding(Context context, String str) {
        return this.mFoldingScreen.isPkgInActivityEmbedding(context, str);
    }

    @Override
    public void removeActivityEmbeddingPkg(Context context, String str) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mFoldingScreen.getClass(), "removeActivityEmbeddingPkg", Context.class, String.class), this.mFoldingScreen, context, str);
    }

    @Override
    public void setCompatibleMode(Context context, String str, int i) {
        Method method = TranDoorMan.getMethod(this.mFoldingScreen.getClass(), "setCompatibleMode", Context.class, String.class, Integer.TYPE);
        if (method != null) {
            TranDoorMan.invokeMethod(method, this.mFoldingScreen, context, str, Integer.valueOf(i));
        }
    }

    @Override
    public void setHoverModeStateForPackage(Context context, String str, boolean z, boolean z2) throws TranThubIncompatibleException {
        TranFoldingScreen tranFoldingScreen = this.mFoldingScreen;
        if (tranFoldingScreen != null) {
            tranFoldingScreen.setHoverModeStateForPackage(context, str, z, z2);
        }
    }

    @Override
    public void setScreenRelayMode(Context context, int i) {
        this.mFoldingScreen.setScreenRelayMode(context, i);
    }

    @Override
    public void setCompatibleMode(Context context, String str, int i, boolean z) throws TranThubIncompatibleException {
        TranFoldingScreen tranFoldingScreen = this.mFoldingScreen;
        if (tranFoldingScreen != null) {
            tranFoldingScreen.setCompatibleMode(context, str, i, z);
        }
    }
}
