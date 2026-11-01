package app.fast.ssh;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Vibrator;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.core.app.ActivityCompat;
import androidx.core.content.FileProvider;
import androidx.core.text.HtmlCompat;
import androidx.fragment.app.Fragment;
import app.fast.ssh.adapter.MethodAdapter;
import app.fast.ssh.adapter.ServerAdapter;
import app.fast.ssh.core.VpnConnection;
import app.fast.ssh.core.VpnConnectionHelper;
import app.fast.ssh.core.VpnProfile;
import app.fast.ssh.core.VpnStatus;
import app.fast.ssh.core.connection.LoadBalancer;
import app.fast.ssh.core.connection.util.StreamReader;
import app.fast.ssh.dialog.PayloadGen;
import app.fast.ssh.dialog.RenewAccessDialog;
import app.fast.ssh.util.AESEncryption;
import app.fast.ssh.util.ApkInfoExtractor;
import app.fast.ssh.util.DBHelper;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.switchmaterial.SwitchMaterial;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class HomeFragment extends Fragment implements PayloadGen.GeneratorListener, VpnStatus.ByteCountListener, VpnStatus.VpnStateListener, VpnStatus.VpnMessageListener, RewardedAdSyncController.Ui, BillingManager.StateListener {
    private static final int EXPORT_CONFIG = 1014;
    private static final int FILE_READ_REQUEST_CODE = 1011;
    private static final int FILE_WRITE_REQUEST_CODE = 1012;
    public static TimerConf GlobalTimerConf = null;
    private static final int IMPORT_CONFIG = 1013;
    public static long LAST_ACCESS_TOPUP_MILLIS;
    public static long LAST_MILLIS;
    public static long LAST_SESSION_MILLIS;
    public static long SHOW_AD_MS;
    private static boolean countDownStarted;
    private static CountDownTimer countDownTimer;
    private static WeakReference<TextView> timerTextRef;
    private String Adams;
    AlertDialog addTimeDialog2;
    private AdView bannerAd;
    private LinearLayout bannerContainer;
    Button btnSubscribe;
    Button btnWatchAd;
    private Button buttonConnect;
    private TextView byteRx;
    private TextView byteTx;
    private CheckBox checkPreserveSni;
    private CheckBox checkRealmHost;
    private CheckBox checkUseTcpPayload;
    private InterstitialAd connectedInterstitial;
    private SwitchMaterial customSwitch;
    private LinearLayout customsView;
    private MaterialTextView descText;
    private LinearLayout descView;
    private InterstitialAd disConnectedInterstitial;
    private StringBuilder glassBind;
    private TextInputEditText hostText;
    private LinearLayout hostView;
    private SharedPreferences mSharedPrefs;
    private MethodAdapter methodAdapter;
    private MethodAdapter methodAdapter_Lite;
    List<MethodAdapter.SpinnerItem> methodItems;
    List<MethodAdapter.SpinnerItem> methodItems_Lite;
    private AppCompatSpinner methodSelect;
    private TextView newsBar;
    private TextInputEditText nsText;
    private LinearLayout nsView;
    private TextInputEditText payloadText;
    private LinearLayout payloadView;
    private AppCompatSpinner portSelect;
    private RequestQueue requestQueue;
    private RewardedAdSyncController rewardedAdSyncController;
    private ServerAdapter serverAdapter;
    List<ServerAdapter.SpinnerItem> serverItems;
    private AppCompatSpinner serverSelect;
    private TextInputEditText sniText;
    private LinearLayout sniView;
    private Button timerButton;
    private LinearLayout timerLayout;
    private TextView timerText;
    private int tunNablic;
    private InterstitialAd updateSuccessInterstitial;
    private VpnConnectionHelper vpnConnectionHelper;
    private AlertDialog waitDialog;
    private CountDownTimer watchAd_Cooldown;
    private static final String KEY_CUSTOM_SNI = ProtectedFastSSH.s("⺻");
    private static final String JOIN_TELEGRAM = ProtectedFastSSH.s("⺼");
    private static final String KEY_CUSTOM_RESOLVER = ProtectedFastSSH.s("⺽");
    private static final String KEY_LOCATION_INDEX = ProtectedFastSSH.s("⺾");
    private static String deviceId = ProtectedFastSSH.s("⺿");
    private static final String DNS_PRIMARY_HOST = ProtectedFastSSH.s("⻀");
    private static final String KEY_CUSTOM_PAYLOAD = ProtectedFastSSH.s("⻁");
    private static final String KEY_USE_TCP_PAYLOAD = ProtectedFastSSH.s("⻂");
    private static final String WHATS_NEW = ProtectedFastSSH.s("⻃");
    private static final String KEY_CUSTOM_HOST = ProtectedFastSSH.s("⻄");
    private static final String KEY_IMPORT_BLOB = ProtectedFastSSH.s("⻅");
    private static final String KEY_REALM_HOST = ProtectedFastSSH.s("⻆");
    private static final String KEY_USE_REALM_HOST = ProtectedFastSSH.s("⻇");
    private static final String KEY_PORT_INDEX = ProtectedFastSSH.s("⻈");
    private static final String KEY_METHOD_INDEX = ProtectedFastSSH.s("⻉");
    private static final String KEY_CUSTOM_FEATURE = ProtectedFastSSH.s("⻊");
    private static final String KEY_METHOD_INDEX_LITE = ProtectedFastSSH.s("⻋");
    private static final String CUSTOM_SWITCH = ProtectedFastSSH.s("⻌");
    private static final String KEY_PRESERVE_SNI = ProtectedFastSSH.s("⻍");
    public static final Object MS_LOCK = new Object();
    private long waitDialogRequestId = 0;
    private boolean purchaseInFlight = false;
    private final AdapterView.OnItemSelectedListener serverChange = new AnonymousClass1();
    private final AdapterView.OnItemSelectedListener methodChange = new AnonymousClass2();
    private final AdapterView.OnItemSelectedListener methodChangeLite = new AnonymousClass3();
    private final RenewAccessDialog renewAccessDialog = null;

    class AnonymousClass1 implements AdapterView.OnItemSelectedListener {

        class ViewOnClickListenerC00141 implements View.OnClickListener {
            ViewOnClickListenerC00141() {
            }

            @Override
            public void onClick(View view) {
                HomeFragment.this.getContext().startActivity(new Intent(HomeFragment.this.getActivity(), (Class<?>) SettingsActivity.class));
            }
        }

        AnonymousClass1() {
        }

        @Override
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            HomeFragment.access$000(HomeFragment.this).setPosition(i);
            SharedPreferences sharedPreferencesAccess$100 = HomeFragment.access$100(HomeFragment.this);
            String strS = ProtectedFastSSH.s("⺓");
            if (sharedPreferencesAccess$100.getInt(strS, 0) != i) {
                HomeFragment.access$100(HomeFragment.this).edit().putInt(strS, i).apply();
            }
            if (view != null) {
                ImageView imageView = (ImageView) view.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09021c);
                imageView.setVisibility(0);
                imageView.setImageResource(com.hatunnel.plus.R.drawable.l_res_0x7f0800d1);
            }
            String str = HomeFragment.this.serverItems.get(i).node;
            if (str.contains(ProtectedFastSSH.s("⺔")) || str.contains(ProtectedFastSSH.s("⺕")) || str.contains(ProtectedFastSSH.s("⺖")) || str.contains(ProtectedFastSSH.s("⺗"))) {
                SharedPreferences sharedPreferencesAccess$101 = HomeFragment.access$100(HomeFragment.this);
                String strS2 = ProtectedFastSSH.s("⺘");
                String strS3 = ProtectedFastSSH.s("⺙");
                if (sharedPreferencesAccess$101.getString(strS2, strS3).equals(strS3)) {
                    Snackbar duration = Snackbar.make(HomeFragment.access$200(HomeFragment.this), ProtectedFastSSH.s("\u2e9a"), -2).setAction(ProtectedFastSSH.s("⺛"), new ViewOnClickListenerC00141()).setDuration(5000);
                    ((TextView) duration.getView().findViewById(com.hatunnel.plus.R.id.l_res_0x7f090232)).setMaxLines(5);
                    duration.show();
                }
            }
        }

        @Override
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    class AnonymousClass10 implements DialogInterface.OnClickListener {
        AnonymousClass10() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            SharedPreferences sharedPreferencesAccess$100 = HomeFragment.access$100(HomeFragment.this);
            String strS = ProtectedFastSSH.s("⺇");
            int i2 = sharedPreferencesAccess$100.getInt(strS, 0);
            SharedPreferences.Editor editorEdit = HomeFragment.access$100(HomeFragment.this).edit();
            editorEdit.putInt(strS, i2 + 1);
            editorEdit.apply();
        }
    }

    class AnonymousClass11 implements AdapterView.OnItemSelectedListener {
        AnonymousClass11() {
        }

        @Override
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SharedPreferences sharedPreferencesAccess$100 = HomeFragment.access$100(HomeFragment.this);
            String strS = ProtectedFastSSH.s("⺈");
            if (sharedPreferencesAccess$100.getInt(strS, 0) != i) {
                HomeFragment.access$100(HomeFragment.this).edit().putInt(strS, i).apply();
            }
        }

        @Override
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    class AnonymousClass12 implements Runnable {
        final long val$in;
        final long val$out;

        AnonymousClass12(long j, long j2) {
            this.val$out = j;
            this.val$in = j2;
        }

        @Override
        public void run() {
            HomeFragment.access$1500(HomeFragment.this).setText(HomeFragment.access$1400(this.val$out));
            HomeFragment.access$1600(HomeFragment.this).setText(HomeFragment.access$1400(this.val$in));
        }
    }

    class AnonymousClass13 implements Runnable {
        final VpnStatus.VpnState val$state;
        final Subscription val$subscription;

        AnonymousClass13(VpnStatus.VpnState vpnState, Subscription subscription) {
            this.val$state = vpnState;
            this.val$subscription = subscription;
        }

        @Override
        public void run() {
            int i = AnonymousClass28.$SwitchMap$app$fast$ssh$core$VpnStatus$VpnState[this.val$state.ordinal()];
            if (i == 1) {
                HomeFragment.access$1700(HomeFragment.this).setText(ProtectedFastSSH.s("⺋"));
                HomeFragment.access$1800(HomeFragment.this, true);
                return;
            }
            if (i != 2) {
                if (i != 3) {
                    return;
                }
                HomeFragment.access$1700(HomeFragment.this).setText(ProtectedFastSSH.s("⺉"));
                HomeFragment.access$1800(HomeFragment.this, false);
                if (HomeFragment.access$2200(HomeFragment.this) == null || !this.val$subscription.shouldRequestAds()) {
                    HomeFragment.access$2300(HomeFragment.this);
                    if (HomeFragment.access$1900(HomeFragment.this) != null && this.val$subscription.shouldRequestAds()) {
                        HomeFragment homeFragment = HomeFragment.this;
                        HomeFragment.access$2000(homeFragment, HomeFragment.access$1900(homeFragment), HomeFragment.this.getActivity());
                    }
                } else {
                    HomeFragment homeFragment2 = HomeFragment.this;
                    HomeFragment.access$2000(homeFragment2, HomeFragment.access$2200(homeFragment2), HomeFragment.this.getActivity());
                }
                if (HomeFragment.access$1900(HomeFragment.this) == null) {
                    HomeFragment.access$2100(HomeFragment.this);
                }
                if (HomeFragment.access$2500() != null) {
                    HomeFragment.access$2500().cancel();
                    HomeFragment.access$2602(false);
                }
                HomeFragment.access$2700(HomeFragment.this).setVisibility(8);
                return;
            }
            HomeFragment.access$1700(HomeFragment.this).setText(ProtectedFastSSH.s("⺊"));
            HomeFragment.access$1800(HomeFragment.this, true);
            if (HomeFragment.access$1900(HomeFragment.this) == null || !this.val$subscription.shouldRequestAds()) {
                HomeFragment.access$2100(HomeFragment.this);
                if (HomeFragment.access$2200(HomeFragment.this) != null && this.val$subscription.shouldRequestAds()) {
                    HomeFragment homeFragment3 = HomeFragment.this;
                    HomeFragment.access$2000(homeFragment3, HomeFragment.access$2200(homeFragment3), HomeFragment.this.getActivity());
                }
            } else {
                HomeFragment homeFragment4 = HomeFragment.this;
                HomeFragment.access$2000(homeFragment4, HomeFragment.access$1900(homeFragment4), HomeFragment.this.getActivity());
            }
            if (HomeFragment.access$2200(HomeFragment.this) == null) {
                HomeFragment.access$2300(HomeFragment.this);
            }
            if (HomeFragment.GlobalTimerConf != null && HomeFragment.GlobalTimerConf.button_text != null) {
                HomeFragment.access$2400(HomeFragment.this).setText(HomeFragment.GlobalTimerConf.button_text);
            }
            if (!this.val$subscription.shouldRequestAds() || HomeFragment.access$2500() == null || !HomeFragment.access$2600() || HomeFragment.access$2700(HomeFragment.this).getVisibility() == 0) {
                return;
            }
            HomeFragment.access$2700(HomeFragment.this).setVisibility(0);
            HomeFragment.access$2802(new WeakReference(HomeFragment.access$2900(HomeFragment.this)));
        }
    }

    class AnonymousClass14 implements Runnable {
        final String val$msg;

        AnonymousClass14(String str) {
            this.val$msg = str;
        }

        @Override
        public void run() {
            Toast.makeText(HomeFragment.this.getContext(), this.val$msg, 1).show();
        }
    }

    class AnonymousClass15 implements Runnable {
        final long val$millis;
        final Subscription val$subscription;

        class AnonymousClass1 extends CountDownTimer {
            AnonymousClass1(long j, long j2) {
                super(j, j2);
            }

            @Override
            public void onFinish() {
            }

            @Override
            public void onTick(long j) {
                TextView textView;
                Object[] objArr = {Long.valueOf(TimeUnit.MILLISECONDS.toHours(j))};
                String strS = ProtectedFastSSH.s("⺌");
                String str = String.format(strS, objArr);
                String str2 = String.format(strS, Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j) - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(j))));
                String str3 = String.format(strS, Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(j))));
                if (HomeFragment.access$2800() != null && (textView = (TextView) HomeFragment.access$2800().get()) != null) {
                    textView.setText(String.format(ProtectedFastSSH.s("⺍"), str, str2, str3));
                }
                if (HomeFragment.this.getActivity() == null || HomeFragment.this.getActivity().isFinishing() || j > 180000 || HomeFragment.this.addTimeDialog2.isShowing() || HomeFragment.access$3000(HomeFragment.this).hasValidCachedAd()) {
                    return;
                }
                HomeFragment.access$3000(HomeFragment.this).prefetch(HomeFragment.this.getActivity(), HomeFragment.this);
            }
        }

        AnonymousClass15(long j, Subscription subscription) {
            this.val$millis = j;
            this.val$subscription = subscription;
        }

        @Override
        public void run() {
            if (HomeFragment.access$2500() != null) {
                HomeFragment.access$2500().cancel();
            }
            HomeFragment.access$2602(false);
            HomeFragment.access$2502(new AnonymousClass1(this.val$millis, 1000L));
            HomeFragment.access$2500().start();
            HomeFragment.access$2602(true);
            if (this.val$subscription.shouldRequestAds()) {
                HomeFragment.access$2700(HomeFragment.this).setVisibility(0);
            }
        }
    }

    class AnonymousClass16 implements Runnable {
        AnonymousClass16() {
        }

        @Override
        public void run() {
        }
    }

    class AnonymousClass17 implements View.OnClickListener {
        AnonymousClass17() {
        }

        @Override
        public void onClick(View view) {
            HomeFragment.this.importConfig();
        }
    }

    class AnonymousClass18 implements DialogInterface.OnClickListener {
        final String val$conf;
        final JSONObject val$protextras;
        final ExportActivity.TextQuery val$query;

        AnonymousClass18(ExportActivity.TextQuery textQuery, JSONObject jSONObject, String str) {
            this.val$query = textQuery;
            this.val$protextras = jSONObject;
            this.val$conf = str;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                if (!AESEncryption.md5(this.val$query.getResult()).matches(this.val$protextras.getString(ProtectedFastSSH.s("⺎")))) {
                    Toast.makeText(HomeFragment.this.getContext(), ProtectedFastSSH.s("⺒"), 1).show();
                    return;
                }
                if (!this.val$protextras.optBoolean(ProtectedFastSSH.s("⺏"))) {
                    HomeFragment.access$3200(HomeFragment.this, this.val$conf);
                } else if (AESEncryption.md5(HomeFragment.access$3100(HomeFragment.this)).matches(this.val$protextras.getString(ProtectedFastSSH.s("⺐")))) {
                    HomeFragment.access$3200(HomeFragment.this, this.val$conf);
                } else {
                    Toast.makeText(HomeFragment.this.getContext(), ProtectedFastSSH.s("⺑"), 1).show();
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    class AnonymousClass19 implements DialogInterface.OnClickListener {
        AnonymousClass19() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    class AnonymousClass2 implements AdapterView.OnItemSelectedListener {
        AnonymousClass2() {
        }

        /* JADX WARN: Code duplicated, block: B:20:0x00ff  */
        /* JADX WARN: Code duplicated, block: B:22:0x012e  */
        /* JADX WARN: Code duplicated, block: B:26:0x017e A[Catch: Exception -> 0x0195, TRY_LEAVE, TryCatch #0 {Exception -> 0x0195, blocks: (B:24:0x0147, B:26:0x017e), top: B:32:0x0147 }] */
        /* JADX WARN: Code duplicated, block: B:32:0x0147 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            String string;
            String strOptString;
            HomeFragment.access$300(HomeFragment.this).setPosition(i);
            SharedPreferences sharedPreferencesAccess$100 = HomeFragment.access$100(HomeFragment.this);
            String strS = ProtectedFastSSH.s("⺤");
            if (sharedPreferencesAccess$100.getInt(strS, 0) != i) {
                HomeFragment.access$100(HomeFragment.this).edit().putInt(strS, i).apply();
            }
            if (i == 0) {
                HomeFragment.access$400(HomeFragment.this).setVisibility(8);
                HomeFragment.access$500(HomeFragment.this).setVisibility(8);
                HomeFragment.access$600(HomeFragment.this).setVisibility(8);
                HomeFragment.access$700(HomeFragment.this).setVisibility(8);
                HomeFragment.access$800(HomeFragment.this).setVisibility(8);
                if (i == 5) {
                    SharedPreferences sharedPreferencesAccess$101 = HomeFragment.access$100(HomeFragment.this);
                    String strS2 = ProtectedFastSSH.s("⺥");
                    string = sharedPreferencesAccess$101.getString(strS2, "");
                    if (!string.equals("")) {
                        try {
                            JSONObject jSONObject = new JSONObject(AESEncryption.decrypt(string, ProtectedFastSSH.s("⺦")));
                            strOptString = jSONObject.optString(ProtectedFastSSH.s("⺧"), jSONObject.optString(ProtectedFastSSH.s("⺨"), jSONObject.optString(ProtectedFastSSH.s("⺩"), "")));
                            if (!strOptString.equals("")) {
                                HomeFragment.access$900(HomeFragment.this).setText(HtmlCompat.fromHtml(strOptString, 0));
                                HomeFragment.access$800(HomeFragment.this).setVisibility(0);
                            }
                        } catch (Exception unused) {
                            HomeFragment.access$100(HomeFragment.this).edit().remove(strS2).apply();
                            HomeFragment.access$200(HomeFragment.this).setSelection(0, true);
                        }
                    }
                }
            } else if (i == 1) {
                HomeFragment.access$500(HomeFragment.this).setVisibility(8);
                HomeFragment.access$600(HomeFragment.this).setVisibility(8);
                HomeFragment.access$700(HomeFragment.this).setVisibility(0);
                HomeFragment.access$400(HomeFragment.this).setVisibility(8);
                HomeFragment.access$800(HomeFragment.this).setVisibility(8);
            } else if (i == 2) {
                HomeFragment.access$600(HomeFragment.this).setVisibility(0);
                HomeFragment.access$500(HomeFragment.this).setVisibility(8);
                HomeFragment.access$700(HomeFragment.this).setVisibility(8);
                HomeFragment.access$400(HomeFragment.this).setVisibility(8);
                HomeFragment.access$800(HomeFragment.this).setVisibility(8);
            } else if (i == 3) {
                HomeFragment.access$500(HomeFragment.this).setVisibility(0);
                HomeFragment.access$700(HomeFragment.this).setVisibility(8);
                HomeFragment.access$600(HomeFragment.this).setVisibility(8);
                HomeFragment.access$400(HomeFragment.this).setVisibility(8);
                HomeFragment.access$800(HomeFragment.this).setVisibility(8);
            } else if (i == 4) {
                HomeFragment.access$500(HomeFragment.this).setVisibility(8);
                HomeFragment.access$700(HomeFragment.this).setVisibility(8);
                HomeFragment.access$600(HomeFragment.this).setVisibility(8);
                HomeFragment.access$400(HomeFragment.this).setVisibility(0);
                HomeFragment.access$800(HomeFragment.this).setVisibility(8);
            } else if (i == 5) {
                HomeFragment.access$400(HomeFragment.this).setVisibility(8);
                HomeFragment.access$500(HomeFragment.this).setVisibility(8);
                HomeFragment.access$600(HomeFragment.this).setVisibility(8);
                HomeFragment.access$700(HomeFragment.this).setVisibility(8);
                HomeFragment.access$800(HomeFragment.this).setVisibility(8);
                if (i == 5) {
                    SharedPreferences sharedPreferencesAccess$102 = HomeFragment.access$100(HomeFragment.this);
                    String strS3 = ProtectedFastSSH.s("⺥");
                    string = sharedPreferencesAccess$102.getString(strS3, "");
                    if (!string.equals("")) {
                        JSONObject jSONObject2 = new JSONObject(AESEncryption.decrypt(string, ProtectedFastSSH.s("⺦")));
                        strOptString = jSONObject2.optString(ProtectedFastSSH.s("⺧"), jSONObject2.optString(ProtectedFastSSH.s("⺨"), jSONObject2.optString(ProtectedFastSSH.s("⺩"), "")));
                        if (!strOptString.equals("")) {
                            HomeFragment.access$900(HomeFragment.this).setText(HtmlCompat.fromHtml(strOptString, 0));
                            HomeFragment.access$800(HomeFragment.this).setVisibility(0);
                        }
                    }
                }
            }
            if (view != null) {
                ImageView imageView = (ImageView) view.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09021c);
                imageView.setVisibility(0);
                imageView.setImageResource(com.hatunnel.plus.R.drawable.l_res_0x7f0800d1);
            }
        }

        @Override
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    class AnonymousClass20 implements DialogInterface.OnCancelListener {
        AnonymousClass20() {
        }

        @Override
        public void onCancel(DialogInterface dialogInterface) {
        }
    }

    class AnonymousClass21 implements DialogInterface.OnClickListener {
        final String val$version;

        AnonymousClass21(String str) {
            this.val$version = str;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            HomeFragment.access$100(HomeFragment.this).edit().putString(ProtectedFastSSH.s("⺜"), this.val$version).apply();
        }
    }

    class AnonymousClass22 implements DialogInterface.OnClickListener {
        AnonymousClass22() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            HomeFragment.access$100(HomeFragment.this).edit().putInt(ProtectedFastSSH.s("⺝"), 1).apply();
            HomeFragment.access$3300(HomeFragment.this, ProtectedFastSSH.s("⺞"));
        }
    }

    class AnonymousClass23 implements DialogInterface.OnClickListener {
        AnonymousClass23() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    class AnonymousClass24 extends InterstitialAdLoadCallback {

        class AnonymousClass1 extends FullScreenContentCallback {
            AnonymousClass1() {
            }

            @Override
            public void onAdClicked() {
            }

            @Override
            public void onAdDismissedFullScreenContent() {
                HomeFragment.access$1902(HomeFragment.this, null);
            }

            @Override
            public void onAdFailedToShowFullScreenContent(AdError adError) {
                HomeFragment.access$1902(HomeFragment.this, null);
            }

            @Override
            public void onAdImpression() {
            }

            @Override
            public void onAdShowedFullScreenContent() {
            }
        }

        AnonymousClass24() {
        }

        @Override
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            HomeFragment.access$1902(HomeFragment.this, null);
        }

        public void onAdLoaded2(InterstitialAd interstitialAd) {
            HomeFragment.access$1902(HomeFragment.this, interstitialAd);
            HomeFragment.access$1900(HomeFragment.this).setFullScreenContentCallback(new AnonymousClass1());
        }

        @Override
        public void onAdLoaded(InterstitialAd interstitialAd) {
            onAdLoaded2(interstitialAd);
        }
    }

    class AnonymousClass25 extends InterstitialAdLoadCallback {

        class AnonymousClass1 extends FullScreenContentCallback {
            AnonymousClass1() {
            }

            @Override
            public void onAdClicked() {
            }

            @Override
            public void onAdDismissedFullScreenContent() {
                HomeFragment.access$2202(HomeFragment.this, null);
            }

            @Override
            public void onAdFailedToShowFullScreenContent(AdError adError) {
                HomeFragment.access$2202(HomeFragment.this, null);
            }

            @Override
            public void onAdImpression() {
            }

            @Override
            public void onAdShowedFullScreenContent() {
            }
        }

        AnonymousClass25() {
        }

        @Override
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            HomeFragment.access$2202(HomeFragment.this, null);
        }

        public void onAdLoaded2(InterstitialAd interstitialAd) {
            HomeFragment.access$2202(HomeFragment.this, interstitialAd);
            HomeFragment.access$2200(HomeFragment.this).setFullScreenContentCallback(new AnonymousClass1());
        }

        @Override
        public void onAdLoaded(InterstitialAd interstitialAd) {
            onAdLoaded2(interstitialAd);
        }
    }

    class AnonymousClass26 implements Response.Listener<JSONObject> {

        class AnonymousClass1 implements View.OnClickListener {
            final String val$click_target;

            AnonymousClass1(String str) {
                this.val$click_target = str;
            }

            @Override
            public void onClick(View view) {
                Intent intent = new Intent(ProtectedFastSSH.s("⺟"));
                intent.setData(Uri.parse(this.val$click_target));
                HomeFragment.this.startActivity(intent);
            }
        }

        AnonymousClass26() {
        }

        @Override
        public void onResponse(JSONObject jSONObject) {
            onResponse2(jSONObject);
        }

        public void onResponse2(JSONObject jSONObject) {
            try {
                String string = jSONObject.getString(ProtectedFastSSH.s("⺠"));
                String string2 = jSONObject.getString(ProtectedFastSSH.s("⺡"));
                HomeFragment.access$3400(HomeFragment.this).setText(string);
                HomeFragment.access$3400(HomeFragment.this).setSelected(true);
                HomeFragment.access$3400(HomeFragment.this).setVisibility(0);
                HomeFragment.access$3400(HomeFragment.this).setOnClickListener(new AnonymousClass1(string2));
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    class AnonymousClass27 implements Response.ErrorListener {
        AnonymousClass27() {
        }

        @Override
        public void onErrorResponse(VolleyError volleyError) {
            String str = ProtectedFastSSH.s("⺢") + volleyError.toString();
            ProtectedFastSSH.s("⺣");
        }
    }

    static class AnonymousClass28 {
        static final int[] $SwitchMap$app$fast$ssh$BillingManager$State;
        static final int[] $SwitchMap$app$fast$ssh$core$VpnStatus$VpnState;

        static {
            int[] iArr = new int[BillingManager.State.values().length];
            $SwitchMap$app$fast$ssh$BillingManager$State = iArr;
            try {
                iArr[BillingManager.State.SUBSCRIBED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$app$fast$ssh$BillingManager$State[BillingManager.State.NOT_SUBSCRIBED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$app$fast$ssh$BillingManager$State[BillingManager.State.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$app$fast$ssh$BillingManager$State[BillingManager.State.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[VpnStatus.VpnState.values().length];
            $SwitchMap$app$fast$ssh$core$VpnStatus$VpnState = iArr2;
            try {
                iArr2[VpnStatus.VpnState.CONNECTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$app$fast$ssh$core$VpnStatus$VpnState[VpnStatus.VpnState.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$app$fast$ssh$core$VpnStatus$VpnState[VpnStatus.VpnState.DISCONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    class AnonymousClass3 implements AdapterView.OnItemSelectedListener {
        AnonymousClass3() {
        }

        @Override
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            HomeFragment.access$1000(HomeFragment.this).setPosition(i);
            SharedPreferences sharedPreferencesAccess$100 = HomeFragment.access$100(HomeFragment.this);
            String strS = ProtectedFastSSH.s("⺪");
            if (sharedPreferencesAccess$100.getInt(strS, 0) != i) {
                HomeFragment.access$100(HomeFragment.this).edit().putInt(strS, i).apply();
            }
            if (view != null) {
                ImageView imageView = (ImageView) view.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09021c);
                imageView.setVisibility(0);
                imageView.setImageResource(com.hatunnel.plus.R.drawable.l_res_0x7f0800d1);
            }
        }

        @Override
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    class AnonymousClass4 implements View.OnClickListener {
        AnonymousClass4() {
        }

        @Override
        public void onClick(View view) {
            BillingManager billingManager = ((FastSSH) HomeFragment.this.getContext().getApplicationContext()).getBillingManager();
            billingManager.setStateListener(HomeFragment.this);
            HomeFragment.access$1102(HomeFragment.this, true);
            billingManager.purchase(HomeFragment.this.getActivity());
        }
    }

    class AnonymousClass5 implements DialogInterface.OnShowListener {
        final TextView val$message_text;

        class AnonymousClass1 extends CountDownTimer {
            AnonymousClass1(long j, long j2) {
                super(j, j2);
            }

            @Override
            public void onFinish() {
                HomeFragment.this.btnWatchAd.setEnabled(true);
                HomeFragment.this.btnWatchAd.setText(HomeFragment.GlobalTimerConf.button_text);
            }

            @Override
            public void onTick(long j) {
                Locale locale = Locale.getDefault();
                Object[] objArr = {Long.valueOf(TimeUnit.MILLISECONDS.toHours(j))};
                String strS = ProtectedFastSSH.s("⺫");
                HomeFragment.this.btnWatchAd.setText(String.format(ProtectedFastSSH.s("⺬"), String.format(locale, strS, objArr), String.format(Locale.getDefault(), strS, Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j) - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(j)))), String.format(Locale.getDefault(), strS, Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(j))))));
            }
        }

        AnonymousClass5(TextView textView) {
            this.val$message_text = textView;
        }

        @Override
        public void onShow(DialogInterface dialogInterface) {
            this.val$message_text.setText(String.format(Locale.getDefault(), ProtectedFastSSH.s("⺭"), HomeFragment.GlobalTimerConf.message_text, Integer.valueOf(HomeFragment.GlobalTimerConf.max_hours)));
            HomeFragment.this.btnWatchAd.setEnabled(false);
            HomeFragment.this.btnWatchAd.setText(HomeFragment.GlobalTimerConf.button_text);
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = ((long) (HomeFragment.GlobalTimerConf.cool_min * 60)) * 1000;
            long j2 = ((long) HomeFragment.GlobalTimerConf.per_hours) * 3600000;
            if (HomeFragment.LAST_ACCESS_TOPUP_MILLIS == 0 || HomeFragment.LAST_SESSION_MILLIS < j2) {
                HomeFragment.this.btnWatchAd.setEnabled(true);
                return;
            }
            long j3 = jCurrentTimeMillis - HomeFragment.LAST_ACCESS_TOPUP_MILLIS;
            if (j3 >= j) {
                HomeFragment.this.btnWatchAd.setEnabled(true);
                return;
            }
            long j4 = j - j3;
            if (HomeFragment.access$1200(HomeFragment.this) != null) {
                HomeFragment.access$1200(HomeFragment.this).cancel();
            }
            HomeFragment.access$1202(HomeFragment.this, new AnonymousClass1(j4, 1000L));
            HomeFragment.access$1200(HomeFragment.this).start();
        }
    }

    class AnonymousClass6 implements CompoundButton.OnCheckedChangeListener {

        class AnonymousClass1 implements DialogInterface.OnClickListener {
            final TextView val$tv;

            AnonymousClass1(TextView textView) {
                this.val$tv = textView;
            }

            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                TextView textView = this.val$tv;
                String strS = ProtectedFastSSH.s("⺮");
                textView.setText(strS);
                HomeFragment.access$100(HomeFragment.this).edit().putString(ProtectedFastSSH.s("⺯"), strS).apply();
            }
        }

        class AnonymousClass2 implements DialogInterface.OnClickListener {
            final TextView val$tv;

            AnonymousClass2(TextView textView) {
                this.val$tv = textView;
            }

            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                HomeFragment.access$100(HomeFragment.this).edit().putString(ProtectedFastSSH.s("⺰"), this.val$tv.getText().toString()).apply();
            }
        }

        AnonymousClass6() {
        }

        @Override
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            HomeFragment.access$100(HomeFragment.this).edit().putBoolean(ProtectedFastSSH.s("⺱"), z).apply();
            LoadBalancer.reset();
            if (z) {
                AlertDialog.Builder builder = new AlertDialog.Builder(HomeFragment.this.getContext());
                View viewInflate = LayoutInflater.from(HomeFragment.this.getContext()).inflate(com.hatunnel.plus.R.layout.l_res_0x7f0c002a, (ViewGroup) null);
                builder.setView(viewInflate);
                builder.setTitle(ProtectedFastSSH.s("⺲"));
                TextView textView = (TextView) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090274);
                textView.setText(HomeFragment.access$100(HomeFragment.this).getString(ProtectedFastSSH.s("⺳"), ProtectedFastSSH.s("⺴")));
                builder.setNeutralButton(ProtectedFastSSH.s("⺵"), new AnonymousClass1(textView));
                builder.setNegativeButton(ProtectedFastSSH.s("⺶"), (DialogInterface.OnClickListener) null);
                builder.setPositiveButton(ProtectedFastSSH.s("⺷"), new AnonymousClass2(textView));
                builder.create().show();
            }
        }
    }

    class AnonymousClass7 implements CompoundButton.OnCheckedChangeListener {
        AnonymousClass7() {
        }

        @Override
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            HomeFragment.access$100(HomeFragment.this).edit().putBoolean(ProtectedFastSSH.s("⺸"), z).apply();
        }
    }

    class AnonymousClass8 implements CompoundButton.OnCheckedChangeListener {
        AnonymousClass8() {
        }

        @Override
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            HomeFragment.access$100(HomeFragment.this).edit().putBoolean(ProtectedFastSSH.s("⺹"), z).apply();
        }
    }

    class AnonymousClass9 implements View.OnClickListener {

        class AnonymousClass1 implements Runnable {
            final String val$dns;

            AnonymousClass1(String str) {
                this.val$dns = str;
            }

            @Override
            public void run() {
                HomeFragment.access$1300(HomeFragment.this).setText(this.val$dns);
            }
        }

        class AnonymousClass2 implements Runnable {
            AnonymousClass2() {
            }

            @Override
            public void run() {
                HomeFragment.access$1300(HomeFragment.this).setText(ProtectedFastSSH.s("⺺"));
            }
        }

        AnonymousClass9() {
        }

        void m472lambda$onClick$0$appfastsshHomeFragment$9() {
            try {
                ((Activity) HomeFragment.this.getContext()).runOnUiThread(new AnonymousClass1(VpnConnection.getFirstActiveNetworkDnsResolver(HomeFragment.this.getContext())));
            } catch (Exception e) {
                VpnStatus.logDebug(e.getMessage());
                ((Activity) HomeFragment.this.getContext()).runOnUiThread(new AnonymousClass2());
            }
        }

        @Override
        public void onClick(View view) {
            new Thread(new HomeFragment$9$$ExternalSyntheticLambda0(this)).start();
        }
    }

    static ServerAdapter access$000(HomeFragment homeFragment) {
        return homeFragment.serverAdapter;
    }

    static SharedPreferences access$100(HomeFragment homeFragment) {
        return homeFragment.mSharedPrefs;
    }

    static MethodAdapter access$1000(HomeFragment homeFragment) {
        return homeFragment.methodAdapter_Lite;
    }

    static boolean access$1102(HomeFragment homeFragment, boolean z) {
        homeFragment.purchaseInFlight = z;
        return z;
    }

    static CountDownTimer access$1200(HomeFragment homeFragment) {
        return homeFragment.watchAd_Cooldown;
    }

    static CountDownTimer access$1202(HomeFragment homeFragment, CountDownTimer countDownTimer2) {
        homeFragment.watchAd_Cooldown = countDownTimer2;
        return countDownTimer2;
    }

    static TextInputEditText access$1300(HomeFragment homeFragment) {
        return homeFragment.nsText;
    }

    static String access$1400(long j) {
        return toRoundedUnit(j);
    }

    static TextView access$1500(HomeFragment homeFragment) {
        return homeFragment.byteTx;
    }

    static TextView access$1600(HomeFragment homeFragment) {
        return homeFragment.byteRx;
    }

    static Button access$1700(HomeFragment homeFragment) {
        return homeFragment.buttonConnect;
    }

    static void access$1800(HomeFragment homeFragment, boolean z) {
        homeFragment.setConnected(z);
    }

    static InterstitialAd access$1900(HomeFragment homeFragment) {
        return homeFragment.connectedInterstitial;
    }

    static InterstitialAd access$1902(HomeFragment homeFragment, InterstitialAd interstitialAd) {
        homeFragment.connectedInterstitial = interstitialAd;
        return interstitialAd;
    }

    static AppCompatSpinner access$200(HomeFragment homeFragment) {
        return homeFragment.methodSelect;
    }

    static void access$2000(HomeFragment homeFragment, InterstitialAd interstitialAd, Activity activity) {
        homeFragment.showAd(interstitialAd, activity);
    }

    static void access$2100(HomeFragment homeFragment) {
        homeFragment.loadConnectedInterstitialAd();
    }

    static InterstitialAd access$2200(HomeFragment homeFragment) {
        return homeFragment.disConnectedInterstitial;
    }

    static InterstitialAd access$2202(HomeFragment homeFragment, InterstitialAd interstitialAd) {
        homeFragment.disConnectedInterstitial = interstitialAd;
        return interstitialAd;
    }

    static void access$2300(HomeFragment homeFragment) {
        homeFragment.loadDisConnectedInterstitialAd();
    }

    static Button access$2400(HomeFragment homeFragment) {
        return homeFragment.timerButton;
    }

    static CountDownTimer access$2500() {
        return countDownTimer;
    }

    static CountDownTimer access$2502(CountDownTimer countDownTimer2) {
        countDownTimer = countDownTimer2;
        return countDownTimer2;
    }

    static boolean access$2600() {
        return countDownStarted;
    }

    static boolean access$2602(boolean z) {
        countDownStarted = z;
        return z;
    }

    static LinearLayout access$2700(HomeFragment homeFragment) {
        return homeFragment.timerLayout;
    }

    static WeakReference access$2800() {
        return timerTextRef;
    }

    static WeakReference access$2802(WeakReference weakReference) {
        timerTextRef = weakReference;
        return weakReference;
    }

    static TextView access$2900(HomeFragment homeFragment) {
        return homeFragment.timerText;
    }

    static MethodAdapter access$300(HomeFragment homeFragment) {
        return homeFragment.methodAdapter;
    }

    static RewardedAdSyncController access$3000(HomeFragment homeFragment) {
        return homeFragment.rewardedAdSyncController;
    }

    static String access$3100(HomeFragment homeFragment) {
        return homeFragment.deviceId();
    }

    static void access$3200(HomeFragment homeFragment, String str) {
        homeFragment.finishImport(str);
    }

    static void access$3300(HomeFragment homeFragment, String str) {
        homeFragment.openLink(str);
    }

    static TextView access$3400(HomeFragment homeFragment) {
        return homeFragment.newsBar;
    }

    static LinearLayout access$400(HomeFragment homeFragment) {
        return homeFragment.nsView;
    }

    static LinearLayout access$500(HomeFragment homeFragment) {
        return homeFragment.sniView;
    }

    static LinearLayout access$600(HomeFragment homeFragment) {
        return homeFragment.hostView;
    }

    static LinearLayout access$700(HomeFragment homeFragment) {
        return homeFragment.payloadView;
    }

    static LinearLayout access$800(HomeFragment homeFragment) {
        return homeFragment.descView;
    }

    static MaterialTextView access$900(HomeFragment homeFragment) {
        return homeFragment.descText;
    }

    private int appVersionCode() {
        try {
            return getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 0).versionCode;
        } catch (Exception unused) {
            return 0;
        }
    }

    private String appVersionName() {
        try {
            return getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return ProtectedFastSSH.s("⻎");
        }
    }

    private String deviceId() {
        return Settings.Secure.getString(getContext().getContentResolver(), ProtectedFastSSH.s("⻏"));
    }

    private void fetchAndShowTicker() {
        this.requestQueue.add(new JsonObjectRequest(0, ProtectedFastSSH.s("⻐"), null, new AnonymousClass26(), new AnonymousClass27()));
    }

    private void finishImport(String str) {
        this.mSharedPrefs.edit().putString(ProtectedFastSSH.s("⻅"), str).apply();
        this.customSwitch.setChecked(true);
        if (this.methodSelect.getSelectedItemPosition() == 5) {
            this.methodSelect.setSelection(0, true);
        }
        this.methodSelect.setSelection(5, true);
        Toast.makeText(getContext(), ProtectedFastSSH.s("⻑"), 0).show();
    }

    private AdSize getAdSize() {
        Display defaultDisplay = getActivity().getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(getContext(), (int) (displayMetrics.widthPixels / displayMetrics.density));
    }

    public static String getAuid() {
        return deviceId;
    }

    private ArrayAdapter<CharSequence> getPortsAdapter(int i) {
        ArrayAdapter<CharSequence> arrayAdapterCreateFromResource = ArrayAdapter.createFromResource(getContext(), i, android.R.layout.simple_spinner_item);
        arrayAdapterCreateFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        return arrayAdapterCreateFromResource;
    }

    private void initAds() {
        RewardedAdSyncController rewardedAdSyncController = new RewardedAdSyncController(ProtectedFastSSH.s("⻒"));
        this.rewardedAdSyncController = rewardedAdSyncController;
        rewardedAdSyncController.prefetch(getActivity(), this);
    }

    private List<String> initApps(String str) throws Throwable {
        String strS = ProtectedFastSSH.s("⻓");
        try {
            String resource = readResource(ProtectedFastSSH.s("⻔"));
            String resource2 = new DBHelper(getContext()).getResource(DBHelper.Resource.ALLOWED_APPS);
            if (!resource2.matches("") && ApkInfoExtractor.compareVersion(new JSONObject(resource).getString(strS), new JSONObject(resource2).getString(strS)) == -1) {
                resource = resource2;
            }
            JSONArray jSONArray = new JSONObject(resource).getJSONObject(ProtectedFastSSH.s("⻕")).getJSONArray(str);
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(jSONArray.getJSONObject(i).getString(ProtectedFastSSH.s("⻖")));
            }
            return arrayList;
        } catch (Exception unused) {
            return null;
        }
    }

    private void initMethods() {
        try {
            JSONArray jSONArray = new JSONArray(readResource(ProtectedFastSSH.s("⻗")));
            this.methodItems = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                MethodAdapter.SpinnerItem spinnerItem = new MethodAdapter.SpinnerItem();
                spinnerItem.name = jSONObject.getString(ProtectedFastSSH.s("⻘"));
                spinnerItem.description = jSONObject.getString(ProtectedFastSSH.s("⻙"));
                spinnerItem.flag = jSONObject.getString(ProtectedFastSSH.s("⻚"));
                this.methodItems.add(spinnerItem);
            }
            this.methodAdapter = new MethodAdapter(getActivity(), this.methodItems);
        } catch (Exception unused) {
        }
    }

    private void initMethodsLite() throws Throwable {
        String strS = ProtectedFastSSH.s("⻓");
        try {
            String resource = readResource(ProtectedFastSSH.s("⻛"));
            String resource2 = new DBHelper(getContext()).getResource(DBHelper.Resource.METHODS);
            if (!resource2.matches("") && ApkInfoExtractor.compareVersion(new JSONObject(resource).getString(strS), new JSONObject(resource2).getString(strS)) == -1) {
                resource = resource2;
            }
            JSONArray jSONArray = new JSONObject(resource).getJSONArray(ProtectedFastSSH.s("⻕"));
            this.methodItems_Lite = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                MethodAdapter.SpinnerItem spinnerItem = new MethodAdapter.SpinnerItem();
                spinnerItem.name = jSONObject.getString(ProtectedFastSSH.s("⻘"));
                spinnerItem.description = jSONObject.optString(ProtectedFastSSH.s("⻙"), ProtectedFastSSH.s("⻜"));
                spinnerItem.flag = jSONObject.optString(ProtectedFastSSH.s("⻚"), "");
                spinnerItem.conf = jSONObject.getString(ProtectedFastSSH.s("⻝"));
                this.methodItems_Lite.add(spinnerItem);
            }
            this.methodAdapter_Lite = new MethodAdapter(getActivity(), this.methodItems_Lite);
        } catch (Exception unused) {
        }
    }

    private void initServers() throws Throwable {
        String strS = ProtectedFastSSH.s("⻓");
        try {
            String resource = readResource(ProtectedFastSSH.s("⻞"));
            String resource2 = new DBHelper(getContext()).getResource(DBHelper.Resource.SERVERS);
            if (!resource2.matches("") && ApkInfoExtractor.compareVersion(new JSONObject(resource).getString(strS), new JSONObject(resource2).getString(strS)) == -1) {
                resource = resource2;
            }
            JSONArray jSONArray = new JSONObject(resource).getJSONArray(ProtectedFastSSH.s("⻕"));
            this.serverItems = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                ServerAdapter.SpinnerItem spinnerItem = new ServerAdapter.SpinnerItem();
                spinnerItem.name = jSONObject.getString(ProtectedFastSSH.s("⻘"));
                spinnerItem.description = jSONObject.getString(ProtectedFastSSH.s("⻙"));
                spinnerItem.flag = jSONObject.getString(ProtectedFastSSH.s("⻚"));
                spinnerItem.node = jSONObject.getString(ProtectedFastSSH.s("⻟"));
                String strOptString = jSONObject.optString(ProtectedFastSSH.s("⻠"), "");
                if (!strOptString.equals("")) {
                    spinnerItem.apps = initApps(strOptString);
                }
                this.serverItems.add(spinnerItem);
            }
            ServerAdapter serverAdapter = new ServerAdapter(getActivity(), this.serverItems);
            this.serverAdapter = serverAdapter;
            this.serverSelect.setAdapter((SpinnerAdapter) serverAdapter);
            this.serverSelect.setOnItemSelectedListener(this.serverChange);
            try {
                this.serverSelect.setSelection(this.mSharedPrefs.getInt(ProtectedFastSSH.s("⺾"), 0), true);
            } catch (Exception unused) {
                this.serverSelect.setSelection(0, true);
            }
        } catch (Exception unused2) {
        }
    }

    private boolean isStoragePermissionGranted(String str) {
        return Build.VERSION.SDK_INT >= 29 || ActivityCompat.checkSelfPermission(getContext(), str) == 0;
    }

    private void joinTelegram() {
        if (this.mSharedPrefs.getInt(ProtectedFastSSH.s("⺼"), 0) == 1) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setIcon(com.hatunnel.plus.R.mipmap.ic_launcher);
        builder.setTitle(ProtectedFastSSH.s("⻡"));
        builder.setMessage(ProtectedFastSSH.s("⻢"));
        builder.setPositiveButton(ProtectedFastSSH.s("⻣"), new AnonymousClass22());
        builder.setNeutralButton(ProtectedFastSSH.s("⻤"), new AnonymousClass23());
        builder.create().show();
    }

    private void loadConnectedInterstitialAd() {
        Subscription subscription = new Subscription(new PrefsSubscriptionStore(getContext()));
        if (this.connectedInterstitial == null && subscription.shouldRequestAds()) {
            AdRequest adRequestBuild = new AdRequest.Builder().build();
            if (getContext() != null) {
                InterstitialAd.load(getContext(), ProtectedFastSSH.s("⻥"), adRequestBuild, new AnonymousClass24());
            }
        }
    }

    private void loadDisConnectedInterstitialAd() {
        Subscription subscription = new Subscription(new PrefsSubscriptionStore(getContext()));
        if (this.disConnectedInterstitial == null && subscription.shouldRequestAds()) {
            AdRequest adRequestBuild = new AdRequest.Builder().build();
            if (getContext() != null) {
                InterstitialAd.load(getContext(), ProtectedFastSSH.s("⻦"), adRequestBuild, new AnonymousClass25());
            }
        }
    }

    private void openLink(String str) {
        Intent intent = new Intent(ProtectedFastSSH.s("⻧"));
        intent.setData(Uri.parse(str));
        startActivity(intent);
    }

    private void playSound() {
        try {
            RingtoneManager.getRingtone(getContext(), RingtoneManager.getDefaultUri(2)).play();
        } catch (Exception unused) {
        }
    }

    private void playVibrate() {
        try {
            ((Vibrator) getActivity().getSystemService(ProtectedFastSSH.s("⻨"))).vibrate(200L);
        } catch (Exception unused) {
        }
    }

    private AdapterView.OnItemSelectedListener portSelectListener() {
        return new AnonymousClass11();
    }

    private VpnProfile prepareProfile() {
        String strDecrypt;
        String strS = ProtectedFastSSH.s("⻩");
        String strS2 = ProtectedFastSSH.s("⻪");
        String strS3 = ProtectedFastSSH.s("⻫");
        JSONObject jSONObject = new JSONObject();
        ServerAdapter.SpinnerItem spinnerItem = (ServerAdapter.SpinnerItem) this.serverAdapter.getItem(this.serverSelect.getSelectedItemPosition());
        boolean zIsChecked = this.customSwitch.isChecked();
        String strS4 = ProtectedFastSSH.s("⻬");
        String strS5 = ProtectedFastSSH.s("⻭");
        String strS6 = ProtectedFastSSH.s("⻮");
        String strS7 = ProtectedFastSSH.s("⻯");
        if (!zIsChecked) {
            try {
                jSONObject = new JSONObject(((MethodAdapter.SpinnerItem) this.methodAdapter_Lite.getItem(this.methodSelect.getSelectedItemPosition())).conf);
            } catch (Exception unused) {
                VpnStatus.logDebug(strS6);
            }
            try {
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(ProtectedFastSSH.s("⼉"));
                if (jSONObjectOptJSONObject != null) {
                    jSONObject = jSONObjectOptJSONObject;
                }
            } catch (Exception unused2) {
            }
            try {
                jSONObject.put(strS7, jSONObject.optString(strS7, strS5));
            } catch (Exception unused3) {
                VpnStatus.logDebug(strS6);
            }
        } else if (this.methodSelect.getSelectedItemPosition() == 5) {
            try {
                strDecrypt = AESEncryption.decrypt(this.mSharedPrefs.getString(ProtectedFastSSH.s("⻅"), ""), ProtectedFastSSH.s("⻰"));
            } catch (Exception unused4) {
                strDecrypt = "";
            }
            if (strDecrypt.equals("")) {
                Snackbar.make(this.methodSelect, ProtectedFastSSH.s("⻱"), -2).setAction(ProtectedFastSSH.s("⻲"), new AnonymousClass17()).setDuration(8000).show();
                return null;
            }
            try {
                try {
                    try {
                        jSONObject = VpnProfile.unhideParams(new JSONObject(strDecrypt).optJSONObject(ProtectedFastSSH.s("⻳")));
                        jSONObject.put(strS3, new JSONObject(strDecrypt).getJSONObject(strS3));
                    } catch (Exception unused5) {
                    }
                } catch (Exception unused6) {
                    jSONObject = new JSONObject(strDecrypt).optJSONObject(ProtectedFastSSH.s("\u2ef4"));
                    jSONObject.put(strS3, new JSONObject(strDecrypt).getJSONObject(strS3));
                }
            } catch (Exception unused7) {
                jSONObject = new JSONObject(strDecrypt).getJSONObject(ProtectedFastSSH.s("\u2ef5"));
            }
        } else {
            try {
                jSONObject.put(ProtectedFastSSH.s("\u2ef6"), this.methodSelect.getSelectedItemPosition());
                jSONObject.put(ProtectedFastSSH.s("\u2ef7"), Integer.parseInt(((String) this.portSelect.getSelectedItem()).replace(ProtectedFastSSH.s("\u2ef8"), "")));
                jSONObject.put(ProtectedFastSSH.s("\u2ef9"), this.payloadText.getText().toString());
                jSONObject.put(ProtectedFastSSH.s("\u2efa"), this.hostText.getText().toString());
                jSONObject.put(ProtectedFastSSH.s("\u2efb"), this.methodSelect.getSelectedItemPosition() == 0 ? "" : this.sniText.getText().toString());
                jSONObject.put(ProtectedFastSSH.s("\u2efc"), this.methodSelect.getSelectedItemPosition() == 0 ? "" : this.nsText.getText().toString());
                jSONObject.put(ProtectedFastSSH.s("\u2efd"), this.mSharedPrefs.getBoolean(ProtectedFastSSH.s("⻇"), false));
                jSONObject.put(ProtectedFastSSH.s("\u2efe"), this.mSharedPrefs.getBoolean(ProtectedFastSSH.s("⻍"), false));
                jSONObject.put(ProtectedFastSSH.s("\u2eff"), this.mSharedPrefs.getBoolean(ProtectedFastSSH.s("⻂"), false));
                jSONObject.put(ProtectedFastSSH.s("⼀"), this.mSharedPrefs.getString(ProtectedFastSSH.s("⻆"), ProtectedFastSSH.s("⼁")));
                boolean z = this.mSharedPrefs.getBoolean(strS, false);
                jSONObject.put(strS, z);
                if (z) {
                    strS5 = this.mSharedPrefs.getString(strS7, "");
                }
                jSONObject.put(strS7, strS5);
                jSONObject.put(ProtectedFastSSH.s("⼂"), ProtectedFastSSH.s("⼃"));
                boolean z2 = this.mSharedPrefs.getBoolean(ProtectedFastSSH.s("⼄"), false);
                String string = this.mSharedPrefs.getString(ProtectedFastSSH.s("⼅"), "");
                int i = Integer.parseInt(this.mSharedPrefs.getString(ProtectedFastSSH.s("⼆"), strS4));
                if (z2) {
                    jSONObject.put(ProtectedFastSSH.s("⼇"), string);
                    jSONObject.put(ProtectedFastSSH.s("⼈"), i);
                }
            } catch (Exception unused8) {
                VpnStatus.logDebug(strS6);
            }
        }
        try {
            jSONObject.put(ProtectedFastSSH.s("⼊"), spinnerItem.node);
            jSONObject.put(strS2, Integer.parseInt(this.mSharedPrefs.getString(strS2, strS4)));
        } catch (Exception e) {
            VpnStatus.logDebug(e.getMessage());
        }
        VpnProfile vpnProfile = new VpnProfile(jSONObject);
        vpnProfile.mServerName = spinnerItem.name;
        vpnProfile.mSession = getString(com.hatunnel.plus.R.string.app_name);
        vpnProfile.setAllowedApps(spinnerItem.apps);
        return vpnProfile;
    }

    private void processImport(String str) {
        try {
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new FileReader(str));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    processImportString(sb.toString(), getContext());
                    return;
                }
                sb.append(line);
            }
        } catch (Exception unused) {
            Toast.makeText(getContext(), ProtectedFastSSH.s("⼋"), 0).show();
        }
    }

    private String readResource(String str) throws Throwable {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(getActivity().getAssets().open(str)));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                    } catch (IOException unused) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        return sb.toString();
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
                bufferedReader2.close();
            } catch (IOException unused3) {
            }
        } catch (IOException unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
        return sb.toString();
    }

    private void requestNewAdBanner(AdView adView) {
        if (adView != null) {
            adView.loadAd(new AdRequest.Builder().build());
        }
    }

    private void saveEntries() {
        this.mSharedPrefs.edit().putString(ProtectedFastSSH.s("⻁"), this.payloadText.getText().toString()).apply();
        this.mSharedPrefs.edit().putString(ProtectedFastSSH.s("⻄"), this.hostText.getText().toString()).apply();
        this.mSharedPrefs.edit().putString(ProtectedFastSSH.s("⺻"), this.sniText.getText().toString()).apply();
        this.mSharedPrefs.edit().putString(ProtectedFastSSH.s("⺽"), this.nsText.getText().toString()).apply();
    }

    private void setConnected(boolean z) {
        if (this.mSharedPrefs.getBoolean(ProtectedFastSSH.s("⼌"), true)) {
            playSound();
        }
        if (this.mSharedPrefs.getBoolean(ProtectedFastSSH.s("⼍"), true)) {
            playVibrate();
        }
        this.serverSelect.setEnabled(!z);
        this.methodSelect.setEnabled(!z);
        this.portSelect.setEnabled(!z);
        this.payloadText.setEnabled(!z);
        this.hostText.setEnabled(!z);
        this.sniText.setEnabled(!z);
        this.nsText.setEnabled(!z);
        this.customSwitch.setEnabled(!z);
        this.checkRealmHost.setEnabled(!z);
        this.checkPreserveSni.setEnabled(!z);
        this.checkUseTcpPayload.setEnabled(!z);
    }

    private void showAd(InterstitialAd interstitialAd, Activity activity) {
        synchronized (MS_LOCK) {
            if (SHOW_AD_MS == 0 || (System.currentTimeMillis() - SHOW_AD_MS) / 1000 >= 30) {
                SHOW_AD_MS = System.currentTimeMillis();
                interstitialAd.show(activity);
            }
        }
    }

    private void showRewarded(RewardedAd rewardedAd) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ProtectedFastSSH.s("⻟"), VpnStatus.getLastConnectedProfile().primaryNode());
            jSONObject.put(ProtectedFastSSH.s("⼎"), VpnStatus.getLastConnectedProfile().serverHost());
            jSONObject.put(ProtectedFastSSH.s("⼏"), appVersionCode());
        } catch (Exception unused) {
        }
        rewardedAd.setServerSideVerificationOptions(new ServerSideVerificationOptions.Builder().setCustomData(jSONObject.toString()).setUserId(Settings.Secure.getString(getContext().getContentResolver(), ProtectedFastSSH.s("⻏"))).build());
        rewardedAd.show(getActivity(), new HomeFragment$$ExternalSyntheticLambda6(this));
    }

    private void stopAndHideTimer() {
        CountDownTimer countDownTimer2 = countDownTimer;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
        }
        this.timerLayout.setVisibility(8);
    }

    private static String toRoundedUnit(long j) {
        if (j <= 1024) {
            return j + ProtectedFastSSH.s("⼐");
        }
        double d = j;
        int iLog = (int) (Math.log(d) / Math.log(1024.0d));
        return String.format(Locale.getDefault(), ProtectedFastSSH.s("⼒"), Double.valueOf(d / Math.pow(1024.0d, iLog)), ProtectedFastSSH.s("⼑").charAt(iLog - 1) + "");
    }

    private void toggleCustom(boolean z) {
        if (z) {
            this.customsView.setVisibility(0);
            this.portSelect.setAdapter((SpinnerAdapter) getPortsAdapter(com.hatunnel.plus.R.array.l_res_0x7f030003));
            this.portSelect.setOnItemSelectedListener(portSelectListener());
            this.portSelect.setSelection(this.mSharedPrefs.getInt(ProtectedFastSSH.s("⻈"), 0), true);
            this.methodSelect.setAdapter((SpinnerAdapter) this.methodAdapter);
            this.methodSelect.setOnItemSelectedListener(this.methodChange);
            try {
                this.methodSelect.setSelection(this.mSharedPrefs.getInt(ProtectedFastSSH.s("⻉"), 0), true);
                return;
            } catch (Exception unused) {
                this.methodSelect.setSelection(0, true);
                return;
            }
        }
        this.customsView.setVisibility(8);
        this.portSelect.setAdapter((SpinnerAdapter) getPortsAdapter(com.hatunnel.plus.R.array.l_res_0x7f030004));
        this.portSelect.setOnItemSelectedListener(null);
        this.portSelect.setSelection(0, true);
        this.methodSelect.setAdapter((SpinnerAdapter) this.methodAdapter_Lite);
        this.methodSelect.setOnItemSelectedListener(this.methodChangeLite);
        try {
            this.methodSelect.setSelection(this.mSharedPrefs.getInt(ProtectedFastSSH.s("⻋"), 0), true);
        } catch (Exception unused2) {
            this.methodSelect.setSelection(0, true);
        }
    }

    private String userFacing(String str) {
        if (str == null) {
            return ProtectedFastSSH.s("⼓");
        }
        if (str.contains(ProtectedFastSSH.s("⼔")) || str.contains(ProtectedFastSSH.s("⼕"))) {
            return ProtectedFastSSH.s("⼛");
        }
        if (str.contains(ProtectedFastSSH.s("⼖"))) {
            return ProtectedFastSSH.s("⼗");
        }
        return str.contains(ProtectedFastSSH.s("⼘")) ? ProtectedFastSSH.s("⼙") : ProtectedFastSSH.s("⼚");
    }

    private void whatsNew() {
        String strS = ProtectedFastSSH.s("⻬");
        try {
            JSONObject jSONObject = new JSONObject(readResource(ProtectedFastSSH.s("⼜")));
            String string = jSONObject.getString(ProtectedFastSSH.s("⻓"));
            if (string.equals(strS) || ApkInfoExtractor.compareVersion(string, this.mSharedPrefs.getString(ProtectedFastSSH.s("⻃"), strS)) != 1) {
                return;
            }
            String string2 = jSONObject.getString(ProtectedFastSSH.s("⼝"));
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setIcon(com.hatunnel.plus.R.mipmap.ic_launcher);
            builder.setTitle(ProtectedFastSSH.s("⼞"));
            builder.setMessage(string2.replace(ProtectedFastSSH.s("⼟"), appVersionName()));
            builder.setPositiveButton(ProtectedFastSSH.s("⼠"), new AnonymousClass21(string));
            builder.create().show();
        } catch (Exception unused) {
        }
    }

    public VpnConnectionHelper GetVpnConnectionHelper() {
        return this.vpnConnectionHelper;
    }

    @Override
    public void dismissLoading(long j) {
        AlertDialog alertDialog = this.waitDialog;
        if (alertDialog != null && alertDialog.isShowing() && this.waitDialogRequestId == j) {
            this.waitDialog.dismiss();
            this.waitDialog = null;
        }
        RewardedAd rewardedAdTryConsumeCached = this.rewardedAdSyncController.tryConsumeCached();
        if (rewardedAdTryConsumeCached != null) {
            showRewarded(rewardedAdTryConsumeCached);
        }
    }

    public void exportConfig() {
        int selectedItemPosition = this.methodSelect.getSelectedItemPosition();
        if (!this.customSwitch.isChecked()) {
            Toast.makeText(getContext(), ProtectedFastSSH.s("⼡"), 0).show();
            return;
        }
        if (selectedItemPosition == 0 || selectedItemPosition == 5) {
            Toast.makeText(getContext(), ProtectedFastSSH.s("⼣"), 0).show();
            return;
        }
        String strS = ProtectedFastSSH.s("⼢");
        if (!isStoragePermissionGranted(strS)) {
            requestPermissions(new String[]{strS}, 1012);
            return;
        }
        Intent intent = new Intent(getContext(), (Class<?>) ExportActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString(ProtectedFastSSH.s("\u2ef5"), prepareProfile().toString());
        intent.putExtras(bundle);
        startActivityForResult(intent, 1014);
    }

    public void importConfig() {
        if (Build.VERSION.SDK_INT > 29) {
            Intent intent = new Intent(ProtectedFastSSH.s("⼤"));
            intent.addCategory(ProtectedFastSSH.s("⼥"));
            intent.setType(ProtectedFastSSH.s("⼦"));
            startActivityForResult(Intent.createChooser(intent, ProtectedFastSSH.s("⼧")), 1013);
            return;
        }
        String strS = ProtectedFastSSH.s("⼨");
        if (isStoragePermissionGranted(strS)) {
            startActivityForResult(new Intent(getContext(), (Class<?>) ImportActivity.class), 1013);
        } else {
            requestPermissions(new String[]{strS}, 1011);
        }
    }

    @Override
    public boolean isLoadingVisible(long j) {
        AlertDialog alertDialog = this.waitDialog;
        return alertDialog != null && alertDialog.isShowing() && this.waitDialogRequestId == j;
    }

    void m463lambda$onCreate$0$appfastsshHomeFragment(View view) {
        if (new Subscription(new PrefsSubscriptionStore(getContext())).shouldRequestAds()) {
            RewardedAd rewardedAdTryConsumeCached = this.rewardedAdSyncController.tryConsumeCached();
            if (rewardedAdTryConsumeCached != null) {
                showRewarded(rewardedAdTryConsumeCached);
            } else {
                this.rewardedAdSyncController.onUserClick(getActivity(), this);
            }
        }
    }

    boolean m464lambda$onCreate$1$appfastsshHomeFragment(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        this.addTimeDialog2.dismiss();
        return true;
    }

    void m465lambda$onCreateView$2$appfastsshHomeFragment(View view) {
        this.mSharedPrefs.edit().putBoolean(ProtectedFastSSH.s("⻌"), this.customSwitch.isChecked()).apply();
    }

    void m466lambda$onCreateView$3$appfastsshHomeFragment(CompoundButton compoundButton, boolean z) {
        toggleCustom(z);
    }

    void m467lambda$onCreateView$4$appfastsshHomeFragment(View view) {
        this.addTimeDialog2.show();
    }

    void m468lambda$onCreateView$5$appfastsshHomeFragment(View view) {
        if (GlobalTimerConf != null) {
            this.addTimeDialog2.show();
        } else {
            Toast.makeText(getContext(), ProtectedFastSSH.s("⼩"), 0).show();
        }
    }

    void m469lambda$onCreateView$6$appfastsshHomeFragment(View view) {
        saveEntries();
        if (!VpnStatus.isConnected()) {
            this.vpnConnectionHelper.startVpnConnection(prepareProfile());
        } else {
            this.buttonConnect.setText(ProtectedFastSSH.s("⼪"));
            this.vpnConnectionHelper.stopVpnConnection();
        }
    }

    void m470lambda$showLoading$7$appfastsshHomeFragment(long j, DialogInterface dialogInterface) {
        this.rewardedAdSyncController.onDialogCancelled(j);
    }

    void m471lambda$showRewarded$8$appfastsshHomeFragment(RewardItem rewardItem) {
        String str = ProtectedFastSSH.s("⼫") + rewardItem.getAmount() + ProtectedFastSSH.s("⼬") + rewardItem.getType();
        ProtectedFastSSH.s("⼭");
        Toast.makeText(getContext(), ProtectedFastSSH.s("⼮"), 0).show();
        this.addTimeDialog2.dismiss();
    }

    public void onAccessTopUp() {
        LAST_ACCESS_TOPUP_MILLIS = System.currentTimeMillis();
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        Bundle extras;
        if (i != 1013) {
            if (i == 1014 && i2 == -1 && (extras = intent.getExtras()) != null) {
                boolean z = extras.getBoolean(ProtectedFastSSH.s("⼯"), false);
                String strS = ProtectedFastSSH.s("⼰");
                if (z) {
                    Intent intent2 = new Intent(ProtectedFastSSH.s("⼱"));
                    intent2.setType(ProtectedFastSSH.s("⼲"));
                    intent2.putExtra(ProtectedFastSSH.s("⼴"), FileProvider.getUriForFile(getContext(), ProtectedFastSSH.s("⼳"), new File(extras.getString(strS))));
                    intent2.addFlags(1);
                    startActivity(Intent.createChooser(intent2, ProtectedFastSSH.s("⼵")));
                } else {
                    Snackbar.make(getView(), ProtectedFastSSH.s("⼶") + extras.getString(strS), 0).show();
                }
            }
        } else if (i2 == -1) {
            if (Build.VERSION.SDK_INT > 29) {
                try {
                    Uri data = intent.getData();
                    processImportString(StreamReader.readToEnd(ProtectedFastSSH.s("⼷").equals(data.getScheme()) ? getContext().getContentResolver().openInputStream(data) : new FileInputStream(new File(data.getEncodedPath()))), getContext());
                } catch (Exception unused) {
                    Toast.makeText(getContext(), ProtectedFastSSH.s("⼸"), 1).show();
                }
            } else {
                processImport(intent.getStringExtra(ProtectedFastSSH.s("⼹")));
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override
    public void onBillingState(BillingManager.State state, String str) {
        if (!isAdded() || getContext() == null) {
            return;
        }
        int i = AnonymousClass28.$SwitchMap$app$fast$ssh$BillingManager$State[state.ordinal()];
        if (i == 1) {
            if (this.purchaseInFlight) {
                this.purchaseInFlight = false;
                Toast.makeText(getContext(), ProtectedFastSSH.s("⼻"), 0).show();
                if (this.addTimeDialog2.isShowing()) {
                    this.addTimeDialog2.dismiss();
                }
                ((MainActivity) getContext()).hideBannerAd();
                if (VpnStatus.isConnected()) {
                    stopAndHideTimer();
                    return;
                }
                return;
            }
            return;
        }
        if (i == 3) {
            if (this.purchaseInFlight) {
                this.purchaseInFlight = false;
                Toast.makeText(getContext(), userFacing(str), 0).show();
                return;
            }
            return;
        }
        if (i == 4 && this.purchaseInFlight) {
            this.purchaseInFlight = false;
            Toast.makeText(getContext(), ProtectedFastSSH.s("⼺"), 0).show();
        }
    }

    public void onByteCount(long j, long j2) {
        getActivity().runOnUiThread(new AnonymousClass12(j, j2));
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        VpnConnectionHelper vpnConnectionHelper = new VpnConnectionHelper(getContext());
        this.vpnConnectionHelper = vpnConnectionHelper;
        vpnConnectionHelper.bindService(true);
        VpnStatus.addMessageListener(this);
        View viewInflate = getLayoutInflater().inflate(com.hatunnel.plus.R.layout.l_res_0x7f0c0029, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09016e);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(getContext()).setView(viewInflate).create();
        this.addTimeDialog2 = alertDialogCreate;
        if (alertDialogCreate.getWindow() != null) {
            this.addTimeDialog2.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        }
        this.btnWatchAd = (Button) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09007b);
        Button button = (Button) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090080);
        this.btnSubscribe = button;
        button.setOnClickListener(new AnonymousClass4());
        this.btnWatchAd.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda7(this));
        this.addTimeDialog2.setOnKeyListener(new HomeFragment$$ExternalSyntheticLambda8(this));
        this.addTimeDialog2.setOnShowListener(new AnonymousClass5(textView));
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws Throwable {
        String string;
        this.requestQueue = Volley.newRequestQueue(getContext());
        try {
            deviceId = Settings.Secure.getString(getContext().getContentResolver(), ProtectedFastSSH.s("⻏"));
        } catch (Exception unused) {
        }
        View viewInflate = layoutInflater.inflate(com.hatunnel.plus.R.layout.l_res_0x7f0c003e, viewGroup, false);
        this.mSharedPrefs = PreferenceManager.getDefaultSharedPreferences(getContext());
        this.newsBar = (TextView) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901a4);
        this.customsView = (LinearLayout) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f0900b7);
        SwitchMaterial switchMaterial = (SwitchMaterial) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f0900b6);
        this.customSwitch = switchMaterial;
        switchMaterial.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda1(this));
        this.customSwitch.setOnCheckedChangeListener(new HomeFragment$$ExternalSyntheticLambda2(this));
        this.timerLayout = (LinearLayout) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09027e);
        this.timerText = (TextView) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09027f);
        timerTextRef = new WeakReference<>(this.timerText);
        this.timerButton = (Button) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09027d);
        this.timerLayout.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda3(this));
        this.timerButton.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda4(this));
        this.byteTx = (TextView) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090082);
        this.byteRx = (TextView) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090081);
        this.buttonConnect = (Button) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09007e);
        this.bannerContainer = (LinearLayout) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090068);
        this.buttonConnect.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda5(this));
        this.payloadView = (LinearLayout) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901de);
        this.sniView = (LinearLayout) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090235);
        this.hostView = (LinearLayout) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09012b);
        this.nsView = (LinearLayout) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901ae);
        this.descView = (LinearLayout) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f0900c3);
        this.payloadText = (TextInputEditText) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090273);
        this.hostText = (TextInputEditText) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09026e);
        this.sniText = (TextInputEditText) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090275);
        this.nsText = (TextInputEditText) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090272);
        this.checkRealmHost = (CheckBox) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090097);
        this.checkPreserveSni = (CheckBox) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f090096);
        this.checkUseTcpPayload = (CheckBox) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09009a);
        this.descText = (MaterialTextView) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f0900c2);
        this.payloadText.setText(this.mSharedPrefs.getString(ProtectedFastSSH.s("⻁"), ProtectedFastSSH.s("⼼")));
        TextInputEditText textInputEditText = this.hostText;
        SharedPreferences sharedPreferences = this.mSharedPrefs;
        String strS = ProtectedFastSSH.s("⻄");
        String strS2 = ProtectedFastSSH.s("⼽");
        textInputEditText.setText(sharedPreferences.getString(strS, strS2));
        this.sniText.setText(this.mSharedPrefs.getString(ProtectedFastSSH.s("⺻"), strS2));
        this.nsText.setText(this.mSharedPrefs.getString(ProtectedFastSSH.s("⺽"), ProtectedFastSSH.s("⼾")));
        this.checkRealmHost.setChecked(this.mSharedPrefs.getBoolean(ProtectedFastSSH.s("⻇"), false));
        this.checkPreserveSni.setChecked(this.mSharedPrefs.getBoolean(ProtectedFastSSH.s("⻍"), false));
        this.checkUseTcpPayload.setChecked(this.mSharedPrefs.getBoolean(ProtectedFastSSH.s("⻂"), false));
        this.checkRealmHost.setOnCheckedChangeListener(new AnonymousClass6());
        this.checkPreserveSni.setOnCheckedChangeListener(new AnonymousClass7());
        this.checkUseTcpPayload.setOnCheckedChangeListener(new AnonymousClass8());
        this.serverSelect = (AppCompatSpinner) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09021e);
        this.methodSelect = (AppCompatSpinner) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09021d);
        this.portSelect = (AppCompatSpinner) viewInflate.findViewById(com.hatunnel.plus.R.id.ports);
        ((TextInputLayout) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901ad)).setEndIconOnClickListener(new AnonymousClass9());
        initServers();
        initMethods();
        initMethodsLite();
        boolean z = this.mSharedPrefs.getBoolean(ProtectedFastSSH.s("⻌"), false);
        this.customSwitch.setChecked(z);
        toggleCustom(z);
        VpnStatus.addVpnStateListener(this);
        initAds();
        whatsNew();
        try {
            Bundle arguments = getArguments();
            if (arguments != null && (string = arguments.getString(ProtectedFastSSH.s("⼿"))) != null && !string.matches("")) {
                processImportString(string, getContext());
            }
        } catch (Exception unused2) {
        }
        if (this.mSharedPrefs.getInt(ProtectedFastSSH.s("⻊"), 0) < 3) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setTitle(ProtectedFastSSH.s("⽀"));
            builder.setMessage(ProtectedFastSSH.s("⽁"));
            builder.setCancelable(false);
            builder.setPositiveButton(ProtectedFastSSH.s("⽂"), new AnonymousClass10());
            builder.create().show();
        }
        joinTelegram();
        return viewInflate;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.vpnConnectionHelper.bindService(false);
        VpnStatus.removeVpnStateListener(this);
        VpnStatus.removeMessageListener(this);
    }

    public void onExpiredState() {
        getActivity().runOnUiThread(new AnonymousClass16());
    }

    @Override
    public void onGenerated(String str) {
        if (VpnStatus.isConnected()) {
            Toast.makeText(getContext(), ProtectedFastSSH.s("⽃"), 0).show();
            return;
        }
        this.payloadText.setText(str);
        if (this.payloadView.getVisibility() == 8) {
            this.methodSelect.setSelection(1, true);
        }
    }

    public void onMessageReceived(String str) {
        getActivity().runOnUiThread(new AnonymousClass14(str));
    }

    @Override
    public void onPause() {
        super.onPause();
        VpnStatus.removeByteCountListener(this);
    }

    public void onRemindState() {
    }

    @Override
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (iArr[0] == 0) {
            if (i == 1011) {
                importConfig();
            } else {
                if (i != 1012) {
                    return;
                }
                exportConfig();
            }
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        if (new Subscription(new PrefsSubscriptionStore(getContext())).shouldRequestAds()) {
            requestNewAdBanner(this.bannerAd);
            loadConnectedInterstitialAd();
            loadDisConnectedInterstitialAd();
        }
        VpnStatus.addByteCountListener(this);
        fetchAndShowTicker();
    }

    public void onStartCountdown(long j) {
        Subscription subscription = new Subscription(new PrefsSubscriptionStore(getContext()));
        LAST_SESSION_MILLIS = j;
        LAST_MILLIS = j;
        getActivity().runOnUiThread(new AnonymousClass15(j, subscription));
    }

    public void onStickyMessageReceived(String str) {
    }

    public void onUpdateState(VpnStatus.VpnState vpnState) {
        getActivity().runOnUiThread(new AnonymousClass13(vpnState, new Subscription(new PrefsSubscriptionStore(getContext()))));
    }

    public void processImportString(String str, Context context) {
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(AESEncryption.decrypt(str, ProtectedFastSSH.s("⻰"))).optJSONObject(ProtectedFastSSH.s("⻫"));
            if (jSONObjectOptJSONObject == null) {
                finishImport(str);
            } else if (jSONObjectOptJSONObject.optBoolean(ProtectedFastSSH.s("⽄"))) {
                ExportActivity.TextQuery textQuery = new ExportActivity.TextQuery(getContext());
                textQuery.setTitle(ProtectedFastSSH.s("⽅"));
                textQuery.builder.setPositiveButton(ProtectedFastSSH.s("⽆"), new AnonymousClass18(textQuery, jSONObjectOptJSONObject, str));
                textQuery.builder.setNegativeButton(ProtectedFastSSH.s("⽇"), new AnonymousClass19());
                textQuery.builder.setOnCancelListener(new AnonymousClass20());
                textQuery.show();
            } else if (!jSONObjectOptJSONObject.optBoolean(ProtectedFastSSH.s("⽈")) || AESEncryption.md5(deviceId()).matches(jSONObjectOptJSONObject.getString(ProtectedFastSSH.s("⽉")))) {
                finishImport(str);
            } else {
                Toast.makeText(getContext(), ProtectedFastSSH.s("⽊"), 1).show();
            }
        } catch (NullPointerException unused) {
        } catch (Exception e) {
            Toast.makeText(context, ProtectedFastSSH.s("⽋") + e.getMessage(), 0).show();
        }
    }

    @Override
    public void showLoadFailed(long j, LoadAdError loadAdError) {
        AlertDialog alertDialog = this.waitDialog;
        if (alertDialog != null && alertDialog.isShowing() && this.waitDialogRequestId == j) {
            this.waitDialog.dismiss();
            this.waitDialog = null;
        }
        Toast.makeText(getContext(), loadAdError.getMessage(), 0).show();
    }

    @Override
    public void showLoading(long j) {
        this.waitDialogRequestId = j;
        AlertDialog alertDialog = this.waitDialog;
        if (alertDialog != null && alertDialog.isShowing()) {
            this.waitDialog.dismiss();
        }
        View viewInflate = getLayoutInflater().inflate(com.hatunnel.plus.R.layout.l_res_0x7f0c0047, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f09016d)).setText(ProtectedFastSSH.s("⽌"));
        AlertDialog alertDialogCreate = new AlertDialog.Builder(getContext()).setView(viewInflate).setCancelable(true).create();
        this.waitDialog = alertDialogCreate;
        alertDialogCreate.setOnCancelListener(new HomeFragment$$ExternalSyntheticLambda0(this, j));
        if (this.waitDialog.getWindow() != null) {
            this.waitDialog.getWindow().setBackgroundDrawableResource(android.R.color.transparent);
        }
        this.waitDialog.show();
    }

    void startCurrentProfile() {
        this.vpnConnectionHelper.startVpnConnection(prepareProfile());
    }

    void stopCurrentProfile() {
        this.vpnConnectionHelper.stopVpnConnection();
    }

    void stopService() {
        this.vpnConnectionHelper.stopService();
    }
}
