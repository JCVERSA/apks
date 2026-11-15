package com.transsion.hubsdk.interfaces.foldable;

import android.content.Context;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;

public interface ITranFoldingScreenAdapter {
    void addActivityEmbeddingPkg(Context context, String str) throws TranThubIncompatibleException;

    String getActivityEmbeddingPkgs(Context context) throws TranThubIncompatibleException;

    int getCompatibleMode(Context context, String str) throws TranThubIncompatibleException;

    boolean getHoverModeStateForPackage(Context context, String str) throws TranThubIncompatibleException;

    int getScreenRelayMode(Context context) throws TranThubIncompatibleException;

    boolean isPkgInActivityEmbedding(Context context, String str) throws TranThubIncompatibleException;

    void removeActivityEmbeddingPkg(Context context, String str) throws TranThubIncompatibleException;

    void setCompatibleMode(Context context, String str, int i) throws TranThubIncompatibleException;

    void setCompatibleMode(Context context, String str, int i, boolean z) throws TranThubIncompatibleException;

    void setHoverModeStateForPackage(Context context, String str, boolean z, boolean z2) throws TranThubIncompatibleException;

    void setScreenRelayMode(Context context, int i) throws TranThubIncompatibleException;
}
