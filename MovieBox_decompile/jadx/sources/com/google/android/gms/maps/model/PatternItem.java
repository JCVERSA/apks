package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "PatternItemCreator")
@SafeParcelable.Reserved({1})
public class PatternItem extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PatternItem> CREATOR = new zzi();
    private static final String TAG = "PatternItem";

    @SafeParcelable.Field(getter = "getType", id = 2)
    private final int type;

    @Nullable
    @SafeParcelable.Field(getter = "getLength", id = 3)
    private final Float zzdv;

    @SafeParcelable.Constructor
    public PatternItem(@SafeParcelable.Param(id = 2) int i10, @Nullable @SafeParcelable.Param(id = 3) Float f10) {
        boolean z10 = true;
        if (i10 != 1 && (f10 == null || f10.floatValue() < 0.0f)) {
            z10 = false;
        }
        String strValueOf = String.valueOf(f10);
        StringBuilder sb2 = new StringBuilder(strValueOf.length() + 45);
        sb2.append("Invalid PatternItem: type=");
        sb2.append(i10);
        sb2.append(" length=");
        sb2.append(strValueOf);
        Preconditions.checkArgument(z10, sb2.toString());
        this.type = i10;
        this.zzdv = f10;
    }

    @Nullable
    static List<PatternItem> zza(@Nullable List<PatternItem> list) {
        PatternItem dash;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (PatternItem dot : list) {
            if (dot == null) {
                dot = null;
            } else {
                int i10 = dot.type;
                if (i10 == 0) {
                    dash = new Dash(dot.zzdv.floatValue());
                } else if (i10 == 1) {
                    dot = new Dot();
                } else if (i10 != 2) {
                    String str = TAG;
                    StringBuilder sb2 = new StringBuilder(37);
                    sb2.append("Unknown PatternItem type: ");
                    sb2.append(i10);
                    Log.w(str, sb2.toString());
                } else {
                    dash = new Gap(dot.zzdv.floatValue());
                }
                dot = dash;
            }
            arrayList.add(dot);
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PatternItem)) {
            return false;
        }
        PatternItem patternItem = (PatternItem) obj;
        return this.type == patternItem.type && Objects.equal(this.zzdv, patternItem.zzdv);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.type), this.zzdv);
    }

    public String toString() {
        int i10 = this.type;
        String strValueOf = String.valueOf(this.zzdv);
        StringBuilder sb2 = new StringBuilder(strValueOf.length() + 39);
        sb2.append("[PatternItem: type=");
        sb2.append(i10);
        sb2.append(" length=");
        sb2.append(strValueOf);
        sb2.append("]");
        return sb2.toString();
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.type);
        SafeParcelWriter.writeFloatObject(parcel, 3, this.zzdv, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
