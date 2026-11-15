package com.transsion.hubsdk.api.graphics;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.transsion.hubsdk.aosp.graphics.TranAospCanvas;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.graphics.TranThubCanvas;
import com.transsion.hubsdk.interfaces.graphics.ITranCanvasAdapter;

public class TranCanvas {
    private static final int[] CORNER_VALUES;
    private static final TranCanvas INSTANCE;
    private static final boolean INSTANCE_ENABLED = false;
    private static final float ROUND_RATIO = 1.4f;
    private TranAospCanvas mAospService;
    private TranThubCanvas mThubService;

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
        int[] iArr = new int[CornerFlag.values().length];
        CORNER_VALUES = iArr;
        CornerFlag cornerFlag = CornerFlag.TOP_LEFT;
        iArr[cornerFlag.ordinal()] = 1;
        CornerFlag cornerFlag2 = CornerFlag.TOP_RIGHT;
        iArr[cornerFlag2.ordinal()] = 2;
        CornerFlag cornerFlag3 = CornerFlag.BOTTOM_RIGHT;
        iArr[cornerFlag3.ordinal()] = 4;
        CornerFlag cornerFlag4 = CornerFlag.BOTTOM_LEFT;
        iArr[cornerFlag4.ordinal()] = 8;
        iArr[CornerFlag.LEFT.ordinal()] = iArr[cornerFlag.ordinal()] | iArr[cornerFlag4.ordinal()];
        iArr[CornerFlag.TOP.ordinal()] = iArr[cornerFlag.ordinal()] | iArr[cornerFlag2.ordinal()];
        iArr[CornerFlag.RIGHT.ordinal()] = iArr[cornerFlag2.ordinal()] | iArr[cornerFlag3.ordinal()];
        iArr[CornerFlag.BOTTOM.ordinal()] = iArr[cornerFlag4.ordinal()] | iArr[cornerFlag3.ordinal()];
        iArr[CornerFlag.ALL.ordinal()] = iArr[cornerFlag.ordinal()] | iArr[cornerFlag2.ordinal()] | iArr[cornerFlag4.ordinal()] | iArr[cornerFlag3.ordinal()];
        INSTANCE = new TranCanvas();
    }

    public static TranCanvas getInstance() {
        return INSTANCE;
    }

    public boolean clipRRect(Canvas canvas, float f, float f2, float f3, float f4, float f5, CornerFlag cornerFlag) {
        if (canvas == null) {
            throw new IllegalArgumentException("Illegal parameters canvas == null");
        }
        return getService(TranVersion.Core.VERSION_33431).clipRRect(canvas, f, f2, f3, f4, f5 * ROUND_RATIO, CORNER_VALUES[cornerFlag.ordinal()]);
    }

    public void drawSmoothRoundRect(Canvas canvas, float f, float f2, float f3, float f4, float f5, Paint paint) {
        if (canvas == null) {
            throw new IllegalArgumentException("Illegal parameters canvas == null");
        }
        getService(TranVersion.Core.VERSION_33421).drawSmoothRoundRect(canvas, f, f2, f3, f4, f5 * ROUND_RATIO, paint);
    }

    public ITranCanvasAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubCanvas tranThubCanvas = this.mThubService;
            if (tranThubCanvas != null) {
                return tranThubCanvas;
            }
            TranThubCanvas tranThubCanvas2 = new TranThubCanvas();
            this.mThubService = tranThubCanvas2;
            return tranThubCanvas2;
        }
        TranAospCanvas tranAospCanvas = this.mAospService;
        if (tranAospCanvas != null) {
            return tranAospCanvas;
        }
        TranAospCanvas tranAospCanvas2 = new TranAospCanvas();
        this.mAospService = tranAospCanvas2;
        return tranAospCanvas2;
    }

    public boolean smoothcornerCubicEdgeEnabled() {
        return getService(TranVersion.Core.VERSION_33431).smoothcornerCubicEdgeEnabled();
    }

    public void drawSmoothRoundRect(Canvas canvas, float f, float f2, float f3, float f4, float f5, CornerFlag cornerFlag, Paint paint) {
        if (canvas != null) {
            getService(TranVersion.Core.VERSION_33431).drawSmoothRoundRect(canvas, f, f2, f3, f4, f5 * ROUND_RATIO, CORNER_VALUES[cornerFlag.ordinal()], paint);
            return;
        }
        throw new IllegalArgumentException("Illegal parameters canvas == null");
    }
}
