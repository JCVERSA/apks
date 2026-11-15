package com.transsion.xuanniao.account.auth.view;

import android.app.ActionBar;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.hisavana.common.tracking.TrackingKey;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.dbdata.beans.sniff.SniffSoucreBean;
import com.transsion.gslb.GslbSdk;
import com.transsion.livecaption.constant.ICode;
import com.transsion.palmsdk.PalmAuthParam;
import com.transsion.palmsdk.data.PalmAuthRequest;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.auth.data.AuthTokenRes;
import com.transsion.xuanniao.account.comm.mvpbase.BaseActivity;
import com.transsion.xuanniao.account.comm.widget.RoundImageView;
import com.transsion.xuanniao.account.login.view.LoginActivity;
import com.transsion.xuanniao.account.model.data.AccountRes;
import com.transsion.xuanniao.account.model.data.Config;
import defpackage.ao7;
import defpackage.aw7;
import defpackage.dk7;
import defpackage.dp7;
import defpackage.fm7;
import defpackage.gm7;
import defpackage.hk7;
import defpackage.jr7;
import defpackage.ok7;
import defpackage.pk7;
import defpackage.wj;
import defpackage.xm7;
import defpackage.xo7;
import defpackage.zm7;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONArray;
import org.json.JSONObject;

public class PalmAuthActivity2 extends BaseActivity implements fm7 {
    public static final int i = 0;
    public dk7 e;
    public PalmAuthRequest f;
    public pk7 g;
    public boolean h = false;

    public class a implements Callback {
        public final PalmAuthParam b;

        public a(PalmAuthParam palmAuthParam) {
            this.b = palmAuthParam;
        }

        @Override
        public void onFailure(Call call, IOException iOException) {
            Log.d("com.palm.id.log", Log.getStackTraceString(iOException));
            PalmAuthActivity2.this.c0(40104, iOException.getMessage());
            Bundle bundle = new Bundle();
            ok7.a(PalmAuthActivity2.this.f, bundle, "appid", "version", "2.0.1.03");
            bundle.putString("ti_s_result", "failure");
            new wj("sdk_auth_result", 7710).c(bundle, null).b();
        }

        /* JADX WARN: Code duplicated, block: B:41:0x0184 A[Catch: Exception -> 0x0042, TryCatch #1 {Exception -> 0x0042, blocks: (B:3:0x0009, B:5:0x002d, B:8:0x0045, B:11:0x005f, B:14:0x0067, B:16:0x0079, B:18:0x0081, B:20:0x0087, B:22:0x008f, B:24:0x0099, B:33:0x011c, B:32:0x0115, B:35:0x0157, B:42:0x0189, B:36:0x0163, B:38:0x0172, B:40:0x0178, B:41:0x0184, B:25:0x009e, B:27:0x00a8, B:30:0x00f4), top: B:48:0x0009, inners: #0 }] */
        @Override
        public void onResponse(Call call, Response response) {
            try {
                int iCode = response.code();
                String strString = response.body().string();
                Log.d("com.palm.id.log", "onResponse code = " + iCode);
                if (iCode != 200) {
                    Log.d("com.palm.id.log", "onResponse body = " + strString);
                }
                JSONObject jSONObject = new JSONObject(strString);
                int iOptInt = jSONObject.optInt("errorCode", 0);
                if (iOptInt <= 0 && jSONObject.optInt(TrackingKey.CODE) <= 0) {
                    if (!TextUtils.equals(jSONObject.getString(ICode.CALL.CALL_KEY_STATE), this.b.getState())) {
                        PalmAuthActivity2.this.c0(40104, "state data error");
                        return;
                    }
                    if (jSONObject.has(TrackingKey.CODE)) {
                        if (this.b.isReqToken()) {
                            PalmAuthActivity2.B0(PalmAuthActivity2.this, jSONObject.getString(TrackingKey.CODE));
                            return;
                        }
                        Bundle bundle = new Bundle();
                        try {
                            AccountRes accountResJ = ao7.a.a.j(PalmAuthActivity2.this);
                            if (accountResJ != null) {
                                bundle.putString("user_info", new JSONObject().put("nickName", accountResJ.nickname).put("userName", accountResJ.username).put("avatarUrl", accountResJ.avatarUrl).toString());
                                bundle.putString("linked_id", String.valueOf(accountResJ.xuanniaoId.hashCode()));
                                bundle.putString("linked_pkg", PalmAuthActivity2.this.getPackageName());
                                bundle.putString("linked_bd", jr7.e());
                            }
                            bundle.putString(SniffSoucreBean.JSON_KEY_TOKEN_INFO, new JSONObject().put(SaveAccountLinkingTokenRequest.TOKEN_TYPE_AUTH_CODE, jSONObject.getString(TrackingKey.CODE)).put("open_id", jSONObject.optString("open_id")).toString());
                        } catch (Exception e) {
                            Log.d("com.palm.id.log", Log.getStackTraceString(e));
                        }
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("appid", PalmAuthActivity2.this.f.getAuthParam().getAppid());
                        bundle2.putString("version", "2.0.1.03");
                        bundle2.putString("ti_s_result", "success");
                        new wj("sdk_auth_result", 7710).c(bundle2, null).b();
                        PalmAuthActivity2.this.f.setResult(bundle);
                        PalmAuthActivity2.this.finish();
                        return;
                    }
                    return;
                }
                if (iOptInt > 0) {
                    PalmAuthActivity2.this.c0(iOptInt, jSONObject.optString("error_description"));
                } else {
                    iOptInt = jSONObject.optInt(TrackingKey.CODE);
                    String strOptString = jSONObject.optString("message");
                    if (iOptInt == 40055) {
                        PalmAuthActivity2 palmAuthActivity2 = PalmAuthActivity2.this;
                        if (palmAuthActivity2.h) {
                            PalmAuthActivity2.this.c0(iOptInt, strOptString);
                        } else {
                            palmAuthActivity2.h = true;
                            PalmAuthActivity2 palmAuthActivity3 = PalmAuthActivity2.this;
                            palmAuthActivity3.e.b(palmAuthActivity3);
                        }
                    } else {
                        PalmAuthActivity2.this.c0(iOptInt, strOptString);
                    }
                }
                Bundle bundle3 = new Bundle();
                bundle3.putString("appid", PalmAuthActivity2.this.f.getAuthParam().getAppid());
                bundle3.putString("version", "2.0.1.03");
                bundle3.putString("ti_s_result", "failure");
                bundle3.putInt("errcode", iOptInt);
                new wj("sdk_auth_result", 7710).c(bundle3, null).b();
            } catch (Exception e2) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e2));
                PalmAuthActivity2.this.c0(40104, e2.getMessage());
            }
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            Bundle bundle = new Bundle();
            ok7.a(PalmAuthActivity2.this.f, bundle, "appid", "version", "2.0.1.03");
            bundle.putString(AuthInfo.Component.CODE_BUTTON, "allow");
            new wj("sdk_auth_cl", 7710).c(bundle, null).b();
            PalmAuthActivity2 palmAuthActivity2 = PalmAuthActivity2.this;
            palmAuthActivity2.C0(palmAuthActivity2.g.a(), true);
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View view) {
            Bundle bundle = new Bundle();
            ok7.a(PalmAuthActivity2.this.f, bundle, "appid", "version", "2.0.1.03");
            bundle.putString(AuthInfo.Component.CODE_BUTTON, "reject");
            new wj("sdk_auth_cl", 7710).c(bundle, null).b();
            PalmAuthActivity2.this.f.onCancel();
            PalmAuthActivity2.this.finish();
        }
    }

    public static class d extends BaseAdapter {
        public final LayoutInflater b;
        public final List c;

        public class a implements CompoundButton.OnCheckedChangeListener {
            public final pk7.a b;

            public a(d dVar, pk7.a aVar) {
                this.b = aVar;
            }

            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.b.d = z;
            }
        }

        public static class b {
            public TextView a;
            public CheckBox b;
        }

        public d(Context context, List list) {
            this.b = LayoutInflater.from(context);
            this.c = list;
        }

        @Override
        public int getCount() {
            List list = this.c;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override
        public Object getItem(int i) {
            return this.c.get(i);
        }

        @Override
        public long getItemId(int i) {
            return i;
        }

        @Override
        public View getView(int i, View view, ViewGroup viewGroup) {
            b bVar;
            if (view == null) {
                view = this.b.inflate(R.layout.xn_item_scope, viewGroup, false);
                bVar = new b();
                bVar.a = (TextView) view.findViewById(R.id.tvTitle);
                bVar.b = (CheckBox) view.findViewById(R.id.cbChecked);
                view.setTag(bVar);
            } else {
                bVar = (b) view.getTag();
            }
            pk7.a aVar = (pk7.a) this.c.get(i);
            bVar.a.setText(aVar.a);
            bVar.b.setEnabled(!aVar.c);
            bVar.b.setChecked(aVar.c || aVar.d);
            bVar.b.setOnCheckedChangeListener(new a(this, aVar));
            return view;
        }
    }

    public static void B0(PalmAuthActivity2 palmAuthActivity2, String str) {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = (ConnectivityManager) palmAuthActivity2.getApplicationContext().getSystemService("connectivity");
        if (connectivityManager != null) {
            try {
                Network activeNetwork = connectivityManager.getActiveNetwork();
                if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null && (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3))) {
                    Map<String, Object> map = palmAuthActivity2.f.getAuthParam().toMap();
                    map.put(TrackingKey.CODE, str);
                    map.put("grant_type", "authorization_code");
                    try {
                        palmAuthActivity2.e.c(palmAuthActivity2, map, new zm7(palmAuthActivity2, palmAuthActivity2, AuthTokenRes.class, str));
                        return;
                    } catch (Exception e) {
                        palmAuthActivity2.c0(40104, e.getMessage());
                        Bundle bundle = new Bundle();
                        ok7.a(palmAuthActivity2.f, bundle, "appid", "version", "2.0.1.03");
                        bundle.putString("ti_s_result", "failure");
                        bundle.putInt("errcode", 40104);
                        xm7.a("sdk_auth_result", 7710, bundle, null);
                        return;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        palmAuthActivity2.c0(40103, "network unavailable");
    }

    public final void C0(Map map, boolean z) {
        NetworkCapabilities networkCapabilities;
        ConnectivityManager connectivityManager = (ConnectivityManager) getApplicationContext().getSystemService("connectivity");
        if (connectivityManager != null) {
            try {
                Network activeNetwork = connectivityManager.getActiveNetwork();
                if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null && (networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3))) {
                    if (map == null || map.isEmpty()) {
                        this.f.onCancel();
                        finish();
                        return;
                    }
                    HashMap map2 = new HashMap();
                    StringBuilder sbA = xo7.a("Bearer ");
                    ao7 ao7Var = ao7.a.a;
                    ao7Var.n(this);
                    Config configF = ao7Var.f();
                    sbA.append(configF != null ? configF.token : "");
                    map2.put(RtspHeaders.AUTHORIZATION, sbA.toString());
                    Resources resources = getResources();
                    map2.put(DataTypes.OBJ_LANGUAGE, resources != null ? resources.getString(R.string.xn_language) : "");
                    PalmAuthParam authParam = this.f.getAuthParam();
                    map2.put("AppSign", authParam.getAppSign());
                    map2.put("AppPackage", authParam.getPkgName());
                    HashMap map3 = new HashMap(map);
                    map3.put("user_oauth_approval", Boolean.TRUE);
                    map3.put("authorization_request_id", this.g.a);
                    if (z) {
                        u0(getString(R.string.xn_loading_login));
                    }
                    dk7 dk7Var = this.e;
                    a aVar = new a(authParam);
                    dk7Var.getClass();
                    String domain = GslbSdk.getDomain(dp7.a("/oauth/authorize_confirm"), true);
                    Log.d("com.palm.id.log", "url = " + domain);
                    Request.Builder builderUrl = new Request.Builder().url(domain);
                    if (map2.size() > 0) {
                        for (Map.Entry entry : map2.entrySet()) {
                            if (!TextUtils.isEmpty((CharSequence) entry.getKey()) && !TextUtils.isEmpty((CharSequence) entry.getValue())) {
                                builderUrl.addHeader((String) entry.getKey(), (String) entry.getValue());
                            }
                        }
                    }
                    FormBody.Builder builder = new FormBody.Builder();
                    if (map3.size() > 0) {
                        for (Map.Entry entry2 : map3.entrySet()) {
                            builder.add((String) entry2.getKey(), entry2.getValue().toString());
                        }
                    }
                    builderUrl.post(builder.build());
                    dk7Var.b.newCall(builderUrl.build()).enqueue(aVar);
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        c0(40103, "network unavailable");
    }

    public final RequestOptions E0() {
        RequestOptions requestOptions = new RequestOptions();
        int i2 = R.drawable.xn_portrait_default;
        return requestOptions.placeholder(i2).fallback(i2).error(i2);
    }

    public void F0() {
        ((ListView) findViewById(R.id.listView)).setAdapter((ListAdapter) new d(this, this.g.b));
        findViewById(R.id.btn_agree).setOnClickListener(new b());
        findViewById(R.id.btn_reject).setOnClickListener(new c());
    }

    @Override
    public void I() {
        C0(this.g.a(), false);
    }

    @Override
    public Context J() {
        return this;
    }

    @Override
    public void P() {
        Intent intent = new Intent(this, (Class<?>) LoginActivity.class);
        intent.putExtra("isFinish", true);
        intent.putExtra("source", this.f.getAuthParam().getPkgName());
        intent.putExtra("auth_request", this.f.getAuthRequestId());
        startActivity(intent);
        finish();
    }

    @Override
    public void c0(int i2, String str) {
        PalmAuthRequest palmAuthRequest = this.f;
        if (palmAuthRequest != null) {
            palmAuthRequest.setException(i2, str);
        }
        finish();
    }

    @Override
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        PalmAuthRequest palmAuthRequest = this.f;
        if (palmAuthRequest != null) {
            palmAuthRequest.onCancel();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String string = bundle != null ? bundle.getString("auth_request") : null;
        if (string == null) {
            string = getIntent().getStringExtra("auth_request");
        }
        PalmAuthRequest palmAuthRequestB = aw7.c(this).b(string);
        this.f = palmAuthRequestB;
        if (palmAuthRequestB == null) {
            finish();
            return;
        }
        dk7 dk7Var = new dk7();
        this.e = dk7Var;
        dk7Var.a = this;
        if (getApplicationContext().getSharedPreferences("AccountPrefs", 0).getBoolean("is_logged_in", false)) {
            setContentView(R.layout.xn_activity_palm_auth2);
            ActionBar actionBar = getActionBar();
            actionBar.setDisplayOptions(16, 26);
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setCustomView(R.layout.xn_action_bar);
            ((TextView) actionBar.getCustomView().findViewById(R.id.title)).setText(R.string.sdk_text_actionbar);
            actionBar.getCustomView().findViewById(R.id.questionImage).setVisibility(8);
            AccountRes accountResJ = ao7.a.a.j(this);
            if (accountResJ != null) {
                RoundImageView roundImageView = (RoundImageView) findViewById(R.id.portrait);
                if (getFilesDir() != null) {
                    hk7 hk7Var = hk7.a.a;
                    Bitmap bitmapA = hk7Var.a(this, accountResJ.avatarUrl);
                    if (bitmapA == null) {
                        hk7Var.d(this, accountResJ.avatarUrl, new gm7(this, accountResJ, roundImageView));
                    } else {
                        roundImageView.setImageBitmap(bitmapA);
                    }
                } else {
                    Glide.with(getApplicationContext()).load(accountResJ.avatarUrl).apply((BaseRequestOptions<?>) E0()).into(roundImageView);
                }
                TextView textView = (TextView) findViewById(R.id.nickName);
                if (TextUtils.isEmpty(accountResJ.nickname)) {
                    textView.setText(accountResJ.username);
                } else {
                    textView.setText(accountResJ.nickname);
                }
            }
            String pkgName = this.f.getAuthParam().getPkgName();
            PackageManager packageManager = getPackageManager();
            try {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(pkgName, 128);
                CharSequence applicationLabel = packageManager.getApplicationLabel(applicationInfo);
                ((TextView) findViewById(R.id.tvAppName)).setText(getString(R.string.sdk_text_auth_tips, applicationLabel));
                ((ImageView) findViewById(R.id.ivAppIcon)).setImageDrawable(packageManager.getApplicationIcon(applicationInfo));
                ((TextView) findViewById(R.id.tvDeclare)).setText(jr7.d(getString(R.string.sdk_text_declare, applicationLabel)));
            } catch (Exception e) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e));
            }
            String stringExtra = getIntent().getStringExtra("scopes");
            if (TextUtils.isEmpty(stringExtra)) {
                finish();
            } else {
                try {
                    JSONObject jSONObject = new JSONObject(stringExtra);
                    JSONArray jSONArray = jSONObject.getJSONArray("scopes");
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        arrayList.add(new pk7.a(jSONArray.getJSONObject(i2)));
                    }
                    this.g = new pk7(jSONObject.getString("authorization_request_id"), arrayList);
                    F0();
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        } else {
            Intent intent = new Intent(this, (Class<?>) LoginActivity.class);
            intent.putExtra("isFinish", true);
            intent.putExtra("source", this.f.getAuthParam().getPkgName());
            intent.putExtra("auth_request", this.f.getAuthRequestId());
            startActivity(intent);
            finish();
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("appid", this.f.getAuthParam().getAppid());
        bundle2.putString("version", "2.0.1.03");
        xm7.a("sdk_auth_show", 7710, bundle2, null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        dk7 dk7Var = this.e;
        if (dk7Var != null) {
            dk7Var.a = null;
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            PalmAuthRequest palmAuthRequest = this.f;
            if (palmAuthRequest != null) {
                palmAuthRequest.onCancel();
            }
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PalmAuthRequest palmAuthRequest = this.f;
        if (palmAuthRequest != null) {
            bundle.putString("auth_request", palmAuthRequest.getAuthRequestId());
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        A0();
    }
}
