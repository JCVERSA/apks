package uj;

import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.bean.GameInfoType;
import com.transsion.commercialization.gameres.aha.c;
import kotlin.jvm.internal.Intrinsics;
import zg.b;

public final class a {

    private final GameInfoType f73169a;

    private final RecommendInfo f73170b;

    private final c f73171c;

    private transient String f73172d;

    private transient String f73173e;

    public class C0897a {

        public static final int[] f73174a;

        static {
            int[] iArr = new int[GameInfoType.values().length];
            try {
                iArr[GameInfoType.AHA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GameInfoType.PS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f73174a = iArr;
        }
    }

    public a(GameInfoType type, RecommendInfo recommendInfo, c cVar) {
        Intrinsics.h(type, "type");
        this.f73169a = type;
        this.f73170b = recommendInfo;
        this.f73171c = cVar;
    }

    public final c a() {
        return this.f73171c;
    }

    public final String b() {
        String categoryName;
        RecommendInfo recommendInfo = this.f73170b;
        if (recommendInfo != null && (categoryName = recommendInfo.getCategoryName()) != null) {
            return categoryName;
        }
        c cVar = this.f73171c;
        String strB = cVar != null ? cVar.b() : null;
        return strB == null ? "" : strB;
    }

    public final String c() {
        String iconUrl;
        RecommendInfo recommendInfo = this.f73170b;
        if (recommendInfo != null && (iconUrl = recommendInfo.getIconUrl()) != null) {
            return iconUrl;
        }
        c cVar = this.f73171c;
        String strC = cVar != null ? cVar.c() : null;
        return strC == null ? "" : strC;
    }

    public final String d() {
        String name;
        RecommendInfo recommendInfo = this.f73170b;
        if (recommendInfo != null && (name = recommendInfo.getName()) != null) {
            return name;
        }
        c cVar = this.f73171c;
        String strF = cVar != null ? cVar.f() : null;
        return strF == null ? "" : strF;
    }

    public final String e() {
        String strD;
        int i10 = C0897a.f73174a[this.f73169a.ordinal()];
        if (i10 == 1) {
            c cVar = this.f73171c;
            return (cVar == null || (strD = cVar.d()) == null) ? "" : strD;
        }
        if (i10 != 2) {
            return "";
        }
        RecommendInfo recommendInfo = this.f73170b;
        if ((recommendInfo != null ? recommendInfo.getSize() : 0L) <= 0) {
            return "";
        }
        RecommendInfo recommendInfo2 = this.f73170b;
        return b.a(recommendInfo2 != null ? recommendInfo2.getSize() : 0L, 1);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f73169a == aVar.f73169a && Intrinsics.c(this.f73170b, aVar.f73170b) && Intrinsics.c(this.f73171c, aVar.f73171c);
    }

    public final String f() {
        Double dE;
        String star;
        RecommendInfo recommendInfo = this.f73170b;
        if (recommendInfo != null && (star = recommendInfo.getStar()) != null) {
            return star;
        }
        c cVar = this.f73171c;
        return (cVar == null || (dE = cVar.e()) == null) ? "" : dE.toString();
    }

    public final String g() {
        return this.f73173e;
    }

    public final String h() {
        return this.f73172d;
    }

    public int hashCode() {
        int iHashCode = this.f73169a.hashCode() * 31;
        RecommendInfo recommendInfo = this.f73170b;
        int iHashCode2 = (iHashCode + (recommendInfo == null ? 0 : recommendInfo.hashCode())) * 31;
        c cVar = this.f73171c;
        return iHashCode2 + (cVar != null ? cVar.hashCode() : 0);
    }

    public final RecommendInfo i() {
        return this.f73170b;
    }

    public final GameInfoType j() {
        return this.f73169a;
    }

    public final void k(String str) {
        this.f73173e = str;
    }

    public final void l(String str) {
        this.f73172d = str;
    }

    public String toString() {
        return "GameResInfo(type=" + this.f73169a + ", psInfo=" + this.f73170b + ", ahaInfo=" + this.f73171c + ")";
    }
}
