package com.doman.core.b;

public enum f {
    INITCONFIG("/init/check"),
    ADCONFIG("/app/tk_a"),
    APPLIST("/app/tk_al"),
    GETDEVICES("/app/tk_d"),
    GETAPPTASKREQUEST("/app/tk_r"),
    GETTASKDETIAL("/app/tk_l"),
    TRACKEVENT("/app/tk_e"),
    MQTT("/mt/tk_a"),
    DEEP("/app/tk_dk"),
    CLIP("/tk/pe"),
    CLICK("/tk/ct");

    public String l;

    f(String str) {
        this.l = str;
    }
}
