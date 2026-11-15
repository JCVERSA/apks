package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;
import java.util.List;
import java.util.Map;

public final class Bl extends BaseRequestConfig.BaseRequestArguments {

    @Nullable
    public final String a;

    @Nullable
    public final String b;

    @Nullable
    public final Map<String, String> c;
    public final boolean d;

    @Nullable
    public final List<String> e;

    public Bl(@NonNull C2431b4 c2431b4) {
        this(c2431b4.a().d(), c2431b4.a().e(), c2431b4.a().a(), c2431b4.a().i(), c2431b4.a().b());
    }

    public final boolean a(@NonNull Bl bl) {
        return false;
    }

    @Override
    @NonNull
    public final Bl mergeFrom(@NonNull Bl bl) {
        return new Bl((String) WrapUtils.getOrDefaultNullable(this.a, bl.a), (String) WrapUtils.getOrDefaultNullable(this.b, bl.b), (Map) WrapUtils.getOrDefaultNullable(this.c, bl.c), this.d || bl.d, bl.d ? bl.e : this.e);
    }

    @Override
    public final boolean compareWithOtherArguments(@NonNull Object obj) {
        return false;
    }

    public final String toString() {
        return "Arguments{distributionReferrer='" + this.a + "', installReferrerSource='" + this.b + "', clientClids=" + this.c + ", hasNewCustomHosts=" + this.d + ", newCustomHosts=" + this.e + '}';
    }

    public Bl(@Nullable String str, @Nullable String str2, @Nullable Map<String, String> map, boolean z, @Nullable List<String> list) {
        this.a = str;
        this.b = str2;
        this.c = map;
        this.d = z;
        this.e = list;
    }

    public Bl() {
        this(null, null, null, false, null);
    }
}
