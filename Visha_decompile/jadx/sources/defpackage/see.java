package defpackage;

import android.accounts.Account;
import com.google.android.gms.common.api.Status;

public final class see implements lu8 {
    public static final Account d = new Account("DUMMY_NAME", "com.google");
    public final Status b;
    public final Account c;

    public see(Status status, Account account) {
        this.b = status;
        this.c = account == null ? d : account;
    }

    @Override
    public final Status getStatus() {
        return this.b;
    }
}
