package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.hunantv.media.player.subtitle.MediaFormat;
import defpackage.l1e;
import defpackage.wd8;
import defpackage.yn4;
import defpackage.z09;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
public class GoogleSignInOptions extends AbstractSafeParcelable implements com.google.android.gms.common.api.a.d, ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;

    @NonNull
    public static final GoogleSignInOptions DEFAULT_GAMES_SIGN_IN;

    @NonNull
    public static final GoogleSignInOptions DEFAULT_SIGN_IN;

    @NonNull
    @VisibleForTesting
    public static final Scope zaa = new Scope(MediaFormat.KEY_PROFILE);

    @NonNull
    @VisibleForTesting
    public static final Scope zab = new Scope(NotificationCompat.CATEGORY_EMAIL);

    @NonNull
    @VisibleForTesting
    public static final Scope zac = new Scope("openid");

    @NonNull
    @VisibleForTesting
    public static final Scope zad;

    @NonNull
    @VisibleForTesting
    public static final Scope zae;
    private static final Comparator zag;
    final int zaf;
    private final ArrayList zah;

    @Nullable
    private Account zai;
    private boolean zaj;
    private final boolean zak;
    private final boolean zal;

    @Nullable
    private String zam;

    @Nullable
    private String zan;
    private ArrayList zao;

    @Nullable
    private String zap;
    private Map zaq;

    static {
        Scope scope = new Scope("https://www.googleapis.com/auth/games_lite");
        zad = scope;
        zae = new Scope("https://www.googleapis.com/auth/games");
        a aVar = new a();
        aVar.b();
        aVar.c();
        DEFAULT_SIGN_IN = aVar.a();
        a aVar2 = new a();
        aVar2.d(scope, new Scope[0]);
        DEFAULT_GAMES_SIGN_IN = aVar2.a();
        CREATOR = new l1e();
        zag = new zac();
    }

    @Nullable
    public static GoogleSignInOptions zab(@Nullable String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String strOptString = jSONObject.has("accountName") ? jSONObject.optString("accountName") : null;
        return new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(strOptString) ? new Account(strOptString, "com.google") : null, jSONObject.getBoolean("idTokenRequested"), jSONObject.getBoolean("serverAuthRequested"), jSONObject.getBoolean("forceCodeForRefreshToken"), jSONObject.has("serverClientId") ? jSONObject.optString("serverClientId") : null, jSONObject.has("hostedDomain") ? jSONObject.optString("hostedDomain") : null, new HashMap(), (String) null);
    }

    public static Map zam(@Nullable List list) {
        HashMap map = new HashMap();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable = (GoogleSignInOptionsExtensionParcelable) it.next();
                map.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.getType()), googleSignInOptionsExtensionParcelable);
            }
        }
        return map;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0052 A[Catch: ClassCastException -> 0x0090, TryCatch #0 {ClassCastException -> 0x0090, blocks: (B:5:0x0004, B:7:0x000e, B:10:0x0018, B:12:0x0028, B:15:0x0035, B:17:0x0039, B:22:0x004a, B:24:0x0052, B:30:0x006a, B:32:0x0072, B:34:0x007a, B:36:0x0082, B:27:0x005d, B:20:0x0040), top: B:42:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x005c  */
    /* JADX WARN: Code duplicated, block: B:27:0x005d A[Catch: ClassCastException -> 0x0090, TryCatch #0 {ClassCastException -> 0x0090, blocks: (B:5:0x0004, B:7:0x000e, B:10:0x0018, B:12:0x0028, B:15:0x0035, B:17:0x0039, B:22:0x004a, B:24:0x0052, B:30:0x006a, B:32:0x0072, B:34:0x007a, B:36:0x0082, B:27:0x005d, B:20:0x0040), top: B:42:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0069  */
    /* JADX WARN: Code duplicated, block: B:30:0x006a A[Catch: ClassCastException -> 0x0090, TryCatch #0 {ClassCastException -> 0x0090, blocks: (B:5:0x0004, B:7:0x000e, B:10:0x0018, B:12:0x0028, B:15:0x0035, B:17:0x0039, B:22:0x004a, B:24:0x0052, B:30:0x006a, B:32:0x0072, B:34:0x007a, B:36:0x0082, B:27:0x005d, B:20:0x0040), top: B:42:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0072 A[Catch: ClassCastException -> 0x0090, TryCatch #0 {ClassCastException -> 0x0090, blocks: (B:5:0x0004, B:7:0x000e, B:10:0x0018, B:12:0x0028, B:15:0x0035, B:17:0x0039, B:22:0x004a, B:24:0x0052, B:30:0x006a, B:32:0x0072, B:34:0x007a, B:36:0x0082, B:27:0x005d, B:20:0x0040), top: B:42:0x0004 }] */
    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.zao.isEmpty() && googleSignInOptions.zao.isEmpty() && this.zah.size() == googleSignInOptions.getScopes().size() && this.zah.containsAll(googleSignInOptions.getScopes())) {
                Account account = this.zai;
                if (account == null) {
                    if (googleSignInOptions.getAccount() == null) {
                        if (TextUtils.isEmpty(this.zam)) {
                            if (TextUtils.isEmpty(googleSignInOptions.getServerClientId())) {
                                if (this.zal != googleSignInOptions.isForceCodeForRefreshToken() && this.zaj == googleSignInOptions.isIdTokenRequested() && this.zak == googleSignInOptions.isServerAuthCodeRequested() && TextUtils.equals(this.zap, googleSignInOptions.getLogSessionId())) {
                                    return true;
                                }
                            }
                        } else if (!this.zam.equals(googleSignInOptions.getServerClientId())) {
                            if (this.zal != googleSignInOptions.isForceCodeForRefreshToken()) {
                            }
                        }
                    }
                } else if (account.equals(googleSignInOptions.getAccount())) {
                    if (TextUtils.isEmpty(this.zam)) {
                        if (TextUtils.isEmpty(googleSignInOptions.getServerClientId())) {
                            if (this.zal != googleSignInOptions.isForceCodeForRefreshToken()) {
                            }
                        }
                    } else if (!this.zam.equals(googleSignInOptions.getServerClientId())) {
                        if (this.zal != googleSignInOptions.isForceCodeForRefreshToken()) {
                        }
                    }
                }
            }
        } catch (ClassCastException unused) {
        }
        return false;
    }

    @Nullable
    public Account getAccount() {
        return this.zai;
    }

    @NonNull
    public ArrayList<GoogleSignInOptionsExtensionParcelable> getExtensions() {
        return this.zao;
    }

    @Nullable
    public String getLogSessionId() {
        return this.zap;
    }

    @NonNull
    public Scope[] getScopeArray() {
        return (Scope[]) this.zah.toArray(new Scope[this.zah.size()]);
    }

    @NonNull
    public ArrayList<Scope> getScopes() {
        return new ArrayList<>(this.zah);
    }

    @Nullable
    public String getServerClientId() {
        return this.zam;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.zah;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(((Scope) arrayList2.get(i)).getScopeUri());
        }
        Collections.sort(arrayList);
        yn4 yn4Var = new yn4();
        yn4Var.a(arrayList);
        yn4Var.a(this.zai);
        yn4Var.a(this.zam);
        yn4Var.c(this.zal);
        yn4Var.c(this.zaj);
        yn4Var.c(this.zak);
        yn4Var.a(this.zap);
        return yn4Var.b();
    }

    public boolean isForceCodeForRefreshToken() {
        return this.zal;
    }

    public boolean isIdTokenRequested() {
        return this.zaj;
    }

    public boolean isServerAuthCodeRequested() {
        return this.zak;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        int i2 = this.zaf;
        int iA = z09.a(parcel);
        z09.s(parcel, 1, i2);
        z09.H(parcel, 2, getScopes(), false);
        z09.B(parcel, 3, getAccount(), i, false);
        z09.g(parcel, 4, isIdTokenRequested());
        z09.g(parcel, 5, isServerAuthCodeRequested());
        z09.g(parcel, 6, isForceCodeForRefreshToken());
        z09.D(parcel, 7, getServerClientId(), false);
        z09.D(parcel, 8, this.zan, false);
        z09.H(parcel, 9, getExtensions(), false);
        z09.D(parcel, 10, getLogSessionId(), false);
        z09.b(parcel, iA);
    }

    @NonNull
    public final String zaf() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.zah, zag);
            Iterator it = this.zah.iterator();
            while (it.hasNext()) {
                jSONArray.put(((Scope) it.next()).getScopeUri());
            }
            jSONObject.put("scopes", jSONArray);
            Account account = this.zai;
            if (account != null) {
                jSONObject.put("accountName", account.name);
            }
            jSONObject.put("idTokenRequested", this.zaj);
            jSONObject.put("forceCodeForRefreshToken", this.zal);
            jSONObject.put("serverAuthRequested", this.zak);
            if (!TextUtils.isEmpty(this.zam)) {
                jSONObject.put("serverClientId", this.zam);
            }
            if (!TextUtils.isEmpty(this.zan)) {
                jSONObject.put("hostedDomain", this.zan);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    public static final class a {
        public Set a;
        public boolean b;
        public boolean c;
        public boolean d;
        public String e;
        public Account f;
        public String g;
        public Map h;
        public String i;

        public a() {
            this.a = new HashSet();
            this.h = new HashMap();
        }

        public GoogleSignInOptions a() {
            if (this.a.contains(GoogleSignInOptions.zae)) {
                Set set = this.a;
                Scope scope = GoogleSignInOptions.zad;
                if (set.contains(scope)) {
                    this.a.remove(scope);
                }
            }
            if (this.d && (this.f == null || !this.a.isEmpty())) {
                b();
            }
            return new GoogleSignInOptions(new ArrayList(this.a), this.f, this.d, this.b, this.c, this.e, this.g, this.h, this.i);
        }

        public a b() {
            this.a.add(GoogleSignInOptions.zac);
            return this;
        }

        public a c() {
            this.a.add(GoogleSignInOptions.zaa);
            return this;
        }

        public a d(Scope scope, Scope... scopeArr) {
            this.a.add(scope);
            this.a.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public a e(String str) {
            this.i = str;
            return this;
        }

        public a(GoogleSignInOptions googleSignInOptions) {
            this.a = new HashSet();
            this.h = new HashMap();
            wd8.l(googleSignInOptions);
            this.a = new HashSet(googleSignInOptions.zah);
            this.b = googleSignInOptions.zak;
            this.c = googleSignInOptions.zal;
            this.d = googleSignInOptions.zaj;
            this.e = googleSignInOptions.zam;
            this.f = googleSignInOptions.zai;
            this.g = googleSignInOptions.zan;
            this.h = GoogleSignInOptions.zam(googleSignInOptions.zao);
            this.i = googleSignInOptions.zap;
        }
    }

    public GoogleSignInOptions(int i, ArrayList arrayList, @Nullable Account account, boolean z, boolean z2, boolean z3, @Nullable String str, @Nullable String str2, ArrayList arrayList2, @Nullable String str3) {
        this(i, arrayList, account, z, z2, z3, str, str2, zam(arrayList2), str3);
    }

    private GoogleSignInOptions(int i, ArrayList arrayList, @Nullable Account account, boolean z, boolean z2, boolean z3, @Nullable String str, @Nullable String str2, Map map, @Nullable String str3) {
        this.zaf = i;
        this.zah = arrayList;
        this.zai = account;
        this.zaj = z;
        this.zak = z2;
        this.zal = z3;
        this.zam = str;
        this.zan = str2;
        this.zao = new ArrayList(map.values());
        this.zaq = map;
        this.zap = str3;
    }
}
