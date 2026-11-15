package com.google.android.gms.internal.measurement;

import com.cloud.hisavana.sdk.common.util.m0;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;

public final class zzai implements zzaq {
    private final Double zza;

    public zzai(Double d10) {
        if (d10 == null) {
            this.zza = Double.valueOf(Double.NaN);
        } else {
            this.zza = d10;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzai) {
            return this.zza.equals(((zzai) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final String toString() {
        return zzf();
    }

    @Override
    public final zzaq zza(String str, zzh zzhVar, List<zzaq> list) {
        if ("toString".equals(str)) {
            return new zzas(zzf());
        }
        throw new IllegalArgumentException(String.format("%s.%s is not a function.", zzf(), str));
    }

    @Override
    public final zzaq zzc() {
        return new zzai(this.zza);
    }

    @Override
    public final Boolean zzd() {
        return Boolean.valueOf((Double.isNaN(this.zza.doubleValue()) || this.zza.doubleValue() == 0.0d) ? false : true);
    }

    @Override
    public final Double zze() {
        return this.zza;
    }

    @Override
    public final String zzf() {
        if (Double.isNaN(this.zza.doubleValue())) {
            return "NaN";
        }
        if (Double.isInfinite(this.zza.doubleValue())) {
            return this.zza.doubleValue() > 0.0d ? "Infinity" : "-Infinity";
        }
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(this.zza.doubleValue());
        BigDecimal bigDecimal = bigDecimalValueOf.signum() == 0 ? new BigDecimal(BigInteger.ZERO, 0) : m0.a(bigDecimalValueOf);
        DecimalFormat decimalFormat = new DecimalFormat("0E0");
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        decimalFormat.setMinimumFractionDigits((bigDecimal.scale() > 0 ? bigDecimal.precision() : bigDecimal.scale()) - 1);
        String str = decimalFormat.format(bigDecimal);
        int iIndexOf = str.indexOf("E");
        if (iIndexOf <= 0) {
            return str;
        }
        int i10 = Integer.parseInt(str.substring(iIndexOf + 1));
        return ((i10 >= 0 || i10 <= -7) && (i10 < 0 || i10 >= 21)) ? str.replace("E-", "e-").replace("E", "e+") : bigDecimal.toPlainString();
    }

    @Override
    public final Iterator<zzaq> zzh() {
        return null;
    }
}
