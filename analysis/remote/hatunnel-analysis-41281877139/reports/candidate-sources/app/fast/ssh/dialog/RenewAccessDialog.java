package app.fast.ssh.dialog;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
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
import androidx.preference.PreferenceManager;
import app.fast.ssh.ProtectedFastSSH;
import app.fast.ssh.core.VpnStatus;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.hatunnel.plus.R;
import org.json.JSONObject;

public class RenewAccessDialog {
    private static RenewAccessDialog renewAccessDialog;
    private AdView bannerAd;
    private LinearLayout bannerContainer;
    private final Button button;
    private final View endView;
    private final Context mContext;
    private final AlertDialog mDialog;
    private RewardedAd mRewardedAd;
    private SharedPreferences mSharedPrefs;
    private final View startView;
    private final TextView titleView;

    class AnonymousClass1 implements View.OnClickListener {
        AnonymousClass1() {
        }

        @Override
        public void onClick(View view) {
            try {
                RenewAccessDialog.this.dismiss();
            } catch (Exception unused) {
            }
        }
    }

    class AnonymousClass2 extends RewardedAdLoadCallback {
        final ProgressDialog val$progress;

        class AnonymousClass1 implements OnUserEarnedRewardListener {
            AnonymousClass1() {
            }

            @Override
            public void onUserEarnedReward(RewardItem rewardItem) {
                Toast.makeText(RenewAccessDialog.access$300(RenewAccessDialog.this), ProtectedFastSSH.s("ㅵ"), 1).show();
                RenewAccessDialog.access$400(RenewAccessDialog.this).setText(ProtectedFastSSH.s("ㅶ"));
                RenewAccessDialog.access$500(RenewAccessDialog.this).setVisibility(8);
                RenewAccessDialog.access$600(RenewAccessDialog.this).setVisibility(0);
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
            Context contextAccess$300 = RenewAccessDialog.access$300(RenewAccessDialog.this);
            StringBuilder sb = new StringBuilder();
            sb.append(loadAdError.getMessage());
            sb.append(loadAdError.getMessage().contains(ProtectedFastSSH.s("ㅷ")) ? ProtectedFastSSH.s("ㅸ") : "");
            Toast.makeText(contextAccess$300, sb.toString(), 1).show();
            try {
                this.val$progress.dismiss();
            } catch (Exception unused2) {
            }
            RenewAccessDialog.access$700(RenewAccessDialog.this).setText(ProtectedFastSSH.s("ㅹ"));
        }

        public void onAdLoaded2(RewardedAd rewardedAd) {
            try {
                this.val$progress.dismiss();
            } catch (Exception unused) {
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(ProtectedFastSSH.s("ㅺ"), VpnStatus.getLastConnectedProfile().primaryNode());
                jSONObject.put(ProtectedFastSSH.s("ㅻ"), VpnStatus.getLastConnectedProfile().serverHost());
                jSONObject.put(ProtectedFastSSH.s("ㅼ"), RenewAccessDialog.access$000(RenewAccessDialog.this));
                jSONObject.put(ProtectedFastSSH.s("ㅽ"), RenewAccessDialog.access$100(RenewAccessDialog.this).getString(ProtectedFastSSH.s("ㅾ"), ""));
            } catch (Exception unused2) {
            }
            rewardedAd.setServerSideVerificationOptions(new ServerSideVerificationOptions.Builder().setCustomData(jSONObject.toString()).setUserId(RenewAccessDialog.access$200(RenewAccessDialog.this)).build());
            rewardedAd.show((AppCompatActivity) RenewAccessDialog.access$300(RenewAccessDialog.this), new AnonymousClass1());
        }

        @Override
        public void onAdLoaded(RewardedAd rewardedAd) {
            onAdLoaded2(rewardedAd);
        }
    }

    public RenewAccessDialog(Context context) {
        this.mContext = context;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.l_res_0x7f0c009d, (ViewGroup) null);
        Button button = (Button) viewInflate.findViewById(R.id.l_res_0x7f09007c);
        this.button = button;
        builder.setView(viewInflate);
        this.mSharedPrefs = PreferenceManager.getDefaultSharedPreferences(context);
        this.titleView = (TextView) viewInflate.findViewById(R.id.title);
        this.startView = viewInflate.findViewById(R.id.l_res_0x7f09024a);
        this.endView = viewInflate.findViewById(R.id.l_res_0x7f0900e8);
        button.setOnClickListener(new RenewAccessDialog$$ExternalSyntheticLambda0(this));
        viewInflate.findViewById(R.id.l_res_0x7f09007d).setOnClickListener(new AnonymousClass1());
        AlertDialog alertDialogCreate = builder.create();
        this.mDialog = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.l_res_0x7f090068);
        this.bannerContainer = linearLayout;
        linearLayout.setVisibility(8);
        initAds();
    }

    static int access$000(RenewAccessDialog renewAccessDialog2) {
        return renewAccessDialog2.appVersionCode();
    }

    static SharedPreferences access$100(RenewAccessDialog renewAccessDialog2) {
        return renewAccessDialog2.mSharedPrefs;
    }

    static String access$200(RenewAccessDialog renewAccessDialog2) {
        return renewAccessDialog2.deviceId();
    }

    static Context access$300(RenewAccessDialog renewAccessDialog2) {
        return renewAccessDialog2.mContext;
    }

    static TextView access$400(RenewAccessDialog renewAccessDialog2) {
        return renewAccessDialog2.titleView;
    }

    static View access$500(RenewAccessDialog renewAccessDialog2) {
        return renewAccessDialog2.startView;
    }

    static View access$600(RenewAccessDialog renewAccessDialog2) {
        return renewAccessDialog2.endView;
    }

    static Button access$700(RenewAccessDialog renewAccessDialog2) {
        return renewAccessDialog2.button;
    }

    private int appVersionCode() {
        try {
            return this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionCode;
        } catch (Exception unused) {
            return 0;
        }
    }

    private String deviceId() {
        return Settings.Secure.getString(this.mContext.getContentResolver(), ProtectedFastSSH.s("ㅿ"));
    }

    private void initAds() {
    }

    private void requestNewAdBanner(AdView adView) {
    }

    private void requestRewardedAd() {
        ProgressDialog progressDialog = new ProgressDialog(this.mContext);
        progressDialog.setMessage(ProtectedFastSSH.s("ㆀ"));
        progressDialog.setCanceledOnTouchOutside(false);
        AdRequest adRequestBuild = new AdRequest.Builder().build();
        RewardedAd.load(this.mContext, ProtectedFastSSH.s("ㆁ"), adRequestBuild, new AnonymousClass2(progressDialog));
        progressDialog.show();
    }

    public void dismiss() {
        try {
            this.mDialog.dismiss();
        } catch (Exception unused) {
        }
    }

    public boolean isShowing() {
        try {
            return this.mDialog.isShowing();
        } catch (Exception unused) {
            return false;
        }
    }

    void m487lambda$new$0$appfastsshdialogRenewAccessDialog(View view) {
        if (VpnStatus.isConnected()) {
            requestRewardedAd();
        } else {
            Toast.makeText(this.mContext, ProtectedFastSSH.s("ㆂ"), 1).show();
        }
    }

    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.mDialog.setOnDismissListener(onDismissListener);
    }

    public void show() {
        try {
            RenewAccessDialog renewAccessDialog2 = renewAccessDialog;
            if (renewAccessDialog2 != null) {
                renewAccessDialog2.dismiss();
            }
            renewAccessDialog = this;
            requestNewAdBanner(this.bannerAd);
            this.mDialog.show();
        } catch (Exception unused) {
        }
    }
}
