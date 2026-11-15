package org.proninyaroslav.libretorrent.core.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.media.RingtoneManager;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.mgtv.downloader.p2p.utils.ImgoP2pConstants;
import com.transsion.bt_download.R;
import defpackage.d5;
import defpackage.r14;
import defpackage.t14;
import defpackage.w14;
import io.reactivex.BackpressureStrategy;
import io.reactivex.disposables.a;
import org.proninyaroslav.libretorrent.core.settings.SettingsRepositoryImpl;
import org.proninyaroslav.libretorrent.core.system.FileSystemFacade;
import org.proninyaroslav.libretorrent.core.system.SystemFacadeHelper;
import org.proninyaroslav.libretorrent.core.utils.Utils;

public class SettingsRepositoryImpl implements SettingsRepository {
    public Context a;
    public SharedPreferences b;
    public FileSystemFacade c;

    public static class Default {
        public static final String a = RingtoneManager.getDefaultUri(2).toString();
        public static final int b = Utils.b();
        public static final String c = null;
        public static final int d = SessionSettings.S.value();
        public static final boolean e = SessionSettings.T;

        private Default() {
        }

        public static String a(Context context) {
            return "file://" + SystemFacadeHelper.a(context).e();
        }

        public static int b(Context context) {
            return Integer.parseInt(context.getString(R.string.pref_enc_mode_prefer_value));
        }

        public static String c(Context context) {
            return "file://" + SystemFacadeHelper.a(context).e();
        }

        public static String d(Context context) {
            return "file://" + SystemFacadeHelper.a(context).e();
        }

        public static String e(Context context) {
            return "file://" + SystemFacadeHelper.a(context).e();
        }
    }

    public SettingsRepositoryImpl(Context context) {
        this.a = context;
        this.c = SystemFacadeHelper.a(context);
        this.b = PreferenceManager.getDefaultSharedPreferences(context);
    }

    public static void i0(t14 t14Var, SharedPreferences sharedPreferences, String str) {
        if (t14Var.isCancelled()) {
            return;
        }
        t14Var.onNext(str);
    }

    public void lambda$observeSettingsChanged$1(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) throws Exception {
        this.b.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override
    public boolean A() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_enable_ip_filtering), false);
    }

    @Override
    public int B() {
        return this.b.getInt(this.a.getString(R.string.pref_key_port_range_second), 57010);
    }

    @Override
    public String C() {
        return this.b.getString(this.a.getString(R.string.pref_key_proxy_address), "");
    }

    @Override
    public boolean D() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_log_dht_filter), true);
    }

    @Override
    public boolean E() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_enc_out_connections), true);
    }

    @Override
    public boolean F() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_proxy_requires_auth), false);
    }

    @Override
    public int G() {
        return this.b.getInt(this.a.getString(R.string.pref_key_port_range_first), 37000);
    }

    @Override
    public boolean H() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_use_random_port), true);
    }

    @Override
    public int I() {
        return this.b.getInt(this.a.getString(R.string.pref_key_max_active_torrents), 6);
    }

    @Override
    public String J() {
        return this.c.l(this.b.getString(this.a.getString(R.string.pref_key_dir_to_watch), Default.a(this.a)));
    }

    @Override
    public boolean K() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_cpu_do_not_sleep), false);
    }

    @Override
    public int L() {
        return this.b.getInt(this.a.getString(R.string.pref_key_max_log_size), 10000);
    }

    @Override
    public boolean M() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_anonymous_mode), false);
    }

    @Override
    public boolean N() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_watch_dir), false);
    }

    @Override
    public boolean O() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_enable_natpmp), true);
    }

    @Override
    public boolean P() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_log_portmap_filter), true);
    }

    @Override
    public boolean Q() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_shutdown_downloads_complete), false);
    }

    @Override
    public int R() {
        return this.b.getInt(this.a.getString(R.string.pref_key_max_upload_speed), 0);
    }

    @Override
    public void S(boolean z) {
        this.b.edit().putBoolean(this.a.getString(R.string.pref_key_apply_proxy), z).apply();
    }

    @Override
    public int T() {
        return this.b.getInt(this.a.getString(R.string.pref_key_max_download_speed), 0);
    }

    @Override
    public String U() {
        return this.c.l(this.b.getString(this.a.getString(R.string.pref_key_save_torrents_in), Default.e(this.a)));
    }

    @Override
    public String V() {
        return this.c.l(this.b.getString(this.a.getString(R.string.pref_key_ip_filtering_file), Default.c));
    }

    @Override
    public boolean W() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_auto_manage), false);
    }

    @Override
    public int X() {
        return this.b.getInt(this.a.getString(R.string.pref_key_max_connections), 200);
    }

    @Override
    public r14 Y() {
        return r14.b(new w14() {
            @Override
            public final void subscribe(t14 t14Var) {
                this.a.j0(t14Var);
            }
        }, BackpressureStrategy.LATEST);
    }

    @Override
    public boolean Z() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_enable_logging), Default.e);
    }

    @Override
    public int a() {
        return this.b.getInt(this.a.getString(R.string.pref_key_enc_mode), Default.b(this.a));
    }

    @Override
    public boolean a0() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_save_torrent_files), false);
    }

    @Override
    public String b() {
        return this.c.l(this.b.getString(this.a.getString(R.string.pref_key_save_torrent_files_in), Default.d(this.a)));
    }

    @Override
    public String b0() {
        return this.b.getString(this.a.getString(R.string.pref_key_default_trackers_list), "");
    }

    @Override
    public int c() {
        return this.b.getInt(this.a.getString(R.string.pref_key_proxy_type), Default.d);
    }

    @Override
    public int c0() {
        return this.b.getInt(this.a.getString(R.string.pref_key_max_uploads_per_torrent), 4);
    }

    @Override
    public boolean d() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_enable_dht), true);
    }

    @Override
    public SessionSettings d0() {
        SessionSettings sessionSettings = new SessionSettings();
        sessionSettings.m = R();
        sessionSettings.f = X();
        sessionSettings.g = o();
        sessionSettings.h = c0();
        sessionSettings.a = l();
        sessionSettings.b = e0();
        sessionSettings.i = I();
        sessionSettings.j = G();
        sessionSettings.k = B();
        sessionSettings.n = d();
        sessionSettings.o = e();
        sessionSettings.p = r();
        sessionSettings.q = z();
        sessionSettings.r = O();
        sessionSettings.s = w();
        sessionSettings.t = E();
        sessionSettings.u = SessionSettings.EncryptMode.fromValue(a());
        sessionSettings.v = W();
        sessionSettings.E = M();
        sessionSettings.F = t();
        sessionSettings.N = H();
        String[] strArrSplit = b0().split("\n");
        if (strArrSplit.length == 1 && TextUtils.isEmpty(strArrSplit[0])) {
            sessionSettings.O = new String[0];
        } else {
            sessionSettings.O = strArrSplit;
        }
        sessionSettings.P = q();
        sessionSettings.Q = k0();
        sessionSettings.x = SessionSettings.ProxyType.fromValue(c());
        sessionSettings.y = C();
        sessionSettings.z = v();
        sessionSettings.A = i();
        sessionSettings.B = F();
        sessionSettings.C = g();
        sessionSettings.D = y();
        sessionSettings.G = Z();
        sessionSettings.H = L();
        sessionSettings.I = h();
        sessionSettings.J = D();
        sessionSettings.K = x();
        sessionSettings.L = P();
        sessionSettings.M = j();
        return sessionSettings;
    }

    @Override
    public boolean e() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_enable_lsd), true);
    }

    @Override
    public int e0() {
        return this.b.getInt(this.a.getString(R.string.pref_key_max_active_uploads), 4);
    }

    @Override
    public String f() {
        return this.b.getString(this.a.getString(R.string.pref_key_streaming_hostname), ImgoP2pConstants.LOCAL_HOST);
    }

    @Override
    public String g() {
        return this.b.getString(this.a.getString(R.string.pref_key_proxy_login), "");
    }

    @Override
    public boolean h() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_log_session_filter), false);
    }

    @Override
    public boolean i() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_proxy_peers_too), true);
    }

    @Override
    public boolean j() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_log_torrent_filter), true);
    }

    public final void j0(final t14 t14Var) {
        final SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() {
            @Override
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                SettingsRepositoryImpl.i0(t14Var, sharedPreferences, str);
            }
        };
        if (t14Var.isCancelled()) {
            return;
        }
        this.b.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
        t14Var.setDisposable(a.c(new d5() {
            @Override
            public final void run() throws Exception {
                this.a.lambda$observeSettingsChanged$1(onSharedPreferenceChangeListener);
            }
        }));
    }

    @Override
    public boolean k() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_streaming_enable), true);
    }

    public boolean k0() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_posix_disk_io), false);
    }

    @Override
    public int l() {
        return this.b.getInt(this.a.getString(R.string.pref_key_max_active_downloads), 4);
    }

    @Override
    public boolean m() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_watch_dir_delete_file), false);
    }

    @Override
    public String n() {
        return this.c.l(this.b.getString(this.a.getString(R.string.pref_key_move_after_download_in), Default.c(this.a)));
    }

    @Override
    public int o() {
        return this.b.getInt(this.a.getString(R.string.pref_key_max_connections_per_torrent), 40);
    }

    @Override
    public int p() {
        return this.b.getInt(this.a.getString(R.string.pref_key_streaming_port), 8800);
    }

    @Override
    public boolean q() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_validate_https_trackers), true);
    }

    @Override
    public boolean r() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_enable_utp), true);
    }

    @Override
    public boolean s() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_move_after_download), false);
    }

    @Override
    public boolean t() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_seeding_outgoing_connections), true);
    }

    @Override
    public boolean u() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_apply_proxy), false);
    }

    @Override
    public int v() {
        return this.b.getInt(this.a.getString(R.string.pref_key_proxy_port), 8080);
    }

    @Override
    public boolean w() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_enc_in_connections), true);
    }

    @Override
    public boolean x() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_log_peer_filter), true);
    }

    @Override
    public String y() {
        return this.b.getString(this.a.getString(R.string.pref_key_proxy_password), "");
    }

    @Override
    public boolean z() {
        return this.b.getBoolean(this.a.getString(R.string.pref_key_enable_upnp), true);
    }
}
