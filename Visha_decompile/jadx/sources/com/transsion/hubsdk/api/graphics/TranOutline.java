package com.transsion.hubsdk.api.graphics;

import android.graphics.Outline;
import com.transsion.hubsdk.aosp.graphics.TranAospOutline;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.graphics.TranThubOutline;
import com.transsion.hubsdk.interfaces.graphics.ITranOutlineAdapter;

public class TranOutline {
    private static final int[] CORNER_VALUES;
    private static final TranOutline INSTANCE;
    private static final boolean INSTANCE_ENABLED;
    private static final float ROUND_RATIO = 1.4f;
    private TranAospOutline mAospService;
    private TranThubOutline mThubService;

    public enum CornerFlag {
        TOP_LEFT,
        TOP_RIGHT,
        BOTTOM_RIGHT,
        BOTTOM_LEFT,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        ALL
    }

    static {
        int[] iArr = new int[TranCanvas.CornerFlag.values().length];
        CORNER_VALUES = iArr;
        TranCanvas.CornerFlag cornerFlag = TranCanvas.CornerFlag.TOP_LEFT;
        iArr[cornerFlag.ordinal()] = 1;
        TranCanvas.CornerFlag cornerFlag2 = TranCanvas.CornerFlag.TOP_RIGHT;
        iArr[cornerFlag2.ordinal()] = 2;
        TranCanvas.CornerFlag cornerFlag3 = TranCanvas.CornerFlag.BOTTOM_RIGHT;
        iArr[cornerFlag3.ordinal()] = 4;
        TranCanvas.CornerFlag cornerFlag4 = TranCanvas.CornerFlag.BOTTOM_LEFT;
        iArr[cornerFlag4.ordinal()] = 8;
        iArr[TranCanvas.CornerFlag.LEFT.ordinal()] = iArr[cornerFlag.ordinal()] | iArr[cornerFlag4.ordinal()];
        iArr[TranCanvas.CornerFlag.TOP.ordinal()] = iArr[cornerFlag.ordinal()] | iArr[cornerFlag2.ordinal()];
        iArr[TranCanvas.CornerFlag.RIGHT.ordinal()] = iArr[cornerFlag2.ordinal()] | iArr[cornerFlag3.ordinal()];
        iArr[TranCanvas.CornerFlag.BOTTOM.ordinal()] = iArr[cornerFlag4.ordinal()] | iArr[cornerFlag3.ordinal()];
        iArr[TranCanvas.CornerFlag.ALL.ordinal()] = iArr[cornerFlag.ordinal()] | iArr[cornerFlag2.ordinal()] | iArr[cornerFlag4.ordinal()] | iArr[cornerFlag3.ordinal()];
        INSTANCE_ENABLED = TranVersion.isIntegratedThubCore(TranVersion.Core.VERSION_33471);
        INSTANCE = new TranOutline();
    }

    public static TranOutline getInstance() {
        return INSTANCE;
    }

    public ITranOutlineAdapter getService(String str) {
        if (INSTANCE_ENABLED) {
            TranThubOutline tranThubOutline = this.mThubService;
            if (tranThubOutline != null) {
                return tranThubOutline;
            }
            TranThubOutline tranThubOutline2 = new TranThubOutline();
            this.mThubService = tranThubOutline2;
            return tranThubOutline2;
        }
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubOutline tranThubOutline3 = this.mThubService;
            if (tranThubOutline3 != null) {
                return tranThubOutline3;
            }
            TranThubOutline tranThubOutline4 = new TranThubOutline();
            this.mThubService = tranThubOutline4;
            return tranThubOutline4;
        }
        TranAospOutline tranAospOutline = this.mAospService;
        if (tranAospOutline != null) {
            return tranAospOutline;
        }
        TranAospOutline tranAospOutline2 = new TranAospOutline();
        this.mAospService = tranAospOutline2;
        return tranAospOutline2;
    }

    public void setSmoothRoundRect(Outline outline, int i, int i2, int i3, int i4, float f, CornerFlag cornerFlag) {
        if (outline == null) {
            throw new IllegalArgumentException("Illegal parameters outline == null");
        }
        getService(TranVersion.Core.VERSION_33431).setSmoothRoundRect(outline, i, i2, i3, i4, f * ROUND_RATIO, CORNER_VALUES[cornerFlag.ordinal()]);
    }

    public boolean smoothcornerCubicEdgeEnabled() {
        return getService(TranVersion.Core.VERSION_33431).smoothcornerCubicEdgeEnabled();
    }
}
