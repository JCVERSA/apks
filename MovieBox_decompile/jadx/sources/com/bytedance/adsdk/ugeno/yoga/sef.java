package com.bytedance.adsdk.ugeno.yoga;

public class sef extends YogaNodeJNIBase {
    public void aa() {
        long j10 = this.Sj;
        if (j10 != 0) {
            this.Sj = 0L;
            YogaNative.jni_YGNodeDeallocateJNI(j10);
        }
    }

    protected void finalize() throws Throwable {
        try {
            aa();
        } finally {
            super.finalize();
        }
    }
}
