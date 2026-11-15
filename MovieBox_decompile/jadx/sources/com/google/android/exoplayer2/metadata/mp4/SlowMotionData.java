package com.google.android.exoplayer2.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.b2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.google.common.base.j;
import com.google.common.collect.h2;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public final class SlowMotionData implements Metadata.Entry {
    public static final Parcelable.Creator<SlowMotionData> CREATOR = new a();
    public final List<Segment> segments;

    public static final class Segment implements Parcelable {
        public static final Comparator<Segment> BY_START_THEN_END_THEN_DIVISOR = new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return SlowMotionData.Segment.lambda$static$0((SlowMotionData.Segment) obj, (SlowMotionData.Segment) obj2);
            }
        };
        public static final Parcelable.Creator<Segment> CREATOR = new a();
        public final long endTimeMs;
        public final int speedDivisor;
        public final long startTimeMs;

        class a implements Parcelable.Creator {
            a() {
            }

            @Override
            public Segment createFromParcel(Parcel parcel) {
                return new Segment(parcel.readLong(), parcel.readLong(), parcel.readInt());
            }

            @Override
            public Segment[] newArray(int i10) {
                return new Segment[i10];
            }
        }

        public Segment(long j10, long j11, int i10) {
            com.google.android.exoplayer2.util.a.a(j10 < j11);
            this.startTimeMs = j10;
            this.endTimeMs = j11;
            this.speedDivisor = i10;
        }

        public static int lambda$static$0(Segment segment, Segment segment2) {
            return h2.k().e(segment.startTimeMs, segment2.startTimeMs).e(segment.endTimeMs, segment2.endTimeMs).d(segment.speedDivisor, segment2.speedDivisor).j();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Segment.class != obj.getClass()) {
                return false;
            }
            Segment segment = (Segment) obj;
            return this.startTimeMs == segment.startTimeMs && this.endTimeMs == segment.endTimeMs && this.speedDivisor == segment.speedDivisor;
        }

        public int hashCode() {
            return j.b(Long.valueOf(this.startTimeMs), Long.valueOf(this.endTimeMs), Integer.valueOf(this.speedDivisor));
        }

        public String toString() {
            return p0.C("Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", Long.valueOf(this.startTimeMs), Long.valueOf(this.endTimeMs), Integer.valueOf(this.speedDivisor));
        }

        @Override
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeLong(this.startTimeMs);
            parcel.writeLong(this.endTimeMs);
            parcel.writeInt(this.speedDivisor);
        }
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public SlowMotionData createFromParcel(Parcel parcel) {
            ArrayList arrayList = new ArrayList();
            parcel.readList(arrayList, Segment.class.getClassLoader());
            return new SlowMotionData(arrayList);
        }

        @Override
        public SlowMotionData[] newArray(int i10) {
            return new SlowMotionData[i10];
        }
    }

    public SlowMotionData(List<Segment> list) {
        this.segments = list;
        com.google.android.exoplayer2.util.a.a(!doSegmentsOverlap(list));
    }

    private static boolean doSegmentsOverlap(List<Segment> list) {
        if (list.isEmpty()) {
            return false;
        }
        long j10 = list.get(0).endTimeMs;
        for (int i10 = 1; i10 < list.size(); i10++) {
            if (list.get(i10).startTimeMs < j10) {
                return true;
            }
            j10 = list.get(i10).endTimeMs;
        }
        return false;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SlowMotionData.class != obj.getClass()) {
            return false;
        }
        return this.segments.equals(((SlowMotionData) obj).segments);
    }

    @Override
    public byte[] getWrappedMetadataBytes() {
        return com.google.android.exoplayer2.metadata.a.a(this);
    }

    @Override
    public p1 getWrappedMetadataFormat() {
        return com.google.android.exoplayer2.metadata.a.b(this);
    }

    public int hashCode() {
        return this.segments.hashCode();
    }

    @Override
    public void populateMediaMetadata(b2.b bVar) {
        com.google.android.exoplayer2.metadata.a.c(this, bVar);
    }

    public String toString() {
        return "SlowMotion: segments=" + this.segments;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeList(this.segments);
    }
}
