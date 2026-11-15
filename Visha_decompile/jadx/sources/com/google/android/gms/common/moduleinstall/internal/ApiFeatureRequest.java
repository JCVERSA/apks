package com.google.android.gms.common.moduleinstall.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import defpackage.j0e;
import defpackage.jc7;
import defpackage.rq6;
import defpackage.ubc;
import defpackage.wd8;
import defpackage.z09;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

public class ApiFeatureRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ApiFeatureRequest> CREATOR = new j0e();
    private static final Comparator zaa = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            Feature feature = (Feature) obj;
            Feature feature2 = (Feature) obj2;
            Parcelable.Creator<ApiFeatureRequest> creator = ApiFeatureRequest.CREATOR;
            return !feature.getName().equals(feature2.getName()) ? feature.getName().compareTo(feature2.getName()) : (feature.getVersion() > feature2.getVersion() ? 1 : (feature.getVersion() == feature2.getVersion() ? 0 : -1));
        }
    };
    private final List zab;
    private final boolean zac;

    @Nullable
    private final String zad;

    @Nullable
    private final String zae;

    public ApiFeatureRequest(@NonNull List list, boolean z, @Nullable String str, @Nullable String str2) {
        wd8.l(list);
        this.zab = list;
        this.zac = z;
        this.zad = str;
        this.zae = str2;
    }

    @NonNull
    public static ApiFeatureRequest fromModuleInstallRequest(@NonNull rq6 rq6Var) {
        throw null;
    }

    public static ApiFeatureRequest zaa(List list, boolean z) {
        TreeSet treeSet = new TreeSet(zaa);
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            return new ApiFeatureRequest(new ArrayList(treeSet), z, null, null);
        }
        ubc.a(it.next());
        throw null;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof ApiFeatureRequest)) {
            return false;
        }
        ApiFeatureRequest apiFeatureRequest = (ApiFeatureRequest) obj;
        return this.zac == apiFeatureRequest.zac && jc7.a(this.zab, apiFeatureRequest.zab) && jc7.a(this.zad, apiFeatureRequest.zad) && jc7.a(this.zae, apiFeatureRequest.zae);
    }

    @NonNull
    public List<Feature> getApiFeatures() {
        return this.zab;
    }

    public final int hashCode() {
        return jc7.b(Boolean.valueOf(this.zac), this.zab, this.zad, this.zae);
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int iA = z09.a(parcel);
        z09.H(parcel, 1, getApiFeatures(), false);
        z09.g(parcel, 2, this.zac);
        z09.D(parcel, 3, this.zad, false);
        z09.D(parcel, 4, this.zae, false);
        z09.b(parcel, iA);
    }
}
