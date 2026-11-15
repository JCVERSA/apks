package com.transsion.widgetslib.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieAnimationView;
import com.transsion.widgetslib.R;
import defpackage.olb;
import java.io.IOException;
import java.io.InputStream;

@Deprecated
public class LoadingView extends FrameLayout {
    public boolean b;
    public boolean c;
    public LottieAnimationView d;
    public Runnable e;
    public int f;

    public LoadingView(@NonNull Context context) {
        super(context);
        this.c = true;
        e();
    }

    public final void e() {
        final boolean zV = olb.V(getContext());
        try {
            addView(LayoutInflater.from(getContext()).inflate(R.layout.os_layout_loading, (ViewGroup) null));
            this.d = (LottieAnimationView) findViewById(R.id.loadingView);
            Runnable runnable = new Runnable() {
                @Override
                public void run() {
                    String str;
                    String str2;
                    LoadingView.this.f = 0;
                    int measuredWidth = LoadingView.this.getMeasuredWidth();
                    Resources resources = LoadingView.this.getContext().getResources();
                    String str3 = "loading_medium.json";
                    if (resources != null) {
                        if (measuredWidth <= resources.getDimensionPixelSize(R.dimen.os_loading_small_size)) {
                            if (LoadingView.this.b) {
                                str2 = "loading_small_colorfull.json";
                            } else {
                                str2 = zV ? "loading_small_night.json" : "loading_small.json";
                            }
                            str3 = str2;
                            LoadingView.this.f = 2;
                        } else if (measuredWidth <= resources.getDimensionPixelSize(R.dimen.os_loading_medium_size)) {
                            if (LoadingView.this.b) {
                                str3 = "loading_medium_colorfull.json";
                            } else if (zV) {
                                str3 = "loading_medium_night.json";
                            }
                            LoadingView.this.f = 0;
                        } else {
                            if (LoadingView.this.b) {
                                str = "loading_large_colorfull.json";
                            } else {
                                str = zV ? "loading_large_night.json" : "loading_large.json";
                            }
                            str3 = str;
                            LoadingView.this.f = 1;
                        }
                    }
                    InputStream inputStreamOpen = null;
                    try {
                        try {
                            try {
                                inputStreamOpen = LoadingView.this.getContext().getAssets().open(str3);
                                LoadingView.this.d.setAnimation(str3);
                                if (LoadingView.this.c) {
                                    LoadingView.this.d.playAnimation();
                                }
                                if (inputStreamOpen != null) {
                                    inputStreamOpen.close();
                                }
                            } catch (Throwable th) {
                                if (inputStreamOpen != null) {
                                    try {
                                        inputStreamOpen.close();
                                    } catch (IOException e) {
                                        e.printStackTrace();
                                    }
                                }
                                throw th;
                            }
                        } catch (Exception e2) {
                            Log.e("LoadingView", "open asset file error", e2);
                            if (inputStreamOpen == null) {
                            } else {
                                inputStreamOpen.close();
                            }
                        }
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
            };
            this.e = runnable;
            post(runnable);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void f(String str) {
        if (this.d == null || this.b) {
            return;
        }
        InputStream inputStreamOpen = null;
        try {
            try {
                try {
                    inputStreamOpen = getContext().getAssets().open(str);
                    float progress = this.d.getProgress();
                    this.d.cancelAnimation();
                    this.d.setAnimation(str);
                    this.d.playAnimation();
                    this.d.setProgress(progress);
                    if (inputStreamOpen != null) {
                        inputStreamOpen.close();
                    }
                } catch (Exception e) {
                    Log.e("LoadingView", "open asset file error", e);
                    if (inputStreamOpen == null) {
                    } else {
                        inputStreamOpen.close();
                    }
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        } catch (Throwable th) {
            if (inputStreamOpen != null) {
                try {
                    inputStreamOpen.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            throw th;
        }
    }

    public void release() {
        try {
            Runnable runnable = this.e;
            if (runnable != null) {
                removeCallbacks(runnable);
            }
            if (this.c) {
                removeAllViews();
            }
            LottieAnimationView lottieAnimationView = this.d;
            if (lottieAnimationView != null) {
                lottieAnimationView.setProgress(0.0f);
                this.d.cancelAnimation();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setAutoAnim(boolean z) {
        this.c = z;
    }

    public void setDarkMode() {
        String str;
        int i = this.f;
        if (i == 2) {
            str = "loading_small_night.json";
        } else {
            str = i == 1 ? "loading_large_night.json" : "loading_medium_night.json";
        }
        f(str);
    }

    public void setNormalMode() {
        String str;
        int i = this.f;
        if (i == 2) {
            str = "loading_small.json";
        } else {
            str = i == 1 ? "loading_large.json" : "loading_medium.json";
        }
        f(str);
    }

    public void showOnColorFull(boolean z) {
        this.b = z;
        release();
        e();
    }

    public void start() {
        LottieAnimationView lottieAnimationView;
        if (this.c || this.d.isAnimating() || (lottieAnimationView = this.d) == null) {
            return;
        }
        lottieAnimationView.playAnimation();
    }

    public LoadingView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = true;
        e();
    }

    public LoadingView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = true;
        e();
    }

    public LoadingView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.c = true;
        e();
    }
}
