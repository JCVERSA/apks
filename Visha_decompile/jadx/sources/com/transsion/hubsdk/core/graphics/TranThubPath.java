package com.transsion.hubsdk.core.graphics;

import android.graphics.Path;
import com.transsion.hubsdk.graphics.TranPath;
import com.transsion.hubsdk.interfaces.graphics.ITranPathAdapter;

public class TranThubPath implements ITranPathAdapter {
    private final TranPath mService = TranPath.getInstance();

    @Override
    public Path getSmoothCapsule(float f, float f2, float f3, float f4, float f5, float f6) {
        Path path = new Path();
        this.mService.addSmoothCapsule(path, f, f2, f3, f4, f5, f6);
        return path;
    }

    @Override
    public boolean smoothCapsuleEnabled() {
        return this.mService.smoothCapsuleEnabled();
    }
}
