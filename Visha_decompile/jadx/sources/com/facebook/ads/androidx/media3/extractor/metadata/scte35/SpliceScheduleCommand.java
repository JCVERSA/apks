package com.facebook.ads.androidx.media3.extractor.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.redexgen.core.C0968Hx;
import com.facebook.ads.redexgen.core.C0970Hz;
import com.facebook.ads.redexgen.core.C4J;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class SpliceScheduleCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceScheduleCommand> CREATOR = new C0968Hx();
    public final List<C0970Hz> A00;

    public SpliceScheduleCommand(Parcel parcel) {
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(C0970Hz.A00(parcel));
        }
        this.A00 = Collections.unmodifiableList(arrayList);
    }

    public SpliceScheduleCommand(Parcel parcel, C0968Hx c0968Hx) {
        this(parcel);
    }

    public SpliceScheduleCommand(List<C0970Hz> list) {
        this.A00 = Collections.unmodifiableList(list);
    }

    public static SpliceScheduleCommand A00(C4J c4j) {
        int iA0I = c4j.A0I();
        ArrayList arrayList = new ArrayList(iA0I);
        for (int i = 0; i < iA0I; i++) {
            arrayList.add(C0970Hz.A02(c4j));
        }
        return new SpliceScheduleCommand(arrayList);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        int size = this.A00.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.A00.get(i2).A04(parcel);
        }
    }
}
