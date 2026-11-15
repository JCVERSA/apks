package defpackage;

import com.google.android.gms.common.api.Status;

public final class pbf implements lu8 {
    public final Status b;
    public final String c;

    public pbf(Status status) {
        this.b = (Status) wd8.l(status);
        this.c = "";
    }

    @Override
    public final Status getStatus() {
        return this.b;
    }

    public pbf(String str) {
        this.c = (String) wd8.l(str);
        this.b = Status.RESULT_SUCCESS;
    }
}
