package app.fast.ssh.dialog;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.CountDownTimer;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import app.fast.ssh.ProtectedFastSSH;
import app.fast.ssh.TimerConf;
import app.fast.ssh.core.VpnStatus;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.hatunnel.plus.R;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class AddTimeDialog {
    public static TimerConf GlobalTimerConf;
    public static long LAST_ACCESS_TOPUP_MILLIS;
    public static long LAST_SESSION_MILLIS;
    private AdView bannerAd;
    private LinearLayout bannerContainer;
    private Button button;
    private final Context mContext;
    private final AlertDialog mDialog;
    private TextView message_text;
    private CountDownTimer watchAd_Cooldown;
    private static final String BANNER_AD_UNIT = ProtectedFastSSH.s("ㅊ");
    private static final String REWARDED_INTERSTITIAL_AD_UNIT = ProtectedFastSSH.s("ㅋ");

    class AnonymousClass1 implements DialogInterface.OnShowListener {

        class CountDownTimerC00161 extends CountDownTimer {
            CountDownTimerC00161(long j, long j2) {
                super(j, j2);
            }

            @Override
            public void onFinish() {
                AddTimeDialog.access$000(AddTimeDialog.this).setEnabled(true);
                AddTimeDialog.access$000(AddTimeDialog.this).setText(AddTimeDialog.GlobalTimerConf.button_text);
            }

            @Override
            public void onTick(long j) {
                Locale locale = Locale.getDefault();
                Object[] objArr = {Long.valueOf(TimeUnit.MILLISECONDS.toHours(j))};
                String strS = ProtectedFastSSH.s("ㅀ");
                AddTimeDialog.access$000(AddTimeDialog.this).setText(String.format(ProtectedFastSSH.s("ㅁ"), String.format(locale, strS, objArr), String.format(Locale.getDefault(), strS, Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j) - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(j)))), String.format(Locale.getDefault(), strS, Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(j))))));
            }
        }

        AnonymousClass1() {
        }

        @Override
        public void onShow(DialogInterface dialogInterface) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j = ((long) (AddTimeDialog.GlobalTimerConf.cool_min * 60)) * 1000;
            long j2 = ((long) AddTimeDialog.GlobalTimerConf.per_hours) * 3600000;
            if (AddTimeDialog.LAST_ACCESS_TOPUP_MILLIS == 0 || AddTimeDialog.LAST_SESSION_MILLIS < j2) {
                AddTimeDialog.access$000(AddTimeDialog.this).setEnabled(true);
                AddTimeDialog.access$000(AddTimeDialog.this).setText(AddTimeDialog.GlobalTimerConf.button_text);
                return;
            }
            long j3 = jCurrentTimeMillis - AddTimeDialog.LAST_ACCESS_TOPUP_MILLIS;
            if (j3 >= j) {
                AddTimeDialog.access$000(AddTimeDialog.this).setEnabled(true);
                AddTimeDialog.access$000(AddTimeDialog.this).setText(AddTimeDialog.GlobalTimerConf.button_text);
                return;
            }
            long j4 = j - j3;
            if (AddTimeDialog.access$100(AddTimeDialog.this) != null) {
                AddTimeDialog.access$100(AddTimeDialog.this).cancel();
            }
            AddTimeDialog.access$102(AddTimeDialog.this, new CountDownTimerC00161(j4, 1000L));
            AddTimeDialog.access$100(AddTimeDialog.this).start();
        }
    }

    class AnonymousClass2 extends RewardedAdLoadCallback {
        final ProgressDialog val$progress;

        class AnonymousClass1 implements OnUserEarnedRewardListener {
            AnonymousClass1() {
            }

            @Override
            public void onUserEarnedReward(RewardItem rewardItem) {
                Toast.makeText(AddTimeDialog.access$400(AddTimeDialog.this), ProtectedFastSSH.s("ㅂ"), 1).show();
                AddTimeDialog.access$500(AddTimeDialog.this).setText(ProtectedFastSSH.s("ㅃ") + AddTimeDialog.GlobalTimerConf.message_text);
            }
        }

        AnonymousClass2(ProgressDialog progressDialog) {
            this.val$progress = progressDialog;
        }

        @Override
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            try {
                this.val$progress.dismiss();
            } catch (Exception unused) {
            }
            Context contextAccess$400 = AddTimeDialog.access$400(AddTimeDialog.this);
            StringBuilder sb = new StringBuilder();
            sb.append(loadAdError.getMessage());
            sb.append(loadAdError.getMessage().contains(ProtectedFastSSH.s("ㅄ")) ? ProtectedFastSSH.s("ㅅ") : "");
            Toast.makeText(contextAccess$400, sb.toString(), 1).show();
            try {
                this.val$progress.dismiss();
            } catch (Exception unused2) {
            }
            AddTimeDialog.access$000(AddTimeDialog.this).setText(ProtectedFastSSH.s("ㅆ"));
        }

        public void onAdLoaded2(RewardedAd rewardedAd) {
            try {
                this.val$progress.dismiss();
            } catch (Exception unused) {
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(ProtectedFastSSH.s("ㅇ"), VpnStatus.getLastConnectedProfile().primaryNode());
                jSONObject.put(ProtectedFastSSH.s("ㅈ"), VpnStatus.getLastConnectedProfile().serverHost());
                jSONObject.put(ProtectedFastSSH.s("ㅉ"), AddTimeDialog.access$200(AddTimeDialog.this));
            } catch (Exception unused2) {
            }
            rewardedAd.setServerSideVerificationOptions(new ServerSideVerificationOptions.Builder().setCustomData(jSONObject.toString()).setUserId(AddTimeDialog.access$300(AddTimeDialog.this)).build());
            rewardedAd.show((AppCompatActivity) AddTimeDialog.access$400(AddTimeDialog.this), new AnonymousClass1());
        }

        @Override
        public void onAdLoaded(RewardedAd rewardedAd) {
            onAdLoaded2(rewardedAd);
        }
    }

    class AnonymousClass3 extends AdListener {
        AnonymousClass3() {
        }

        @Override
        public void onAdLoaded() {
            super.onAdLoaded();
            AddTimeDialog.access$600(AddTimeDialog.this).setVisibility(0);
        }
    }

    public AddTimeDialog(Context context) {
        this.mContext = context;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.l_res_0x7f0c0029, (ViewGroup) null);
        builder.setView(viewInflate);
        TextView textView = (TextView) viewInflate.findViewById(R.id.l_res_0x7f09016e);
        this.message_text = textView;
        textView.setText(GlobalTimerConf.message_text);
        Button button = (Button) viewInflate.findViewById(R.id.l_res_0x7f09007b);
        this.button = button;
        button.setText(GlobalTimerConf.button_text);
        this.button.setEnabled(false);
        AlertDialog alertDialogCreate = builder.create();
        this.mDialog = alertDialogCreate;
        alertDialogCreate.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        alertDialogCreate.setOnShowListener(new AnonymousClass1());
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.l_res_0x7f090068);
        this.bannerContainer = linearLayout;
        linearLayout.setVisibility(8);
        initAds();
    }

    static Button access$000(AddTimeDialog addTimeDialog) {
        return addTimeDialog.button;
    }

    static CountDownTimer access$100(AddTimeDialog addTimeDialog) {
        return addTimeDialog.watchAd_Cooldown;
    }

    static CountDownTimer access$102(AddTimeDialog addTimeDialog, CountDownTimer countDownTimer) {
        addTimeDialog.watchAd_Cooldown = countDownTimer;
        return countDownTimer;
    }

    static int access$200(AddTimeDialog addTimeDialog) {
        return addTimeDialog.appVersionCode();
    }

    static String access$300(AddTimeDialog addTimeDialog) {
        return addTimeDialog.deviceId();
    }

    static Context access$400(AddTimeDialog addTimeDialog) {
        return addTimeDialog.mContext;
    }

    static TextView access$500(AddTimeDialog addTimeDialog) {
        return addTimeDialog.message_text;
    }

    static LinearLayout access$600(AddTimeDialog addTimeDialog) {
        return addTimeDialog.bannerContainer;
    }

    private int appVersionCode() {
        try {
            return this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionCode;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static void configure(JSONObject jSONObject) throws Exception {
        GlobalTimerConf = new TimerConf(jSONObject.getString(ProtectedFastSSH.s("ㅌ")), jSONObject.getString(ProtectedFastSSH.s("ㅍ")), jSONObject.getString(ProtectedFastSSH.s("ㅎ")), jSONObject.getInt(ProtectedFastSSH.s("ㅏ")), jSONObject.getInt(ProtectedFastSSH.s("ㅐ")), jSONObject.getInt(ProtectedFastSSH.s("ㅑ")));
        ProtectedFastSSH.s("ㅒ");
        jSONObject.toString();
    }

    private String deviceId() {
        return Settings.Secure.getString(this.mContext.getContentResolver(), ProtectedFastSSH.s("ㅓ"));
    }

    private void initAds() {
        AdView adView = new AdView(this.mContext);
        this.bannerAd = adView;
        adView.setAdSize(AdSize.BANNER);
        this.bannerAd.setAdUnitId(ProtectedFastSSH.s("ㅊ"));
        this.bannerContainer.removeAllViews();
        this.bannerContainer.addView(this.bannerAd);
        this.bannerAd.setAdListener(new AnonymousClass3());
    }

    private void requestNewAdBanner(AdView adView) {
    }

    private void requestRewardedAd() {
        ProgressDialog progressDialog = new ProgressDialog(this.mContext);
        progressDialog.setMessage(ProtectedFastSSH.s("ㅔ"));
        progressDialog.setCanceledOnTouchOutside(false);
        AdRequest adRequestBuild = new AdRequest.Builder().build();
        RewardedAd.load(this.mContext, ProtectedFastSSH.s("ㅕ"), adRequestBuild, new AnonymousClass2(progressDialog));
        progressDialog.show();
    }

    public void show() {
        this.mDialog.show();
    }
}
