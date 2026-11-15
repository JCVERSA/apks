package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.billinginterface.internal.BillingInfo;
import io.appmetrica.analytics.billinginterface.internal.storage.BillingInfoStorage;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import java.util.List;

public final class C2580h3 implements BillingInfoStorage {
    public final ProtobufStateStorage a;
    public C2902u2 b;

    public C2580h3(@NonNull Context context) {
        this(C2872sm.a(C2902u2.class).a(context));
    }

    @Override
    @NonNull
    public final List<BillingInfo> getBillingInfo() {
        return this.b.a;
    }

    @Override
    public final boolean isFirstInappCheckOccurred() {
        return this.b.b;
    }

    @Override
    public final void saveInfo(@NonNull List<BillingInfo> list, boolean z) {
        for (BillingInfo billingInfo : list) {
        }
        C2902u2 c2902u2 = new C2902u2(list, z);
        this.b = c2902u2;
        this.a.save(c2902u2);
    }

    public C2580h3(ProtobufStateStorage protobufStateStorage) {
        this.a = protobufStateStorage;
        this.b = (C2902u2) protobufStateStorage.read();
    }
}
