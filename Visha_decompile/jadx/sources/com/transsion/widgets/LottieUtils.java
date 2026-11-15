package com.transsion.widgets;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieAnimationView;
import com.transsion.widgets.LottieUtils;
import defpackage.bt5;
import defpackage.ct5;
import defpackage.dt5;
import defpackage.fs5;
import defpackage.gm9;
import defpackage.ht5;
import defpackage.it5;
import defpackage.tf5;
import defpackage.ur5;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public class LottieUtils {
    private static final String TAG = "LottieUtils";
    private static final Handler MAIN_HANDLER = new Handler(Looper.getMainLooper());
    private static final ExecutorService DECODE_EXECUTOR = Executors.newSingleThreadExecutor(new ThreadFactory() {
        @Override
        public final Thread newThread(Runnable runnable) {
            return LottieUtils.lambda$static$0(runnable);
        }
    });
    private static final AtomicInteger REQUEST_SEQ = new AtomicInteger();
    private static final Map<LottieAnimationView, Integer> PENDING_REQUESTS = Collections.synchronizedMap(new WeakHashMap());

    public static void decodeEmbeddedImages(@Nullable ur5 ur5Var) {
        Map mapJ;
        if (ur5Var == null || (mapJ = ur5Var.j()) == null || mapJ.isEmpty()) {
            return;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        for (ct5 ct5Var : mapJ.values()) {
            if (ct5Var != null && ct5Var.b() == null) {
                String strC = ct5Var.c();
                if (!TextUtils.isEmpty(strC) && strC.startsWith("data:") && strC.indexOf("base64,") > 0) {
                    try {
                        byte[] bArrDecode = Base64.decode(strC.substring(strC.indexOf(44) + 1), 0);
                        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options);
                        if (bitmapDecodeByteArray != null) {
                            if (ct5Var.f() > 0 && ct5Var.d() > 0 && (bitmapDecodeByteArray.getWidth() != ct5Var.f() || bitmapDecodeByteArray.getHeight() != ct5Var.d())) {
                                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, ct5Var.f(), ct5Var.d(), true);
                                if (bitmapCreateScaledBitmap != bitmapDecodeByteArray) {
                                    bitmapDecodeByteArray.recycle();
                                }
                                bitmapDecodeByteArray = bitmapCreateScaledBitmap;
                            }
                            ct5Var.g(bitmapDecodeByteArray);
                        }
                    } catch (Throwable th) {
                        Log.w(TAG, "decodeEmbeddedImages failed for " + ct5Var.e(), th);
                    }
                }
            }
        }
    }

    public static void dynamicModifyAutoPlayingLottieColor(final LottieAnimationView lottieAnimationView, final int i) {
        lottieAnimationView.addLottieOnCompositionLoadedListener(new ht5() {
            @Override
            public final void a(ur5 ur5Var) {
                LottieUtils.lambda$dynamicModifyAutoPlayingLottieColor$6(lottieAnimationView, i, ur5Var);
            }
        });
    }

    private static boolean isCurrentRequest(@NonNull LottieAnimationView lottieAnimationView, int i) {
        Integer num = PENDING_REQUESTS.get(lottieAnimationView);
        return num != null && num.intValue() == i;
    }

    public static Integer lambda$dynamicModifyAutoPlayingLottieColor$1(int i, bt5 bt5Var) {
        return Integer.valueOf(i);
    }

    public static Integer lambda$dynamicModifyAutoPlayingLottieColor$2(int i, bt5 bt5Var) {
        return Integer.valueOf(i);
    }

    public static Integer lambda$dynamicModifyAutoPlayingLottieColor$3(int i, bt5 bt5Var) {
        return Integer.valueOf(i);
    }

    public static Integer lambda$dynamicModifyAutoPlayingLottieColor$4(int i, bt5 bt5Var) {
        return Integer.valueOf(i);
    }

    public static Integer lambda$dynamicModifyAutoPlayingLottieColor$5(int i, bt5 bt5Var) {
        return Integer.valueOf(i);
    }

    public static void lambda$dynamicModifyAutoPlayingLottieColor$6(LottieAnimationView lottieAnimationView, final int i, ur5 ur5Var) {
        tf5 tf5Var = new tf5("1", "矩形", "填充 1");
        tf5 tf5Var2 = new tf5("左2", "矩形备份 3", "填充 1");
        tf5 tf5Var3 = new tf5("右2", "矩形备份", "填充 1");
        tf5 tf5Var4 = new tf5("左3", "矩形备份 4", "填充 1");
        tf5 tf5Var5 = new tf5("右3", "矩形备份 2", "填充 1");
        Integer num = it5.a;
        lottieAnimationView.addValueCallback(tf5Var, num, new gm9() {
            @Override
            public final Object a(bt5 bt5Var) {
                return LottieUtils.lambda$dynamicModifyAutoPlayingLottieColor$1(i, bt5Var);
            }
        });
        lottieAnimationView.addValueCallback(tf5Var2, num, new gm9() {
            @Override
            public final Object a(bt5 bt5Var) {
                return LottieUtils.lambda$dynamicModifyAutoPlayingLottieColor$2(i, bt5Var);
            }
        });
        lottieAnimationView.addValueCallback(tf5Var3, num, new gm9() {
            @Override
            public final Object a(bt5 bt5Var) {
                return LottieUtils.lambda$dynamicModifyAutoPlayingLottieColor$3(i, bt5Var);
            }
        });
        lottieAnimationView.addValueCallback(tf5Var4, num, new gm9() {
            @Override
            public final Object a(bt5 bt5Var) {
                return LottieUtils.lambda$dynamicModifyAutoPlayingLottieColor$4(i, bt5Var);
            }
        });
        lottieAnimationView.addValueCallback(tf5Var5, num, new gm9() {
            @Override
            public final Object a(bt5 bt5Var) {
                return LottieUtils.lambda$dynamicModifyAutoPlayingLottieColor$5(i, bt5Var);
            }
        });
    }

    public static void lambda$setAnimationWithPreDecodedImages$10(String str, Throwable th) {
        Log.w(TAG, "load failed: " + str, th);
    }

    public static void lambda$setAnimationWithPreDecodedImages$7(LottieAnimationView lottieAnimationView, int i, ur5 ur5Var, boolean z) {
        if (isCurrentRequest(lottieAnimationView, i)) {
            if (lottieAnimationView.isAnimating()) {
                lottieAnimationView.cancelAnimation();
            }
            lottieAnimationView.setComposition(ur5Var);
            if (z) {
                lottieAnimationView.playAnimation();
            }
        }
    }

    public static void lambda$setAnimationWithPreDecodedImages$8(final ur5 ur5Var, final LottieAnimationView lottieAnimationView, final int i, final boolean z) {
        decodeEmbeddedImages(ur5Var);
        MAIN_HANDLER.post(new Runnable() {
            @Override
            public final void run() {
                LottieUtils.lambda$setAnimationWithPreDecodedImages$7(lottieAnimationView, i, ur5Var, z);
            }
        });
    }

    public static void lambda$setAnimationWithPreDecodedImages$9(final LottieAnimationView lottieAnimationView, final int i, final boolean z, final ur5 ur5Var) {
        if (isCurrentRequest(lottieAnimationView, i)) {
            DECODE_EXECUTOR.execute(new Runnable() {
                @Override
                public final void run() {
                    LottieUtils.lambda$setAnimationWithPreDecodedImages$8(ur5Var, lottieAnimationView, i, z);
                }
            });
        }
    }

    public static Thread lambda$static$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "lottie-predecode");
        thread.setPriority(4);
        return thread;
    }

    public static void setAnimationWithPreDecodedImages(@Nullable final LottieAnimationView lottieAnimationView, @Nullable final String str, final boolean z) {
        if (lottieAnimationView == null || TextUtils.isEmpty(str)) {
            return;
        }
        final int iIncrementAndGet = REQUEST_SEQ.incrementAndGet();
        PENDING_REQUESTS.put(lottieAnimationView, Integer.valueOf(iIncrementAndGet));
        fs5.l(lottieAnimationView.getContext().getApplicationContext(), str).d(new dt5() {
            @Override
            public final void onResult(Object obj) {
                LottieUtils.lambda$setAnimationWithPreDecodedImages$9(lottieAnimationView, iIncrementAndGet, z, (ur5) obj);
            }
        }).c(new dt5() {
            @Override
            public final void onResult(Object obj) {
                LottieUtils.lambda$setAnimationWithPreDecodedImages$10(str, (Throwable) obj);
            }
        });
    }
}
