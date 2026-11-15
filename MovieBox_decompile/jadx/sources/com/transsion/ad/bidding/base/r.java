package com.transsion.ad.bidding.base;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.mediation.ad.ViewBinder;
import com.transsion.ad.view.AdTagView;
import java.util.List;
import java.util.Locale;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;

public abstract class r {

    private final Context f40877a;

    public r(Context context) {
        Intrinsics.h(context, "context");
        this.f40877a = context;
    }

    private final void B(ViewBinder viewBinder) {
        ci.b bVar = ci.b.f16934a;
        View layout = viewBinder.layout;
        Intrinsics.g(layout, "layout");
        bVar.e(layout, viewBinder.callToActionId);
    }

    private final View f(Context context) {
        if (context == null) {
            context = Utils.a();
        }
        View viewInflate = LayoutInflater.from(context).inflate(t(), (ViewGroup) null);
        Intrinsics.g(viewInflate, "inflate(...)");
        return viewInflate;
    }

    public static final void r(AppCompatTextView appCompatTextView) {
        try {
            Result.Companion companion = Result.INSTANCE;
            String lowerCase = appCompatTextView.getText().toString().toLowerCase(Locale.ROOT);
            Intrinsics.g(lowerCase, "toLowerCase(...)");
            if (ci.b.f16934a.b(lowerCase)) {
                appCompatTextView.setText(StringsKt.z(lowerCase));
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public boolean A() {
        return true;
    }

    public Integer b() {
        return null;
    }

    public abstract Integer c();

    public Integer d() {
        return null;
    }

    public Integer e() {
        return null;
    }

    public final w g() {
        int iT = t();
        View viewF = f(this.f40877a);
        Integer numV = v();
        Integer numZ = z();
        Integer numS = s();
        Integer numL = l();
        Integer numM = m();
        Integer numC = c();
        Integer numH = h();
        Integer numD = d();
        return new w(Integer.valueOf(iT), viewF, numZ, numS, numL, numV, numM, x(), w(), y(), u(), o(), e(), b(), numC, numD, numH, n(), p(), j(), k(), i());
    }

    public abstract Integer h();

    public abstract Integer i();

    public Integer j() {
        return null;
    }

    public Integer k() {
        return null;
    }

    public abstract Integer l();

    public abstract Integer m();

    public Integer n() {
        return null;
    }

    public Integer o() {
        return null;
    }

    public Integer p() {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00eb A[PHI: r5
      0x00eb: PHI (r5v6 java.lang.String) = (r5v2 java.lang.String), (r5v2 java.lang.String), (r5v7 java.lang.String) binds: [B:55:0x00ed, B:60:0x00f7, B:52:0x00e8] A[DONT_GENERATE, DONT_INLINE]] */
    public ViewBinder q(w adLayoutProvider, TAdNativeInfo tAdNativeInfo) {
        String appInfo;
        TAdNativeInfo.Image icon;
        List<TAdNativeInfo.Image> imageList;
        TAdNativeInfo.Image image;
        Intrinsics.h(adLayoutProvider, "adLayoutProvider");
        ViewBinder.Builder builder = new ViewBinder.Builder(adLayoutProvider.i());
        builder.contextMode(1);
        Integer numL = adLayoutProvider.l();
        if (numL != null) {
            builder.titleId(numL.intValue());
        }
        Integer numG = adLayoutProvider.g();
        if (numG != null) {
            builder.descriptionId(numG.intValue());
        }
        Integer numJ = adLayoutProvider.j();
        if (numJ != null) {
            builder.mediaId(numJ.intValue());
        }
        Integer numH = adLayoutProvider.h();
        if (numH != null) {
            builder.iconId(numH.intValue());
        }
        Integer numF = adLayoutProvider.f();
        if (numF != null) {
            int iIntValue = numF.intValue();
            builder.callToActionId(iIntValue);
            final AppCompatTextView appCompatTextView = (AppCompatTextView) adLayoutProvider.i().findViewById(iIntValue);
            if (appCompatTextView != null) {
                appCompatTextView.post(new Runnable() {
                    @Override
                    public final void run() {
                        r.r(appCompatTextView);
                    }
                });
            }
        }
        Integer numA = adLayoutProvider.a();
        if (numA != null) {
            builder.adChoicesView(numA.intValue());
        }
        Integer numB = adLayoutProvider.b();
        if (numB != null) {
            builder.storeMarkView(numB.intValue());
        }
        Integer numC = adLayoutProvider.c();
        if (numC != null) {
            ((AdTagView) adLayoutProvider.i().findViewById(numC.intValue())).setVisibility(8);
        }
        Integer numE = adLayoutProvider.e();
        Unit unit = null;
        if (numE != null) {
            ImageView imageView = (ImageView) adLayoutProvider.i().findViewById(numE.intValue());
            if (imageView != null) {
                String url = (tAdNativeInfo == null || (imageList = tAdNativeInfo.getImageList()) == null || (image = (TAdNativeInfo.Image) CollectionsKt.k0(imageList)) == null) ? null : image.getUrl();
                String url2 = (tAdNativeInfo == null || (icon = tAdNativeInfo.getIcon()) == null) ? null : icon.getUrl();
                if (tAdNativeInfo == null || tAdNativeInfo.getAdType() != 6) {
                    if (url == null) {
                        url = url2;
                    } else {
                        if (url.length() <= 0) {
                            url = null;
                        }
                        if (url == null) {
                            url = url2;
                        }
                    }
                } else if (url2 != null) {
                    if (url2.length() <= 0) {
                        url2 = null;
                    }
                    if (url2 != null) {
                        url = url2;
                    }
                }
                Glide.with(imageView.getContext()).load(url).transform(new ei.a(55, 2, true)).into(imageView);
            }
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            if (tAdNativeInfo != null && (appInfo = tAdNativeInfo.getAppInfo()) != null) {
                JSONObject jSONObject = new JSONObject(appInfo);
                String string = jSONObject.getString("star");
                Integer numK = adLayoutProvider.k();
                if (numK != null) {
                    ((TextView) adLayoutProvider.i().findViewById(numK.intValue())).setText(string);
                }
                long j10 = jSONObject.getLong("size");
                Integer numD = adLayoutProvider.d();
                if (numD != null) {
                    ((TextView) adLayoutProvider.i().findViewById(numD.intValue())).setText(com.blankj.utilcode.util.i.b(j10, 1));
                    unit = Unit.f64096a;
                }
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        ViewBinder viewBinderBuild = builder.build();
        Intrinsics.g(viewBinderBuild, "build(...)");
        B(viewBinderBuild);
        return viewBinderBuild;
    }

    public abstract Integer s();

    public abstract int t();

    public Integer u() {
        return null;
    }

    public abstract Integer v();

    public Integer w() {
        return null;
    }

    public Integer x() {
        return null;
    }

    public Integer y() {
        return null;
    }

    public abstract Integer z();
}
