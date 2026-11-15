package com.facebook.ads.redexgen.core;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest;

public class BV implements Parcelable.Creator<DownloadRequest> {
    @Override
    public final DownloadRequest createFromParcel(Parcel parcel) {
        return new DownloadRequest(parcel);
    }

    @Override
    public final DownloadRequest[] newArray(int i) {
        return new DownloadRequest[i];
    }
}
