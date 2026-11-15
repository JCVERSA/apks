package com.transsion.hubsdk.aosp.graphics;

import android.graphics.Path;
import com.transsion.hubsdk.interfaces.graphics.ITranPathAdapter;

public class TranAospPath implements ITranPathAdapter {
    @Override
    public Path getSmoothCapsule(float f, float f2, float f3, float f4, float f5, float f6) {
        return null;
    }

    @Override
    public boolean smoothCapsuleEnabled() {
        return false;
    }
}
