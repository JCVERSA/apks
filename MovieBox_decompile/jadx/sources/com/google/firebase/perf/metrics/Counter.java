package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.concurrent.atomic.AtomicLong;

public class Counter implements Parcelable {
    public static final Parcelable.Creator<Counter> CREATOR = new a();
    private final AtomicLong count;
    private final String name;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public Counter createFromParcel(Parcel parcel) {
            return new Counter(parcel, null);
        }

        @Override
        public Counter[] newArray(int i10) {
            return new Counter[i10];
        }
    }

    Counter(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    long getCount() {
        return this.count.get();
    }

    @NonNull
    String getName() {
        return this.name;
    }

    public void increment(long j10) {
        this.count.addAndGet(j10);
    }

    void setCount(long j10) {
        this.count.set(j10);
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.name);
        parcel.writeLong(this.count.get());
    }

    public Counter(@NonNull String str) {
        this.name = str;
        this.count = new AtomicLong(0L);
    }

    private Counter(Parcel parcel) {
        this.name = parcel.readString();
        this.count = new AtomicLong(parcel.readLong());
    }
}
