package com.google.android.exoplayer2.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import java.util.Arrays;
import java.util.List;

public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new a();
    private final Entry[] entries;

    public interface Entry extends Parcelable {
        @Nullable
        byte[] getWrappedMetadataBytes();

        @Nullable
        p1 getWrappedMetadataFormat();

        void populateMediaMetadata(b2.b bVar);
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public Metadata createFromParcel(Parcel parcel) {
            return new Metadata(parcel);
        }

        @Override
        public Metadata[] newArray(int i10) {
            return new Metadata[i10];
        }
    }

    public Metadata(Entry... entryArr) {
        this.entries = entryArr;
    }

    public Metadata copyWithAppendedEntries(Entry... entryArr) {
        return entryArr.length == 0 ? this : new Metadata((Entry[]) p0.F0(this.entries, entryArr));
    }

    public Metadata copyWithAppendedEntriesFrom(@Nullable Metadata metadata) {
        return metadata == null ? this : copyWithAppendedEntries(metadata.entries);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Metadata.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.entries, ((Metadata) obj).entries);
    }

    public Entry get(int i10) {
        return this.entries[i10];
    }

    public int hashCode() {
        return Arrays.hashCode(this.entries);
    }

    public int length() {
        return this.entries.length;
    }

    public String toString() {
        return "entries=" + Arrays.toString(this.entries);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.entries.length);
        for (Entry entry : this.entries) {
            parcel.writeParcelable(entry, 0);
        }
    }

    public Metadata(List<? extends Entry> list) {
        this.entries = (Entry[]) list.toArray(new Entry[0]);
    }

    Metadata(Parcel parcel) {
        this.entries = new Entry[parcel.readInt()];
        int i10 = 0;
        while (true) {
            Entry[] entryArr = this.entries;
            if (i10 >= entryArr.length) {
                return;
            }
            entryArr[i10] = (Entry) parcel.readParcelable(Entry.class.getClassLoader());
            i10++;
        }
    }
}
