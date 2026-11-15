package com.google.android.exoplayer2.offline;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.w1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class DownloadRequest implements Parcelable {
    public static final Parcelable.Creator<DownloadRequest> CREATOR = new a();

    @Nullable
    public final String customCacheKey;
    public final byte[] data;

    public final String f24848id;

    @Nullable
    public final byte[] keySetId;

    @Nullable
    public final String mimeType;
    public final List<StreamKey> streamKeys;
    public final Uri uri;

    public static class UnsupportedRequestException extends IOException {
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public DownloadRequest createFromParcel(Parcel parcel) {
            return new DownloadRequest(parcel);
        }

        @Override
        public DownloadRequest[] newArray(int i10) {
            return new DownloadRequest[i10];
        }
    }

    DownloadRequest(String str, Uri uri, String str2, List list, byte[] bArr, String str3, byte[] bArr2, a aVar) {
        this(str, uri, str2, list, bArr, str3, bArr2);
    }

    public DownloadRequest copyWithId(String str) {
        return new DownloadRequest(str, this.uri, this.mimeType, this.streamKeys, this.keySetId, this.customCacheKey, this.data);
    }

    public DownloadRequest copyWithKeySetId(@Nullable byte[] bArr) {
        return new DownloadRequest(this.f24848id, this.uri, this.mimeType, this.streamKeys, bArr, this.customCacheKey, this.data);
    }

    public DownloadRequest copyWithMergedRequest(DownloadRequest downloadRequest) {
        List listEmptyList;
        com.google.android.exoplayer2.util.a.a(this.f24848id.equals(downloadRequest.f24848id));
        if (this.streamKeys.isEmpty() || downloadRequest.streamKeys.isEmpty()) {
            listEmptyList = Collections.emptyList();
        } else {
            listEmptyList = new ArrayList(this.streamKeys);
            for (int i10 = 0; i10 < downloadRequest.streamKeys.size(); i10++) {
                StreamKey streamKey = downloadRequest.streamKeys.get(i10);
                if (!listEmptyList.contains(streamKey)) {
                    listEmptyList.add(streamKey);
                }
            }
        }
        return new DownloadRequest(this.f24848id, downloadRequest.uri, downloadRequest.mimeType, listEmptyList, downloadRequest.keySetId, downloadRequest.customCacheKey, downloadRequest.data);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof DownloadRequest)) {
            return false;
        }
        DownloadRequest downloadRequest = (DownloadRequest) obj;
        return this.f24848id.equals(downloadRequest.f24848id) && this.uri.equals(downloadRequest.uri) && p0.c(this.mimeType, downloadRequest.mimeType) && this.streamKeys.equals(downloadRequest.streamKeys) && Arrays.equals(this.keySetId, downloadRequest.keySetId) && p0.c(this.customCacheKey, downloadRequest.customCacheKey) && Arrays.equals(this.data, downloadRequest.data);
    }

    public final int hashCode() {
        int iHashCode = ((this.f24848id.hashCode() * 961) + this.uri.hashCode()) * 31;
        String str = this.mimeType;
        int iHashCode2 = (((((iHashCode + (str != null ? str.hashCode() : 0)) * 31) + this.streamKeys.hashCode()) * 31) + Arrays.hashCode(this.keySetId)) * 31;
        String str2 = this.customCacheKey;
        return ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + Arrays.hashCode(this.data);
    }

    public w1 toMediaItem() {
        return new w1.c().d(this.f24848id).i(this.uri).b(this.customCacheKey).e(this.mimeType).f(this.streamKeys).a();
    }

    public String toString() {
        return this.mimeType + ":" + this.f24848id;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f24848id);
        parcel.writeString(this.uri.toString());
        parcel.writeString(this.mimeType);
        parcel.writeInt(this.streamKeys.size());
        for (int i11 = 0; i11 < this.streamKeys.size(); i11++) {
            parcel.writeParcelable(this.streamKeys.get(i11), 0);
        }
        parcel.writeByteArray(this.keySetId);
        parcel.writeString(this.customCacheKey);
        parcel.writeByteArray(this.data);
    }

    private DownloadRequest(String str, Uri uri, @Nullable String str2, List<StreamKey> list, @Nullable byte[] bArr, @Nullable String str3, @Nullable byte[] bArr2) {
        int iQ0 = p0.q0(uri, str2);
        if (iQ0 == 0 || iQ0 == 2 || iQ0 == 1) {
            com.google.android.exoplayer2.util.a.b(str3 == null, "customCacheKey must be null for type: " + iQ0);
        }
        this.f24848id = str;
        this.uri = uri;
        this.mimeType = str2;
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        this.streamKeys = Collections.unmodifiableList(arrayList);
        this.keySetId = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        this.customCacheKey = str3;
        this.data = bArr2 != null ? Arrays.copyOf(bArr2, bArr2.length) : p0.f26859f;
    }

    DownloadRequest(Parcel parcel) {
        this.f24848id = (String) p0.j(parcel.readString());
        this.uri = Uri.parse((String) p0.j(parcel.readString()));
        this.mimeType = parcel.readString();
        int i10 = parcel.readInt();
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add((StreamKey) parcel.readParcelable(StreamKey.class.getClassLoader()));
        }
        this.streamKeys = Collections.unmodifiableList(arrayList);
        this.keySetId = parcel.createByteArray();
        this.customCacheKey = parcel.readString();
        this.data = (byte[]) p0.j(parcel.createByteArray());
    }
}
