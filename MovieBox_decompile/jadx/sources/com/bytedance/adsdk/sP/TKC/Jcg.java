package com.bytedance.adsdk.sP.TKC;

import android.util.Pair;

public class Jcg<T> {
    T Sj;
    T sP;

    private static boolean sP(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public void Sj(T t10, T t11) {
        this.Sj = t10;
        this.sP = t11;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        return sP(pair.first, this.Sj) && sP(pair.second, this.sP);
    }

    public int hashCode() {
        T t10 = this.Sj;
        int iHashCode = t10 == null ? 0 : t10.hashCode();
        T t11 = this.sP;
        return iHashCode ^ (t11 != null ? t11.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.Sj + " " + this.sP + "}";
    }
}
