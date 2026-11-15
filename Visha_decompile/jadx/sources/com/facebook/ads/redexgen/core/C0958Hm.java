package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData;
import java.util.ArrayList;

public class C0958Hm implements Parcelable.Creator<SlowMotionData> {
    @Override
    public final SlowMotionData createFromParcel(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readList(arrayList, SlowMotionData.Segment.class.getClassLoader());
        return new SlowMotionData(arrayList);
    }

    @Override
    public final SlowMotionData[] newArray(int i) {
        return new SlowMotionData[i];
    }
}
