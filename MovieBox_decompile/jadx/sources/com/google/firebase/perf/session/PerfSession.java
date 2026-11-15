package com.google.firebase.perf.session;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.v1.SessionVerbosity;
import com.google.firebase.perf.v1.h;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class PerfSession implements Parcelable {
    public static final Parcelable.Creator<PerfSession> CREATOR = new a();
    private final Timer creationTime;
    private boolean isGaugeAndEventCollectionEnabled;
    private final String sessionId;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public PerfSession createFromParcel(Parcel parcel) {
            return new PerfSession(parcel, (a) null);
        }

        @Override
        public PerfSession[] newArray(int i10) {
            return new PerfSession[i10];
        }
    }

    PerfSession(Parcel parcel, a aVar) {
        this(parcel);
    }

    @Nullable
    public static h[] buildAndSort(@NonNull List<PerfSession> list) {
        if (list.isEmpty()) {
            return null;
        }
        h[] hVarArr = new h[list.size()];
        h hVarBuild = list.get(0).build();
        boolean z10 = false;
        for (int i10 = 1; i10 < list.size(); i10++) {
            h hVarBuild2 = list.get(i10).build();
            if (z10 || !list.get(i10).isVerbose()) {
                hVarArr[i10] = hVarBuild2;
            } else {
                hVarArr[0] = hVarBuild2;
                hVarArr[i10] = hVarBuild;
                z10 = true;
            }
        }
        if (!z10) {
            hVarArr[0] = hVarBuild;
        }
        return hVarArr;
    }

    public static PerfSession createWithId(@NonNull String str) {
        PerfSession perfSession = new PerfSession(str.replace("-", ""), new com.google.firebase.perf.util.a());
        perfSession.setGaugeAndEventCollectionEnabled(shouldCollectGaugesAndEvents());
        return perfSession;
    }

    public static boolean shouldCollectGaugesAndEvents() {
        com.google.firebase.perf.config.a aVarG = com.google.firebase.perf.config.a.g();
        return aVarG.K() && Math.random() < aVarG.D();
    }

    public h build() {
        h.c cVarH = h.o().h(this.sessionId);
        if (this.isGaugeAndEventCollectionEnabled) {
            cVarH.d(SessionVerbosity.GAUGES_AND_SYSTEM_EVENTS);
        }
        return (h) cVarH.build();
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public Timer getTimer() {
        return this.creationTime;
    }

    public boolean isGaugeAndEventCollectionEnabled() {
        return this.isGaugeAndEventCollectionEnabled;
    }

    public boolean isSessionRunningTooLong() {
        return TimeUnit.MICROSECONDS.toMinutes(this.creationTime.getDurationMicros()) > com.google.firebase.perf.config.a.g().A();
    }

    public boolean isVerbose() {
        return this.isGaugeAndEventCollectionEnabled;
    }

    public String sessionId() {
        return this.sessionId;
    }

    public void setGaugeAndEventCollectionEnabled(boolean z10) {
        this.isGaugeAndEventCollectionEnabled = z10;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeString(this.sessionId);
        parcel.writeByte(this.isGaugeAndEventCollectionEnabled ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.creationTime, 0);
    }

    public PerfSession(String str, com.google.firebase.perf.util.a aVar) {
        this.isGaugeAndEventCollectionEnabled = false;
        this.sessionId = str;
        this.creationTime = aVar.a();
    }

    static boolean isVerbose(@NonNull h hVar) {
        Iterator it = hVar.n().iterator();
        while (it.hasNext()) {
            if (((SessionVerbosity) it.next()) == SessionVerbosity.GAUGES_AND_SYSTEM_EVENTS) {
                return true;
            }
        }
        return false;
    }

    private PerfSession(@NonNull Parcel parcel) {
        this.isGaugeAndEventCollectionEnabled = false;
        this.sessionId = parcel.readString();
        this.isGaugeAndEventCollectionEnabled = parcel.readByte() != 0;
        this.creationTime = (Timer) parcel.readParcelable(Timer.class.getClassLoader());
    }
}
