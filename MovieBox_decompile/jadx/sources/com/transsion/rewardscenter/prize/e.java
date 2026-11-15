package com.transsion.rewardscenter.prize;

import com.transsion.rewardscenterapi.DrawChance;
import com.transsion.rewardscenterapi.DrawResult;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class e {

    public static final class a extends e {

        private final DrawChance f48990a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(DrawChance data) {
            super(null);
            Intrinsics.h(data, "data");
            this.f48990a = data;
        }

        public final DrawChance a() {
            return this.f48990a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Intrinsics.c(this.f48990a, ((a) obj).f48990a);
        }

        public int hashCode() {
            return this.f48990a.hashCode();
        }

        public String toString() {
            return "DrawChanceItem(data=" + this.f48990a + ")";
        }
    }

    public static final class b extends e {

        private final boolean f48991a;

        public b(boolean z10) {
            super(null);
            this.f48991a = z10;
        }

        public final boolean a() {
            return this.f48991a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && this.f48991a == ((b) obj).f48991a;
        }

        public int hashCode() {
            return androidx.compose.foundation.e.a(this.f48991a);
        }

        public String toString() {
            return "FooterItem(isExpanded=" + this.f48991a + ")";
        }
    }

    public static final class c extends e {

        private final DrawResult f48992a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DrawResult data) {
            super(null);
            Intrinsics.h(data, "data");
            this.f48992a = data;
        }

        public final DrawResult a() {
            return this.f48992a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && Intrinsics.c(this.f48992a, ((c) obj).f48992a);
        }

        public int hashCode() {
            return this.f48992a.hashCode();
        }

        public String toString() {
            return "Row(data=" + this.f48992a + ")";
        }
    }

    public e(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private e() {
    }
}
