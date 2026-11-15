package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.cookie.SerializableCookie;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdAssets;
import defpackage.y45;
import java.util.List;
import java.util.Map;

public final class m41 {
    private final fj0 a;
    private final av0 b;
    private final rg c;
    private final xg d;

    public m41(Context context) {
        vj0 vj0Var = new vj0();
        fj0 fj0Var = new fj0(context, vj0Var);
        this(context, vj0Var, fj0Var, new av0(fj0Var), new rg(), new xg());
    }

    public final List<ig<? extends Object>> a(MediatedNativeAdAssets mediatedNativeAdAssets, Map<String, Bitmap> map) {
        y45.j(mediatedNativeAdAssets, "nativeAdAssets");
        y45.j(map, "imageValues");
        return defpackage.i81.l0(defpackage.y71.n(a(mediatedNativeAdAssets.getAge(), "age"), a(mediatedNativeAdAssets.getAndroidx.media3.extractor.text.ttml.TtmlNode.TAG_BODY java.lang.String(), TtmlNode.TAG_BODY), a(mediatedNativeAdAssets.getCallToAction(), "call_to_action"), a(mediatedNativeAdAssets.getCom.lzy.okgo.cookie.SerializableCookie.DOMAIN java.lang.String(), SerializableCookie.DOMAIN), a(this.a.a(map, mediatedNativeAdAssets.getFavicon()), "favicon"), a(this.a.a(map, mediatedNativeAdAssets.getIcon()), "icon"), a(this.b.a(map, mediatedNativeAdAssets.getImage(), mediatedNativeAdAssets.getMedia()), "media"), a(mediatedNativeAdAssets.getPrice(), "price"), a(String.valueOf(mediatedNativeAdAssets.getRating()), "rating"), a(mediatedNativeAdAssets.getReviewCount(), "review_count"), a(mediatedNativeAdAssets.getSponsored(), "sponsored"), a(mediatedNativeAdAssets.getTitle(), "title"), a(mediatedNativeAdAssets.getWarning(), "warning"), a(this.a.a(map, mediatedNativeAdAssets.getFeedback()), "feedback")));
    }

    public m41(Context context, vj0 vj0Var, fj0 fj0Var, av0 av0Var, rg rgVar, xg xgVar) {
        y45.j(context, "context");
        y45.j(vj0Var, "imageSizeValidator");
        y45.j(fj0Var, "imageAssetConverter");
        y45.j(av0Var, "mediaAssetConverter");
        y45.j(rgVar, "assetCreatorProvider");
        y45.j(xgVar, "assetValueValidatorProvider");
        this.a = fj0Var;
        this.b = av0Var;
        this.c = rgVar;
        this.d = xgVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:23:0x0056  */
    /* JADX WARN: Code duplicated, block: B:24:0x005c  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:52:0x00be  */
    /* JADX WARN: Code duplicated, block: B:55:0x00cc  */
    private final ig a(Object obj, String str) {
        wg gj0Var;
        qg b32Var;
        this.d.getClass();
        y45.j(str, "name");
        int iHashCode = str.hashCode();
        if (iHashCode != -1074675180) {
            if (iHashCode != -191501435) {
                if (iHashCode != 3226745) {
                    if (iHashCode == 103772132 && str.equals("media")) {
                        gj0Var = new dv0(new gj0(), new dx0());
                    }
                } else if (str.equals("icon")) {
                    gj0Var = new gj0();
                }
                gj0Var = new c32();
            } else if (!str.equals("feedback")) {
                gj0Var = new c32();
            } else {
                gj0Var = new gj0();
            }
        } else if (!str.equals("favicon")) {
            gj0Var = new c32();
        } else {
            gj0Var = new gj0();
        }
        if (obj == null || !gj0Var.a(obj)) {
            return null;
        }
        this.c.getClass();
        y45.j(str, "name");
        switch (str) {
            case "close_button":
                b32Var = new pp();
                break;
            case "favicon":
                b32Var = new yj0();
                break;
            case "rating":
            case "review_count":
                b32Var = new wd1(new rr1());
                break;
            case "feedback":
                b32Var = new ab0();
                break;
            case "icon":
                b32Var = new yj0();
                break;
            case "media":
                b32Var = new bv0();
                break;
            default:
                b32Var = new b32();
                break;
        }
        return b32Var.a(obj, str);
    }
}
