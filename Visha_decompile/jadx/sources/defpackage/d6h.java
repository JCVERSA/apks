package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.client.zzr;
import java.util.ArrayList;

public final class d6h implements deh {
    public final zzr a;
    public final String b;
    public final boolean c;
    public final String d;
    public final float e;
    public final int f;
    public final int g;
    public final String h;
    public final boolean i;

    public d6h(zzr zzrVar, String str, boolean z, String str2, float f, int i, int i2, String str3, boolean z2) {
        wd8.m(zzrVar, "the adSize must not be null");
        this.a = zzrVar;
        this.b = str;
        this.c = z;
        this.d = str2;
        this.e = f;
        this.f = i;
        this.g = i2;
        this.h = str3;
        this.i = z2;
    }

    public final void a(Bundle bundle) {
        zzr zzrVar = this.a;
        int i = zzrVar.zze;
        unh.f(bundle, "smart_w", "full", i == -1);
        int i2 = zzrVar.zzb;
        unh.f(bundle, "smart_h", TtmlNode.TEXT_EMPHASIS_AUTO, i2 == -2);
        unh.g(bundle, "ene", true, zzrVar.zzj);
        unh.f(bundle, "rafmt", "102", zzrVar.zzm);
        unh.f(bundle, "rafmt", "103", zzrVar.zzn);
        unh.f(bundle, "rafmt", "105", zzrVar.zzo);
        unh.g(bundle, "inline_adaptive_slot", true, this.i);
        unh.g(bundle, "interscroller_slot", true, zzrVar.zzo);
        unh.c(bundle, "format", this.b);
        unh.f(bundle, "fluid", "height", this.c);
        String str = this.d;
        unh.f(bundle, "sz", str, !TextUtils.isEmpty(str));
        bundle.putFloat("u_sd", this.e);
        bundle.putInt("sw", this.f);
        bundle.putInt("sh", this.g);
        String str2 = this.h;
        unh.f(bundle, "sc", str2, true ^ TextUtils.isEmpty(str2));
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        zzr[] zzrVarArr = zzrVar.zzg;
        if (zzrVarArr == null) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt("height", i2);
            bundle2.putInt("width", i);
            bundle2.putBoolean("is_fluid_height", zzrVar.zzi);
            arrayList.add(bundle2);
        } else {
            for (zzr zzrVar2 : zzrVarArr) {
                Bundle bundle3 = new Bundle();
                bundle3.putBoolean("is_fluid_height", zzrVar2.zzi);
                bundle3.putInt("height", zzrVar2.zzb);
                bundle3.putInt("width", zzrVar2.zze);
                arrayList.add(bundle3);
            }
        }
        bundle.putParcelableArrayList("valid_ad_sizes", arrayList);
    }

    @Override
    public final void zza(Object obj) {
        a(((kyf) obj).b);
    }

    @Override
    public final void zzb(Object obj) {
        a(((kyf) obj).a);
    }
}
