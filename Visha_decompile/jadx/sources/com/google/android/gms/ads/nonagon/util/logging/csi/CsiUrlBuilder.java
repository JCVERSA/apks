package com.google.android.gms.ads.nonagon.util.logging.csi;

import android.net.Uri;
import androidx.annotation.NonNull;
import defpackage.tze;
import java.util.Map;

public class CsiUrlBuilder {
    public final String a = (String) tze.a.e();

    @NonNull
    public String generateUrl(@NonNull Map<String, String> map) {
        Uri.Builder builderBuildUpon = Uri.parse(this.a).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builderBuildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        return builderBuildUpon.build().toString();
    }
}
