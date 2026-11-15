package defpackage;

import java.util.Locale;
import java.util.Optional;

public abstract class un5 {
    public static Optional a(String str) {
        if (str.contains("-")) {
            String[] strArrSplit = str.split("-", -1);
            if (strArrSplit.length > 2) {
                return Optional.of(new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]));
            }
            if (strArrSplit.length > 1) {
                return Optional.of(new Locale(strArrSplit[0], strArrSplit[1]));
            }
            if (strArrSplit.length == 1) {
                return Optional.of(new Locale(strArrSplit[0]));
            }
        } else {
            if (!str.contains("_")) {
                return Optional.of(new Locale(str));
            }
            String[] strArrSplit2 = str.split("_", -1);
            if (strArrSplit2.length > 2) {
                return Optional.of(new Locale(strArrSplit2[0], strArrSplit2[1], strArrSplit2[2]));
            }
            if (strArrSplit2.length > 1) {
                return Optional.of(new Locale(strArrSplit2[0], strArrSplit2[1]));
            }
            if (strArrSplit2.length == 1) {
                return Optional.of(new Locale(strArrSplit2[0]));
            }
        }
        return Optional.empty();
    }
}
