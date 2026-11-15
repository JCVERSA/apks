package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.pm.FeatureInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import java.util.ArrayList;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONObject;

public final class Ng extends Gg {
    public final SafePackageManager b;

    public Ng(C2706m5 c2706m5) {
        this(c2706m5, new SafePackageManager());
    }

    @Override
    public final boolean a(@NonNull C2408a6 c2408a6) {
        HashSet hashSet;
        C2706m5 c2706m5 = this.a;
        if (c2706m5.t.c() && c2706m5.x()) {
            Le le = c2706m5.c;
            String strE = this.a.c.e();
            if (TextUtils.isEmpty(strE)) {
                hashSet = null;
            } else {
                try {
                    hashSet = new HashSet();
                    JSONArray jSONArray = new JSONArray(strE);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        hashSet.add(new Y9(jSONArray.getJSONObject(i)));
                    }
                } catch (Throwable unused) {
                    hashSet = null;
                }
            }
            try {
                ArrayList<Y9> arrayListB = b();
                if (CollectionUtils.areCollectionsEqual(hashSet, arrayListB)) {
                    C2810q9 c2810q9 = c2706m5.n;
                    int i2 = c2810q9.k;
                    c2810q9.m = i2;
                    c2810q9.a.a(i2).b();
                } else {
                    JSONArray jSONArray2 = new JSONArray();
                    for (Y9 y9 : arrayListB) {
                        y9.getClass();
                        JSONObject jSONObjectPut = new JSONObject().put("name", y9.a).put("required", y9.c);
                        int i3 = y9.b;
                        if (i3 != -1) {
                            jSONObjectPut.put("version", i3);
                        }
                        jSONArray2.put(jSONObjectPut);
                    }
                    C2408a6 c2408a6A = C2408a6.a(c2408a6, new JSONObject().put("features", jSONArray2).toString());
                    C2810q9 c2810q10 = c2706m5.n;
                    c2810q10.a(c2408a6A, C2945vk.a(c2810q10.c.b(c2408a6A), c2408a6A.i));
                    int i4 = c2810q10.k;
                    c2810q10.m = i4;
                    c2810q10.a.a(i4).b();
                    le.i(jSONArray2.toString());
                }
            } catch (Throwable unused2) {
            }
        }
        return false;
    }

    public final ArrayList b() {
        FeatureInfo[] featureInfoArr;
        try {
            C2706m5 c2706m5 = this.a;
            SafePackageManager safePackageManager = this.b;
            Context context = c2706m5.a;
            PackageInfo packageInfo = safePackageManager.getPackageInfo(context, context.getPackageName(), 16384);
            ArrayList arrayList = new ArrayList();
            X9 v9 = AndroidUtils.isApiAchieved(24) ? new V9() : new W9();
            if (packageInfo != null && (featureInfoArr = packageInfo.reqFeatures) != null) {
                for (FeatureInfo featureInfo : featureInfoArr) {
                    arrayList.add(v9.a(featureInfo));
                }
            }
            return arrayList;
        } catch (Throwable unused) {
            return null;
        }
    }

    @VisibleForTesting
    public Ng(C2706m5 c2706m5, @NonNull SafePackageManager safePackageManager) {
        super(c2706m5);
        this.b = safePackageManager;
    }
}
