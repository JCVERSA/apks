package i5;

import android.os.Bundle;

public class d {

    private final Bundle f61858a;

    public d(Bundle bundle) {
        this.f61858a = bundle;
    }

    public boolean a() {
        return this.f61858a.getBoolean("google_play_instant");
    }

    public long b() {
        return this.f61858a.getLong("install_begin_timestamp_seconds");
    }

    public long c() {
        return this.f61858a.getLong("install_begin_timestamp_server_seconds");
    }

    public String d() {
        return this.f61858a.getString("install_referrer");
    }

    public String e() {
        return this.f61858a.getString("install_version");
    }

    public long f() {
        return this.f61858a.getLong("referrer_click_timestamp_seconds");
    }

    public long g() {
        return this.f61858a.getLong("referrer_click_timestamp_server_seconds");
    }
}
