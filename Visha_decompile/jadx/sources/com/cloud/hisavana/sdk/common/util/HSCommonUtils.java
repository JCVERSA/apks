package com.cloud.hisavana.sdk.common.util;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.webkit.WebView;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomTabConfigDTO;
import com.cloud.hisavana.sdk.k1;
import com.cloud.hisavana.sdk.manager.a;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.google.gson.JsonObject;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import defpackage.cy9;
import defpackage.e74;
import defpackage.el0;
import defpackage.f1a;
import defpackage.g1a;
import defpackage.ikd;
import defpackage.j1a;
import defpackage.ul4;
import defpackage.wh1;
import defpackage.y45;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Pair;
import kotlin.Result;
import kotlin.c;
import kotlin.text.Regex;
import kotlinx.coroutines.TimeoutKt;
import org.slf4j.Marker;

public final class HSCommonUtils {
    public static final HSCommonUtils a = new HSCommonUtils();
    public static final Regex b = new Regex("^[1-9]\\d*:[1-9]\\d*$");

    public static final void t(HSCommonUtils hSCommonUtils, final View view, final GradientDrawable gradientDrawable) {
        y45.j(hSCommonUtils, "$this_runCatching");
        y45.j(gradientDrawable, "$drawable");
        try {
            Result.Companion companion = Result.INSTANCE;
            final ArgbEvaluator argbEvaluator = new ArgbEvaluator();
            final ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setDuration(600L);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    HSCommonUtils.u(valueAnimatorOfFloat, view, gradientDrawable, argbEvaluator, valueAnimator);
                }
            });
            valueAnimatorOfFloat.start();
            Result.m279constructorimpl(valueAnimatorOfFloat);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m279constructorimpl(c.a(th));
        }
    }

    public static final void u(ValueAnimator valueAnimator, View view, GradientDrawable gradientDrawable, ArgbEvaluator argbEvaluator, ValueAnimator valueAnimator2) {
        y45.j(gradientDrawable, "$drawable");
        y45.j(argbEvaluator, "$evaluator");
        y45.j(valueAnimator2, "it");
        try {
            Result.Companion companion = Result.INSTANCE;
            float animatedFraction = valueAnimator2.getAnimatedFraction();
            if (animatedFraction == 0.0f && view != null) {
                view.setVisibility(0);
            }
            Object objEvaluate = argbEvaluator.evaluate(animatedFraction, Integer.valueOf(Color.parseColor("#00336FFF")), Integer.valueOf(Color.parseColor("#FF336FFF")));
            y45.h(objEvaluate, "null cannot be cast to non-null type kotlin.Int");
            int iIntValue = ((Integer) objEvaluate).intValue();
            Object objEvaluate2 = argbEvaluator.evaluate(animatedFraction, Integer.valueOf(Color.parseColor("#003752FF")), Integer.valueOf(Color.parseColor("#FF3752FF")));
            y45.h(objEvaluate2, "null cannot be cast to non-null type kotlin.Int");
            gradientDrawable.setColors(new int[]{iIntValue, ((Integer) objEvaluate2).intValue()});
            Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m279constructorimpl(c.a(th));
        }
    }

    public final void c(AdsDTO adsDTO) {
        y45.j(adsDTO, "adsDTO");
        String templateUrl = adsDTO.getTemplateUrl();
        if (templateUrl != null) {
            List listO0 = j1a.O0(templateUrl, new String[]{StringUtils.COMMA}, false, 0, 6, null);
            if (listO0.size() >= 2) {
                adsDTO.setTemplateHtmlUrl(j1a.i1((String) listO0.get(0)).toString());
                adsDTO.setTemplateCode(j1a.i1((String) listO0.get(1)).toString());
            }
        }
    }

    public final boolean d(AdsDTO adsDTO) {
        String halfScreenType = null;
        if ((adsDTO != null ? Integer.valueOf(adsDTO.getDownloadArea()) : null) == null || adsDTO.getDownloadArea() == 0) {
            if (adsDTO != null) {
                try {
                    halfScreenType = adsDTO.getHalfScreenType();
                } catch (Throwable unused) {
                }
            }
            return TextUtils.equals(halfScreenType, "Z");
        }
        if (adsDTO.getDownloadArea() == 2) {
            return true;
        }
        return false;
    }

    public final int e(AdsDTO adsDTO) {
        Integer pullNewestLive = adsDTO != null ? adsDTO.getPullNewestLive() : null;
        if (pullNewestLive != null && pullNewestLive.intValue() == 2) {
            return 2;
        }
        if (pullNewestLive == null || pullNewestLive.intValue() != 3) {
            Integer numValueOf = adsDTO != null ? Integer.valueOf(adsDTO.getInstallApk()) : null;
            if (numValueOf == null || numValueOf.intValue() != 2) {
                return (numValueOf != null && numValueOf.intValue() == 3) ? 2 : 1;
            }
        }
        return 3;
    }

    public final boolean f(View view) {
        return view != null && view.getVisibility() == 0;
    }

    public final void g(AdsDTO adsDTO) {
        PslinkInfo pslinkInfo;
        String score;
        PslinkInfo pslinkInfo2;
        PslinkInfo pslinkInfo3;
        PslinkInfo pslinkInfo4;
        try {
            NativeBean nativeBean = new NativeBean();
            Integer numR = null;
            NativeBean.TitleDTO titleDTO = new NativeBean.TitleDTO((adsDTO == null || (pslinkInfo4 = adsDTO.getPslinkInfo()) == null) ? null : pslinkInfo4.getName());
            NativeBean.DescriptDTO descriptDTO = new NativeBean.DescriptDTO((adsDTO == null || (pslinkInfo3 = adsDTO.getPslinkInfo()) == null) ? null : pslinkInfo3.getSimpleDescription());
            NativeBean.LogoDTO logoDTO = new NativeBean.LogoDTO((adsDTO == null || (pslinkInfo2 = adsDTO.getPslinkInfo()) == null) ? null : pslinkInfo2.getIconUrl());
            nativeBean.setTitle(titleDTO);
            nativeBean.setDescript(descriptDTO);
            nativeBean.setLogo(logoDTO);
            if (adsDTO != null && (pslinkInfo = adsDTO.getPslinkInfo()) != null && (score = pslinkInfo.getScore()) != null) {
                numR = f1a.r(score);
            }
            if (numR == null) {
                numR = 0;
            }
            nativeBean.setRating(numR);
            if (adsDTO != null) {
                adsDTO.setNativeObject(nativeBean);
            }
        } catch (Throwable unused) {
        }
    }

    public final ObjectAnimator h(View view) {
        Object objM279constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, 1.0f, 0.85f, 1.0f), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, 1.0f, 0.85f, 1.0f));
            objectAnimatorOfPropertyValuesHolder.setDuration(1000L);
            objectAnimatorOfPropertyValuesHolder.setRepeatCount(-1);
            objectAnimatorOfPropertyValuesHolder.setRepeatMode(1);
            objectAnimatorOfPropertyValuesHolder.setInterpolator(new AccelerateDecelerateInterpolator());
            objM279constructorimpl = Result.m279constructorimpl(objectAnimatorOfPropertyValuesHolder);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        return (ObjectAnimator) objM279constructorimpl;
    }

    public final String i(String str, String str2) {
        y45.j(str, "encryptedContent");
        y45.j(str2, "base64Key");
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(Base64.decode(str2, 2), "AES");
            Cipher cipher = Cipher.getInstance("AES");
            cipher.init(2, secretKeySpec);
            if (j1a.X(str, " ", false, 2, null)) {
                str = g1a.N(str, " ", Marker.ANY_NON_NULL_MARKER, false, 4, null);
            }
            byte[] bArrDoFinal = cipher.doFinal(Base64.decode(str, 2));
            if (bArrDoFinal.length < 2) {
                return null;
            }
            try {
                int i = ((bArrDoFinal[0] & 255) << 8) | (bArrDoFinal[1] & 255);
                if (i + 2 > bArrDoFinal.length) {
                    return null;
                }
                y45.g(bArrDoFinal);
                Charset charset = StandardCharsets.UTF_8;
                y45.i(charset, "UTF_8");
                return new String(bArrDoFinal, 2, i, charset);
            } catch (Exception e) {
                ikd.b().e("HSCommonUtils", "decryptOptimized length parse error: " + e.getMessage());
                return null;
            }
            ikd.b().e("HSCommonUtils", "decryptOptimized error: " + e.getMessage());
            return null;
        } catch (Exception e2) {
            ikd.b().e("HSCommonUtils", "decryptOptimized error: " + e2.getMessage());
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x000d  */
    public final String j(String str) {
        long jLongValue;
        if (str != null) {
            try {
                Long lT = f1a.t(str);
                if (lT != null) {
                    jLongValue = lT.longValue();
                } else {
                    jLongValue = 0;
                }
            } catch (Throwable unused) {
                return "";
            }
        } else {
            jLongValue = 0;
        }
        double d = 1024;
        double d2 = 1024.0d * d;
        double d3 = d * d2;
        double d4 = jLongValue;
        if (d4 >= d3) {
            String str2 = String.format("%.1f GB", Arrays.copyOf(new Object[]{Double.valueOf(d4 / d3)}, 1));
            y45.i(str2, "format(...)");
            return str2;
        }
        if (d4 >= d2) {
            String str3 = String.format("%.1f MB", Arrays.copyOf(new Object[]{Double.valueOf(d4 / d2)}, 1));
            y45.i(str3, "format(...)");
            return str3;
        }
        String str4 = String.format("%.1f MB", Arrays.copyOf(new Object[]{Double.valueOf(d4 / d2)}, 1));
        y45.i(str4, "format(...)");
        return str4;
    }

    public final String k() {
        try {
            String str = new SimpleDateFormat(OSDateTimePicker.FORMAT_Y_M_D, Locale.getDefault()).format(Long.valueOf(System.currentTimeMillis()));
            return str == null ? "" : str;
        } catch (Throwable unused) {
            return "";
        }
    }

    public final String l() {
        Object objM279constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(ul4.a().getString(R.string.hs_i1107_default_btn));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = "Learn More";
        }
        return (String) objM279constructorimpl;
    }

    public final String m(AdsDTO adsDTO) {
        String sourceSize;
        Long lT;
        if (adsDTO != null && adsDTO.getShowSourceSize()) {
            try {
                PslinkInfo pslinkInfo = adsDTO.getPslinkInfo();
                if (((pslinkInfo == null || (sourceSize = pslinkInfo.getSourceSize()) == null || (lT = f1a.t(sourceSize)) == null) ? 0L : lT.longValue()) > 0 && e(adsDTO) == 2) {
                    PslinkInfo pslinkInfo2 = adsDTO.getPslinkInfo();
                    return j(pslinkInfo2 != null ? pslinkInfo2.getSourceSize() : null);
                }
            } catch (Throwable unused) {
            }
        }
        return "";
    }

    public final String n(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return null;
        }
        try {
            Uri uri = Uri.parse(str);
            y45.i(uri, "parse(this)");
            return uri.getQueryParameter(str2);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0047, code lost:
    
        if (r1.intValue() != 2) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String o(String str) {
        try {
            ikd.b().d("HSCommonUtils", "TrackingManager --> landingUrlAppendABTestData --> 处理前 url = " + str);
            CustomTabConfigDTO customTabData = CustomConfigManager.getCustomTabData();
            if (!y45.e(customTabData != null ? customTabData.getEnableSpliceParam() : null, Boolean.TRUE)) {
                return str;
            }
            a aVar = a.a;
            Integer numH0 = aVar.h0();
            if (numH0 == null || numH0.intValue() != 1) {
                if (numH0 != null) {
                }
            }
            Long lE0 = aVar.e0();
            Integer numG0 = aVar.g0();
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("k1", numH0);
            if (numG0 == null || numG0.intValue() != 0) {
                jsonObject.addProperty("k2", numG0);
            }
            if (lE0 == null || lE0.longValue() != 0) {
                jsonObject.addProperty("k3", lE0);
            }
            String str2 = str + "&sspParams=" + URLEncoder.encode(jsonObject.toString(), "UTF-8");
            ikd.b().d("HSCommonUtils", "TrackingManager --> landingUrlAppendABTestData --> 处理后的 url = " + str2);
            return str2;
        } catch (Throwable unused) {
        }
        return str;
    }

    public final Pair p(String str, float f, float f2) {
        if (str == null || str.length() == 0 || !b.matches(str)) {
            return new Pair(Float.valueOf(f), Float.valueOf(f2));
        }
        List listO0 = j1a.O0(str, new String[]{StringUtils.PROCESS_POSTFIX_DELIMITER}, false, 0, 6, null);
        return new Pair(Float.valueOf(Float.parseFloat((String) listO0.get(0))), Float.valueOf(Float.parseFloat((String) listO0.get(1))));
    }

    public final void q(View view, Runnable runnable) {
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m279constructorimpl(view != null ? Boolean.valueOf(view.removeCallbacks(runnable)) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m279constructorimpl(c.a(th));
        }
    }

    public final void r(AdsDTO adsDTO, DownUpPointBean downUpPointBean) {
        if (adsDTO != null) {
            boolean z = true;
            try {
                adsDTO.setTrackUserClickArea(1);
                AthenaTracker.c0(adsDTO, Boolean.TRUE);
                Integer trackType = adsDTO.getTrackType();
                boolean z2 = trackType != null && trackType.intValue() == 0;
                boolean zH = cy9.h(ul4.a());
                if (!z2 || !zH) {
                    U0.V(adsDTO);
                    z = false;
                }
                k1.h(downUpPointBean, adsDTO, Boolean.valueOf(z));
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Runnable] */
    public final Runnable s(View view, final View view2, String str) {
        Context context;
        Resources resources;
        DisplayMetrics displayMetrics;
        y45.j(str, "startColor");
        Object objValueOf = null;
        try {
            Result.Companion companion = Result.INSTANCE;
            final GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{Color.parseColor(str), Color.parseColor(str)});
            gradientDrawable.setCornerRadius(4 * ((view == 0 || (context = view.getContext()) == null || (resources = context.getResources()) == null || (displayMetrics = resources.getDisplayMetrics()) == null) ? 1.0f : displayMetrics.density));
            if (view != 0) {
                view.setBackground(gradientDrawable);
            }
            Runnable runnable = new Runnable() {
                @Override
                public final void run() {
                    HSCommonUtils.t(this.b, view2, gradientDrawable);
                }
            };
            if (view != 0) {
                try {
                    objValueOf = Boolean.valueOf(view.postDelayed(runnable, 500L));
                } catch (Throwable th) {
                    th = th;
                    objValueOf = runnable;
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m279constructorimpl(c.a(th));
                    return objValueOf;
                }
            }
            Result.m279constructorimpl(objValueOf);
            return runnable;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void v(WebView webView) {
        if (webView == null) {
            return;
        }
        try {
            webView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            int measuredWidth = webView.getMeasuredWidth();
            int measuredHeight = webView.getMeasuredHeight();
            ikd.b().d("HSCommonUtils", "simulateClickByCoordinate->height: " + measuredHeight + ", width: " + measuredWidth);
            float f = (float) (measuredWidth / 2);
            float f2 = (float) (measuredHeight / 2);
            MotionEvent motionEventObtain = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, f, f2, 0);
            webView.dispatchTouchEvent(motionEventObtain);
            long j = (long) 100;
            MotionEvent motionEventObtain2 = MotionEvent.obtain(SystemClock.uptimeMillis() + j, SystemClock.uptimeMillis() + j, 1, f, f2, 0);
            webView.dispatchTouchEvent(motionEventObtain2);
            motionEventObtain.recycle();
            motionEventObtain2.recycle();
        } catch (Throwable unused) {
        }
    }

    public final Object w(long j, e74 e74Var, wh1 wh1Var) {
        return TimeoutKt.d(j, new HSCommonUtils$suspendWithTimeout$2(e74Var, null), wh1Var);
    }

    public final void x(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        HSScopeHelper hSScopeHelper = HSScopeHelper.a;
        el0.d(hSScopeHelper.f(), hSScopeHelper.e(), null, new HSCommonUtils$updateAdShowTimes$1(adsDTO, null), 2, null);
    }
}
