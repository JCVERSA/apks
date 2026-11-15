package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable;
import androidx.media3.common.C;
import defpackage.y45;
import java.util.Map;
import kotlin.Result;

public final class ak1 {
    @SuppressLint({"WrongConstant"})
    public static Intent a(Context context, zj1 zj1Var) {
        y45.j(context, "context");
        y45.j(zj1Var, "preferredPackage");
        String strE = zj1Var.e();
        String strD = zj1Var.d();
        Map<String, Object> mapA = zj1Var.a();
        Integer numB = zj1Var.b();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(strE));
        if (numB == null || !(context instanceof Activity)) {
            intent.addFlags((numB != null ? numB.intValue() : 0) | C.ENCODING_PCM_24BIT_BIG_ENDIAN);
        } else {
            intent.addFlags(numB.intValue());
        }
        intent.setPackage(strD);
        if (mapA != null) {
            for (Map.Entry<String, Object> entry : mapA.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (value instanceof Boolean) {
                    intent.putExtra(key, ((Boolean) value).booleanValue());
                } else if (value instanceof Integer) {
                    intent.putExtra(key, ((Number) value).intValue());
                } else if (value instanceof String) {
                    intent.putExtra(key, (String) value);
                } else if (value instanceof f80) {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        ((f80) value).getClass();
                        Result.m279constructorimpl(intent.putExtra(key, (Parcelable) null));
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        Result.m279constructorimpl(kotlin.c.a(th));
                    }
                }
            }
        }
        return intent;
    }
}
