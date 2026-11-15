package io.appmetrica.analytics.impl;

import android.annotation.TargetApi;
import android.content.Context;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.y71;
import defpackage.z71;
import io.appmetrica.analytics.coreapi.internal.annotations.DoNotInline;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import io.appmetrica.analytics.impl.Qk;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@DoNotInline
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¨\u0006\t"}, d2 = {"Lio/appmetrica/analytics/impl/Qk;", "", "Landroid/content/Context;", "context", "", "Lio/appmetrica/analytics/impl/Kk;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, MethodDecl.initName, "()V", "analytics_binaryProdRelease"}, k = 1, mv = {1, 6, 0})
@TargetApi(23)
public final class Qk {
    public static final Qk a = new Qk();

    private Qk() {
    }

    public static final List<Kk> a(Context context) {
        List<SubscriptionInfo> list = (List) SystemServiceUtils.accessSystemServiceByNameSafely(context, "telephony_subscription_service", "getting active subcription info list", "SubscriptionManager", new FunctionWithThrowable() {
            @Override
            public final Object apply(Object obj) {
                return Qk.a((SubscriptionManager) obj);
            }
        });
        if (list == null) {
            return y71.k();
        }
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        for (SubscriptionInfo subscriptionInfo : list) {
            Integer numA = AndroidUtils.isApiAchieved(29) ? Rk.a(subscriptionInfo) : Integer.valueOf(subscriptionInfo.getMcc());
            Integer numB = AndroidUtils.isApiAchieved(29) ? Rk.b(subscriptionInfo) : Integer.valueOf(subscriptionInfo.getMnc());
            boolean z = subscriptionInfo.getDataRoaming() == 1;
            CharSequence carrierName = subscriptionInfo.getCarrierName();
            arrayList.add(new Kk(numA, numB, z, carrierName != null ? carrierName.toString() : null));
        }
        return arrayList;
    }

    public static final List a(SubscriptionManager subscriptionManager) {
        return subscriptionManager.getActiveSubscriptionInfoList();
    }
}
