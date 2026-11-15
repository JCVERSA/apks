package com.transsion.vishaplayersdk.gsyplayer.utils;

import android.view.View;
import java.lang.ref.WeakReference;

public final class MeasureHelper {
    private int mCurrentAspectRatio = 0;
    private int mMeasuredHeight;
    private int mMeasuredWidth;
    private final MeasureFormVideoParamsListener mParamsListener;
    private int mVideoHeight;
    private int mVideoRotationDegree;
    private int mVideoSarDen;
    private int mVideoSarNum;
    private int mVideoWidth;
    private WeakReference<View> mWeakView;

    public interface MeasureFormVideoParamsListener {
        int getCurrentVideoHeight();

        int getCurrentVideoWidth();

        int getVideoSarDen();

        int getVideoSarNum();
    }

    public MeasureHelper(View view, MeasureFormVideoParamsListener measureFormVideoParamsListener) {
        this.mParamsListener = measureFormVideoParamsListener;
        this.mWeakView = new WeakReference<>(view);
    }

    /* JADX WARN: Code duplicated, block: B:75:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:76:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f1 A[DONT_INVERT] */
    public void doMeasure(int i, int i2) {
        int i3;
        int i4;
        float f;
        int i5;
        int i6;
        this.mCurrentAspectRatio = GSYVideoType.getShowType();
        if (this.mVideoHeight == 0 || (i3 = this.mVideoWidth) == 0) {
            this.mMeasuredWidth = 1;
            this.mMeasuredHeight = 1;
            return;
        }
        int i7 = this.mVideoRotationDegree;
        if (i7 == 90 || i7 == 270) {
            i2 = i;
            i = i2;
        }
        int i8 = this.mVideoSarNum;
        if (i8 != 0 && (i6 = this.mVideoSarDen) != 0) {
            i3 = (int) ((((double) i8) / (((double) i6) / 1.0d)) * ((double) i3));
        }
        int defaultSize = View.getDefaultSize(i3, i);
        int defaultSize2 = View.getDefaultSize(this.mVideoHeight, i2);
        if (this.mCurrentAspectRatio != -4) {
            if (i3 <= 0 || this.mVideoHeight <= 0) {
                i = defaultSize;
                i2 = defaultSize2;
            } else {
                int mode = View.MeasureSpec.getMode(i);
                i = View.MeasureSpec.getSize(i);
                int mode2 = View.MeasureSpec.getMode(i2);
                i2 = View.MeasureSpec.getSize(i2);
                if (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE) {
                    float f2 = i;
                    float f3 = i2;
                    float f4 = f2 / f3;
                    int i9 = this.mCurrentAspectRatio;
                    if (i9 == -5) {
                        float screenScaleRatio = GSYVideoType.getScreenScaleRatio();
                        int i10 = this.mVideoRotationDegree;
                        f = (i10 == 90 || i10 == 270) ? 1.0f / screenScaleRatio : screenScaleRatio;
                    } else if (i9 == 6) {
                        int i11 = this.mVideoRotationDegree;
                        f = (i11 == 90 || i11 == 270) ? 0.5f : 2.0f;
                    } else if (i9 == 1) {
                        int i12 = this.mVideoRotationDegree;
                        f = (i12 == 90 || i12 == 270) ? 0.5625f : 1.7777778f;
                    } else if (i9 != 2) {
                        f = i3 / this.mVideoHeight;
                        int i13 = this.mVideoSarNum;
                        if (i13 > 0 && (i5 = this.mVideoSarDen) > 0) {
                            f = (f * i13) / i5;
                        }
                    } else {
                        int i14 = this.mVideoRotationDegree;
                        f = (i14 == 90 || i14 == 270) ? 0.75f : 1.3333334f;
                    }
                    boolean z = f > f4;
                    int i15 = this.mCurrentAspectRatio;
                    if (i15 == -5) {
                        if (z) {
                            i2 = (int) (f2 / f);
                        } else {
                            i = (int) (f3 * f);
                        }
                    } else if (i15 != 4) {
                        if (i15 == 6 || i15 == 0 || i15 == 1 || i15 == 2) {
                            if (z) {
                                i2 = (int) (f2 / f);
                            } else {
                                i = (int) (f3 * f);
                            }
                        } else if (z) {
                            i = Math.min(i3, i);
                            i2 = (int) (i / f);
                        } else {
                            int iMin = Math.min(this.mVideoHeight, i2);
                            i2 = iMin;
                            i = (int) (iMin * f);
                        }
                    } else if (z) {
                        i = (int) (f3 * f);
                    } else {
                        i2 = (int) (f2 / f);
                    }
                } else if (mode == 1073741824 && mode2 == 1073741824) {
                    int i16 = i3 * i2;
                    int i17 = this.mVideoHeight;
                    if (i16 < i * i17) {
                        i = i16 / i17;
                    } else if (i16 > i * i17) {
                        i2 = (i17 * i) / i3;
                    }
                } else if (mode == 1073741824) {
                    int i18 = (this.mVideoHeight * i) / i3;
                    if (mode2 != Integer.MIN_VALUE || i18 <= i2) {
                        i2 = i18;
                    }
                } else if (mode2 == 1073741824) {
                    int i19 = (i3 * i2) / this.mVideoHeight;
                    if (mode != Integer.MIN_VALUE || i19 <= i) {
                        i = i19;
                    }
                } else {
                    int i20 = this.mVideoHeight;
                    if (mode2 != Integer.MIN_VALUE || i20 <= i2) {
                        i4 = i3;
                        i2 = i20;
                    } else {
                        i4 = (i2 * i3) / i20;
                    }
                    if (mode != Integer.MIN_VALUE || i4 <= i) {
                        i = i4;
                    } else {
                        i2 = (i20 * i) / i3;
                    }
                }
            }
        }
        this.mMeasuredWidth = i;
        this.mMeasuredHeight = i2;
    }

    public int getMeasuredHeight() {
        return this.mMeasuredHeight;
    }

    public int getMeasuredWidth() {
        return this.mMeasuredWidth;
    }

    public View getView() {
        WeakReference<View> weakReference = this.mWeakView;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public void prepareMeasure(int i, int i2, int i3) {
        MeasureFormVideoParamsListener measureFormVideoParamsListener = this.mParamsListener;
        if (measureFormVideoParamsListener != null) {
            try {
                int currentVideoWidth = measureFormVideoParamsListener.getCurrentVideoWidth();
                int currentVideoHeight = this.mParamsListener.getCurrentVideoHeight();
                Debuger.printfLog("videoWidth: " + currentVideoWidth + " videoHeight: " + currentVideoHeight);
                int videoSarNum = this.mParamsListener.getVideoSarNum();
                int videoSarDen = this.mParamsListener.getVideoSarDen();
                if (currentVideoWidth > 0 && currentVideoHeight > 0) {
                    setVideoSampleAspectRatio(videoSarNum, videoSarDen);
                    setVideoSize(currentVideoWidth, currentVideoHeight);
                }
                setVideoRotation(i3);
                doMeasure(i, i2);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void setAspectRatio(int i) {
        this.mCurrentAspectRatio = i;
    }

    public void setVideoRotation(int i) {
        this.mVideoRotationDegree = i;
    }

    public void setVideoSampleAspectRatio(int i, int i2) {
        this.mVideoSarNum = i;
        this.mVideoSarDen = i2;
    }

    public void setVideoSize(int i, int i2) {
        this.mVideoWidth = i;
        this.mVideoHeight = i2;
    }
}
