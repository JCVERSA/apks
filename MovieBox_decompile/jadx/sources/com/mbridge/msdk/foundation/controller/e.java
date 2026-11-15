package com.mbridge.msdk.foundation.controller;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;

public class e implements SharedPreferences.OnSharedPreferenceChangeListener {

    private String f34223a = "";

    private String f34224b = "";

    private String f34225c = "";

    private String f34226d = "";

    private int f34227e = 0;

    private boolean f34228f = false;

    private boolean f34229g;

    private boolean f34230h;

    private boolean f34231i;

    private boolean f34232j;

    private boolean f34233k;

    private a f34234l;

    private final SharedPreferences f34235m;

    public interface a {
        void a();
    }

    public e(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext());
        this.f34235m = defaultSharedPreferences;
        if (defaultSharedPreferences != null) {
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this);
        }
        a();
    }

    private void a() {
        SharedPreferences sharedPreferences = this.f34235m;
        if (sharedPreferences != null) {
            d(sharedPreferences.getString("IABTCF_TCString", ""));
            a(this.f34235m.getInt("IABTCF_gdprApplies", 0));
            c(this.f34235m.getString("IABTCF_PurposeConsents", ""));
            e(this.f34235m.getString("IABTCF_VendorConsents", ""));
            b(this.f34235m.getString("IABTCF_AddtlConsent", ""));
        }
    }

    public String b() {
        return this.f34223a;
    }

    public void c(String str) {
        this.f34229g = a(str, 1);
        this.f34230h = a(str, 2);
        this.f34224b = str;
    }

    public void d(String str) {
        this.f34223a = str;
    }

    public void e(String str) {
        this.f34231i = a(str, 867);
        this.f34225c = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:25:0x0048  */
    @Override
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        byte b10;
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            switch (str) {
                case "IABTCF_PurposeConsents":
                    b10 = 2;
                    break;
                case "IABTCF_gdprApplies":
                    b10 = 1;
                    break;
                case "IABTCF_TCString":
                    b10 = 0;
                    break;
                case "IABTCF_AddtlConsent":
                    b10 = 4;
                    break;
                case "IABTCF_VendorConsents":
                    b10 = 3;
                    break;
                default:
                    b10 = -1;
                    break;
            }
            if (b10 == 0) {
                d(sharedPreferences.getString("IABTCF_TCString", ""));
            } else if (b10 == 1) {
                a(sharedPreferences.getInt("IABTCF_gdprApplies", 0));
            } else if (b10 == 2) {
                c(sharedPreferences.getString("IABTCF_PurposeConsents", ""));
            } else if (b10 == 3) {
                e(sharedPreferences.getString("IABTCF_VendorConsents", ""));
            } else if (b10 == 4) {
                b(sharedPreferences.getString("IABTCF_AddtlConsent", ""));
            }
            a aVar = this.f34234l;
            if (aVar != null) {
                aVar.a();
            }
        } catch (Throwable th2) {
            o0.b("TCStringManager", th2.getMessage());
        }
    }

    public void b(String str) {
        this.f34226d = str;
        if (TextUtils.isEmpty(str)) {
            this.f34232j = true;
            return;
        }
        if (MBridgeConstans.GOOGLE_ATP_ID == -1) {
            this.f34233k = false;
            return;
        }
        this.f34233k = true;
        try {
            String[] strArrSplit = str.split("~");
            if (strArrSplit.length > 1) {
                if (TextUtils.isEmpty(strArrSplit[1])) {
                    this.f34232j = false;
                } else {
                    this.f34232j = str.contains(String.valueOf(MBridgeConstans.GOOGLE_ATP_ID));
                }
            }
        } catch (Throwable th2) {
            o0.b("TCStringManager", th2.getMessage());
        }
    }

    public boolean c() {
        if (this.f34227e == 0) {
            a(true);
            return this.f34228f;
        }
        if (MBridgeConstans.VERIFY_ATP_CONSENT) {
            a((this.f34231i || (this.f34233k && this.f34232j)) && this.f34229g && this.f34230h);
        } else {
            a(this.f34231i && this.f34229g && this.f34230h);
        }
        return this.f34228f;
    }

    public void a(a aVar) {
        if (aVar != null) {
            this.f34234l = aVar;
        }
    }

    public void a(int i10) {
        this.f34227e = i10;
    }

    public void a(boolean z10) {
        this.f34228f = z10;
    }

    private boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("[01]+");
    }

    private boolean a(String str, int i10) {
        return a(str) && i10 <= str.length() && i10 >= 1 && '1' == str.charAt(i10 - 1);
    }
}
