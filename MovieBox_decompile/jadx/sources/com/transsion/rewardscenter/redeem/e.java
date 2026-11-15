package com.transsion.rewardscenter.redeem;

import com.transsion.rewardscenterapi.LotteryPrize;
import com.transsion.rewardscenterapi.SkuPoint;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public abstract class e {

    public static final class a extends e {

        private final LotteryPrize f49018a;

        private final boolean f49019b;

        private final SkuPoint f49020c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(LotteryPrize lotteryPrize, boolean z10, SkuPoint skuPoint) {
            super(null);
            Intrinsics.h(lotteryPrize, "lotteryPrize");
            this.f49018a = lotteryPrize;
            this.f49019b = z10;
            this.f49020c = skuPoint;
        }

        public final boolean a() {
            return this.f49019b;
        }

        public final LotteryPrize b() {
            return this.f49018a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f49018a, aVar.f49018a) && this.f49019b == aVar.f49019b && Intrinsics.c(this.f49020c, aVar.f49020c);
        }

        public int hashCode() {
            int iHashCode = ((this.f49018a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f49019b)) * 31;
            SkuPoint skuPoint = this.f49020c;
            return iHashCode + (skuPoint == null ? 0 : skuPoint.hashCode());
        }

        public String toString() {
            return "LotteryItem(lotteryPrize=" + this.f49018a + ", hasPaid=" + this.f49019b + ", skuPoint=" + this.f49020c + ")";
        }
    }

    public static final class b extends e {

        private final SkuPoint f49021a;

        private final boolean f49022b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(SkuPoint skuPoint, boolean z10) {
            super(null);
            Intrinsics.h(skuPoint, "skuPoint");
            this.f49021a = skuPoint;
            this.f49022b = z10;
        }

        public final boolean a() {
            return this.f49022b;
        }

        public final SkuPoint b() {
            return this.f49021a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f49021a, bVar.f49021a) && this.f49022b == bVar.f49022b;
        }

        public int hashCode() {
            return (this.f49021a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f49022b);
        }

        public String toString() {
            return "SkuItem(skuPoint=" + this.f49021a + ", hasPaid=" + this.f49022b + ")";
        }
    }

    public static final class c extends e {

        private final String f49023a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String title) {
            super(null);
            Intrinsics.h(title, "title");
            this.f49023a = title;
        }

        public final String a() {
            return this.f49023a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && Intrinsics.c(this.f49023a, ((c) obj).f49023a);
        }

        public int hashCode() {
            return this.f49023a.hashCode();
        }

        public String toString() {
            return "TitleItem(title=" + this.f49023a + ")";
        }
    }

    public e(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private e() {
    }
}
