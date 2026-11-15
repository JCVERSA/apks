package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class C2513eb implements Parcelable {
    public static final Parcelable.Creator<C2513eb> CREATOR = new C2488db();
    public final ResultReceiver a;
    public final List b;
    public final HashMap c;

    public C2513eb(I6 i6, List list, Map map) {
        this.b = list;
        this.a = i6;
        this.c = map == null ? new HashMap() : new HashMap(map);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("io.appmetrica.analytics.internal.CounterConfiguration.receiver", this.a);
        if (this.b != null) {
            bundle.putStringArrayList("io.appmetrica.analytics.internal.CounterConfiguration.identifiersList", new ArrayList<>(this.b));
        }
        HashMap map = this.c;
        if (map != null) {
            bundle.putString("io.appmetrica.analytics.internal.CounterConfiguration.clidsForVerification", AbstractC2623im.a((Map) map));
        }
        parcel.writeBundle(bundle);
    }

    public C2513eb(Parcel parcel) {
        Bundle bundle = parcel.readBundle(I6.class.getClassLoader());
        if (bundle != null) {
            this.a = (ResultReceiver) bundle.getParcelable("io.appmetrica.analytics.internal.CounterConfiguration.receiver");
            this.b = bundle.getStringArrayList("io.appmetrica.analytics.internal.CounterConfiguration.identifiersList");
            this.c = AbstractC2623im.a(bundle.getString("io.appmetrica.analytics.internal.CounterConfiguration.clidsForVerification"));
            return;
        }
        this.c = new HashMap();
    }
}
