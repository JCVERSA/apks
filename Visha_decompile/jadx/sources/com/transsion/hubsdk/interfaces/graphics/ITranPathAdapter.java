package com.transsion.hubsdk.interfaces.graphics;

import android.graphics.Path;

public interface ITranPathAdapter {
    Path getSmoothCapsule(float f, float f2, float f3, float f4, float f5, float f6);

    boolean smoothCapsuleEnabled();
}
