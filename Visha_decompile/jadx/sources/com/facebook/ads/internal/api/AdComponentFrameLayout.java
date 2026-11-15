package com.facebook.ads.internal.api;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.UiThread;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.infer.annotation.Nullsafe;

@Keep
@UiThread
@Nullsafe(Nullsafe.Mode.LOCAL)
public abstract class AdComponentFrameLayout extends FrameLayout implements AdComponentView {

    @Nullable
    private AdComponentViewApi mAdComponentViewApi;
    private final AdComponentViewParentApi mAdComponentViewParentApi;

    public AdComponentFrameLayout(Context context) {
        super(context);
        this.mAdComponentViewParentApi = new AdComponentViewParentApi() {
            @Override
            public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
                AdComponentFrameLayout.super.addView(view, i, layoutParams);
            }

            @Override
            public void bringChildToFront(View view) {
                AdComponentFrameLayout.super.bringChildToFront(view);
            }

            @Override
            public void onAttachedToWindow() {
                AdComponentFrameLayout.super.onAttachedToWindow();
            }

            @Override
            public void onDetachedFromWindow() {
                AdComponentFrameLayout.super.onDetachedFromWindow();
            }

            @Override
            public void onMeasure(int i, int i2) {
                AdComponentFrameLayout.super.onMeasure(i, i2);
            }

            @Override
            public void onVisibilityChanged(View view, int i) {
                AdComponentFrameLayout.super.onVisibilityChanged(view, i);
            }

            @Override
            public void onWindowFocusChanged(boolean z) {
                AdComponentFrameLayout.super.onWindowFocusChanged(z);
            }

            @Override
            public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
                AdComponentFrameLayout.super.setLayoutParams(layoutParams);
            }

            @Override
            public void setMeasuredDimension(int i, int i2) {
                AdComponentFrameLayout.super.setMeasuredDimension(i, i2);
            }

            @Override
            public void addView(View view) {
                AdComponentFrameLayout.super.addView(view);
            }

            @Override
            public void addView(View view, int i) {
                AdComponentFrameLayout.super.addView(view, i);
            }

            @Override
            public void addView(View view, ViewGroup.LayoutParams layoutParams) {
                AdComponentFrameLayout.super.addView(view, layoutParams);
            }

            @Override
            public void addView(View view, int i, int i2) {
                AdComponentFrameLayout.super.addView(view, i, i2);
            }
        };
    }

    @Override
    public void addView(View view) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.addView(view);
        } else {
            super.addView(view);
        }
    }

    public void attachAdComponentViewApi(AdComponentViewApiProvider adComponentViewApiProvider) {
        if (DynamicLoaderFactory.isFallbackMode()) {
            return;
        }
        if (this.mAdComponentViewApi != null) {
            throw new IllegalStateException("AdComponentViewApi can't be attached more then once.");
        }
        adComponentViewApiProvider.getAdComponentViewApi().onAttachedToView(this, this.mAdComponentViewParentApi);
        this.mAdComponentViewApi = adComponentViewApiProvider.getAdComponentViewApi();
    }

    @Override
    @SuppressLint({"MissingSuperCall"})
    public void onAttachedToWindow() {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onAttachedToWindow();
        } else {
            super.onAttachedToWindow();
        }
    }

    @Override
    @SuppressLint({"MissingSuperCall"})
    public void onDetachedFromWindow() {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onDetachedFromWindow();
        } else {
            super.onDetachedFromWindow();
        }
    }

    @Override
    public void onMeasure(int i, int i2) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onMeasure(i, i2);
        } else {
            super.onMeasure(i, i2);
        }
    }

    @Override
    public void onVisibilityChanged(View view, int i) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onVisibilityChanged(view, i);
        } else {
            super.onVisibilityChanged(view, i);
        }
    }

    @Override
    public void onWindowFocusChanged(boolean z) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.onWindowFocusChanged(z);
        } else {
            super.onWindowFocusChanged(z);
        }
    }

    @Override
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.setLayoutParams(layoutParams);
        } else {
            super.setLayoutParams(layoutParams);
        }
    }

    public AdComponentFrameLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAdComponentViewParentApi = new AdComponentViewParentApi() {
            @Override
            public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
                AdComponentFrameLayout.super.addView(view, i, layoutParams);
            }

            @Override
            public void bringChildToFront(View view) {
                AdComponentFrameLayout.super.bringChildToFront(view);
            }

            @Override
            public void onAttachedToWindow() {
                AdComponentFrameLayout.super.onAttachedToWindow();
            }

            @Override
            public void onDetachedFromWindow() {
                AdComponentFrameLayout.super.onDetachedFromWindow();
            }

            @Override
            public void onMeasure(int i, int i2) {
                AdComponentFrameLayout.super.onMeasure(i, i2);
            }

            @Override
            public void onVisibilityChanged(View view, int i) {
                AdComponentFrameLayout.super.onVisibilityChanged(view, i);
            }

            @Override
            public void onWindowFocusChanged(boolean z) {
                AdComponentFrameLayout.super.onWindowFocusChanged(z);
            }

            @Override
            public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
                AdComponentFrameLayout.super.setLayoutParams(layoutParams);
            }

            @Override
            public void setMeasuredDimension(int i, int i2) {
                AdComponentFrameLayout.super.setMeasuredDimension(i, i2);
            }

            @Override
            public void addView(View view) {
                AdComponentFrameLayout.super.addView(view);
            }

            @Override
            public void addView(View view, int i) {
                AdComponentFrameLayout.super.addView(view, i);
            }

            @Override
            public void addView(View view, ViewGroup.LayoutParams layoutParams) {
                AdComponentFrameLayout.super.addView(view, layoutParams);
            }

            @Override
            public void addView(View view, int i, int i2) {
                AdComponentFrameLayout.super.addView(view, i, i2);
            }
        };
    }

    @Override
    public void addView(View view, int i) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.addView(view, i);
        } else {
            super.addView(view, i);
        }
    }

    public AdComponentFrameLayout(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAdComponentViewParentApi = new AdComponentViewParentApi() {
            @Override
            public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
                AdComponentFrameLayout.super.addView(view, i2, layoutParams);
            }

            @Override
            public void bringChildToFront(View view) {
                AdComponentFrameLayout.super.bringChildToFront(view);
            }

            @Override
            public void onAttachedToWindow() {
                AdComponentFrameLayout.super.onAttachedToWindow();
            }

            @Override
            public void onDetachedFromWindow() {
                AdComponentFrameLayout.super.onDetachedFromWindow();
            }

            @Override
            public void onMeasure(int i2, int i3) {
                AdComponentFrameLayout.super.onMeasure(i2, i3);
            }

            @Override
            public void onVisibilityChanged(View view, int i2) {
                AdComponentFrameLayout.super.onVisibilityChanged(view, i2);
            }

            @Override
            public void onWindowFocusChanged(boolean z) {
                AdComponentFrameLayout.super.onWindowFocusChanged(z);
            }

            @Override
            public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
                AdComponentFrameLayout.super.setLayoutParams(layoutParams);
            }

            @Override
            public void setMeasuredDimension(int i2, int i3) {
                AdComponentFrameLayout.super.setMeasuredDimension(i2, i3);
            }

            @Override
            public void addView(View view) {
                AdComponentFrameLayout.super.addView(view);
            }

            @Override
            public void addView(View view, int i2) {
                AdComponentFrameLayout.super.addView(view, i2);
            }

            @Override
            public void addView(View view, ViewGroup.LayoutParams layoutParams) {
                AdComponentFrameLayout.super.addView(view, layoutParams);
            }

            @Override
            public void addView(View view, int i2, int i3) {
                AdComponentFrameLayout.super.addView(view, i2, i3);
            }
        };
    }

    @RequiresApi(api = 21)
    public AdComponentFrameLayout(Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mAdComponentViewParentApi = new AdComponentViewParentApi() {
            @Override
            public void addView(View view, int i3, ViewGroup.LayoutParams layoutParams) {
                AdComponentFrameLayout.super.addView(view, i3, layoutParams);
            }

            @Override
            public void bringChildToFront(View view) {
                AdComponentFrameLayout.super.bringChildToFront(view);
            }

            @Override
            public void onAttachedToWindow() {
                AdComponentFrameLayout.super.onAttachedToWindow();
            }

            @Override
            public void onDetachedFromWindow() {
                AdComponentFrameLayout.super.onDetachedFromWindow();
            }

            @Override
            public void onMeasure(int i3, int i4) {
                AdComponentFrameLayout.super.onMeasure(i3, i4);
            }

            @Override
            public void onVisibilityChanged(View view, int i3) {
                AdComponentFrameLayout.super.onVisibilityChanged(view, i3);
            }

            @Override
            public void onWindowFocusChanged(boolean z) {
                AdComponentFrameLayout.super.onWindowFocusChanged(z);
            }

            @Override
            public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
                AdComponentFrameLayout.super.setLayoutParams(layoutParams);
            }

            @Override
            public void setMeasuredDimension(int i3, int i4) {
                AdComponentFrameLayout.super.setMeasuredDimension(i3, i4);
            }

            @Override
            public void addView(View view) {
                AdComponentFrameLayout.super.addView(view);
            }

            @Override
            public void addView(View view, int i3) {
                AdComponentFrameLayout.super.addView(view, i3);
            }

            @Override
            public void addView(View view, ViewGroup.LayoutParams layoutParams) {
                AdComponentFrameLayout.super.addView(view, layoutParams);
            }

            @Override
            public void addView(View view, int i3, int i4) {
                AdComponentFrameLayout.super.addView(view, i3, i4);
            }
        };
    }

    @Override
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.addView(view, layoutParams);
        } else {
            super.addView(view, layoutParams);
        }
    }

    @Override
    public void addView(View view, int i, int i2) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.addView(view, i, i2);
        } else {
            super.addView(view, i, i2);
        }
    }

    @Override
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        AdComponentViewApi adComponentViewApi = this.mAdComponentViewApi;
        if (adComponentViewApi != null) {
            adComponentViewApi.addView(view, i, layoutParams);
        } else {
            super.addView(view, i, layoutParams);
        }
    }
}
