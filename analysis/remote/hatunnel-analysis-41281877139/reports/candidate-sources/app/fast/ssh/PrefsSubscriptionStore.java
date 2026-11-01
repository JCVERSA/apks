package app.fast.ssh;

import android.content.Context;
import android.content.SharedPreferences;

public class PrefsSubscriptionStore implements BillingManager.SubscriptionStore {
    private static final long REFRESH_WINDOW_MS = 21600000;
    private final SharedPreferences prefs;
    private static final String KEY_TOKEN = ProtectedFastSSH.s("⾈");
    private static final String KEY_PURCHASE_TOKEN = ProtectedFastSSH.s("⾊");
    private static final String KEY_TOKEN_EXPIRES = ProtectedFastSSH.s("⾉");
    private static final String PREFS = ProtectedFastSSH.s("⾇");

    public PrefsSubscriptionStore(Context context) {
        this.prefs = context.getApplicationContext().getSharedPreferences(ProtectedFastSSH.s("⾇"), 0);
    }

    @Override
    public void clear() {
        this.prefs.edit().remove(ProtectedFastSSH.s("⾈")).remove(ProtectedFastSSH.s("⾉")).remove(ProtectedFastSSH.s("⾊")).apply();
    }

    @Override
    public String getPurchaseToken() {
        String string = this.prefs.getString(ProtectedFastSSH.s("⾊"), null);
        if (string == null || string.isEmpty()) {
            return null;
        }
        return string;
    }

    @Override
    public long getRefreshWindowMillis() {
        return REFRESH_WINDOW_MS;
    }

    @Override
    public String getSubscriptionToken() {
        String string = this.prefs.getString(ProtectedFastSSH.s("⾈"), null);
        if (string == null || string.isEmpty()) {
            return null;
        }
        return string;
    }

    @Override
    public long getTokenExpiresAtMillis() {
        return this.prefs.getLong(ProtectedFastSSH.s("⾉"), 0L);
    }

    @Override
    public void save(String str, long j) {
        this.prefs.edit().putString(ProtectedFastSSH.s("⾈"), str).putLong(ProtectedFastSSH.s("⾉"), j).apply();
    }

    @Override
    public void savePurchaseToken(String str) {
        this.prefs.edit().putString(ProtectedFastSSH.s("⾊"), str).apply();
    }
}
