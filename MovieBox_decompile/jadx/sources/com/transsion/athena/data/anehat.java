package com.transsion.athena.data;

import androidx.annotation.NonNull;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

public class anehat {

    public long f41562a;

    public String f41563b;

    public List<athena> f41564c;

    public long f41565d;

    public long f41566e;

    public int f41567f;

    public int f41568g;

    public boolean f41569h;

    public static class athena {

        public String f41570a;

        public long f41571b;

        public String f41572c;

        public int f41573d;

        public athena(String str, long j10, int i10, String str2) {
            this.f41570a = str;
            this.f41571b = j10;
            this.f41573d = i10;
            this.f41572c = str2;
        }

        public String toString() {
            return "TidEvent{event='" + this.f41570a + "', ts=" + this.f41571b + '}';
        }
    }

    public anehat(long j10, String str, List<athena> list, long j11, long j12, int i10, int i11, boolean z10) {
        this.f41562a = j10;
        this.f41564c = list;
        this.f41563b = str;
        this.f41565d = j11;
        this.f41566e = j12;
        this.f41567f = i10;
        this.f41568g = i11;
        this.f41569h = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof anehat) && this.f41562a == ((anehat) obj).f41562a;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.f41562a), this.f41564c, Long.valueOf(this.f41565d), Long.valueOf(this.f41566e), Integer.valueOf(this.f41567f), Integer.valueOf(this.f41568g), Boolean.valueOf(this.f41569h));
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        Iterator<athena> it = this.f41564c.iterator();
        while (it.hasNext()) {
            sb2.append(it.next().toString());
        }
        return "TidEventSet{tid=" + this.f41562a + ", event='" + this.f41563b + "', eventList=" + ((Object) sb2) + ", eventCount=" + this.f41567f + '}';
    }
}
