package app.fast.ssh;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import app.fast.ssh.core.SSHTunnelService;
import app.fast.ssh.core.VpnConnection;
import app.fast.ssh.core.VpnStatus;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.material.button.MaterialButton;
import java.nio.ByteBuffer;
import java.util.UUID;

public class VoucherActivity extends AppCompatActivity implements VpnStatus.VpnStateListener {
    private AdView bannerAd;
    private VpnConnection vpnConnection = null;
    private final ServiceConnection serviceConnection = new AnonymousClass1();

    class AnonymousClass1 implements ServiceConnection {
        AnonymousClass1() {
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            VoucherActivity.access$002(VoucherActivity.this, (VpnConnection) ((SSHTunnelService.LocalBinder) iBinder).getServices()[0]);
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            VoucherActivity.access$002(VoucherActivity.this, null);
        }
    }

    class AnonymousClass2 implements VpnConnection.RedeemResultListener {

        class AnonymousClass1 implements Runnable {
            AnonymousClass1() {
            }

            @Override
            public void run() {
                Toast.makeText(VoucherActivity.this, ProtectedFastSSH.s("⾷"), 0).show();
                VoucherActivity.this.onBackPressed();
            }
        }

        class RunnableC00152 implements Runnable {
            RunnableC00152() {
            }

            @Override
            public void run() {
                Toast.makeText(VoucherActivity.this, ProtectedFastSSH.s("⾸"), 0).show();
                VoucherActivity.this.onBackPressed();
            }
        }

        AnonymousClass2() {
        }

        public void onRedeemResult(int i) {
            if (i == 0) {
                VoucherActivity.this.runOnUiThread(new AnonymousClass1());
            } else {
                if (i != 1) {
                    return;
                }
                VoucherActivity.this.runOnUiThread(new RunnableC00152());
            }
        }
    }

    class AnonymousClass3 implements Runnable {
        final Exception val$e1;

        AnonymousClass3(Exception exc) {
            this.val$e1 = exc;
        }

        @Override
        public void run() {
            ProtectedFastSSH.s("⾹");
            Exception exc = this.val$e1;
            ProtectedFastSSH.s("⾺");
            Toast.makeText(VoucherActivity.this, ProtectedFastSSH.s("⾻"), 0).show();
        }
    }

    class AnonymousClass4 implements Runnable {
        AnonymousClass4() {
        }

        @Override
        public void run() {
            VoucherActivity.this.onBackPressed();
        }
    }

    static class AnonymousClass5 {
        static final int[] $SwitchMap$app$fast$ssh$core$VpnStatus$VpnState;

        static {
            int[] iArr = new int[VpnStatus.VpnState.values().length];
            $SwitchMap$app$fast$ssh$core$VpnStatus$VpnState = iArr;
            try {
                iArr[VpnStatus.VpnState.CONNECTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$app$fast$ssh$core$VpnStatus$VpnState[VpnStatus.VpnState.RECONNECTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$app$fast$ssh$core$VpnStatus$VpnState[VpnStatus.VpnState.DISCONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static VpnConnection access$002(VoucherActivity voucherActivity, VpnConnection vpnConnection) {
        voucherActivity.vpnConnection = vpnConnection;
        return vpnConnection;
    }

    private AdSize getAdSize() {
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(this, (int) (displayMetrics.widthPixels / displayMetrics.density));
    }

    private void initAds() {
        AdView adView = new AdView(this);
        this.bannerAd = adView;
        adView.setAdSize(getAdSize());
        this.bannerAd.setAdUnitId(ProtectedFastSSH.s("⾼"));
        LinearLayout linearLayout = (LinearLayout) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090068);
        linearLayout.removeAllViews();
        linearLayout.addView(this.bannerAd);
    }

    public static boolean isValidUUID(String str) {
        try {
            UUID.fromString(str);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    void m484lambda$onCreate$0$appfastsshVoucherActivity(ByteBuffer byteBuffer) {
        try {
            this.vpnConnection.beginRedeemVoucher(byteBuffer.array(), new AnonymousClass2());
        } catch (Exception e) {
            runOnUiThread(new AnonymousClass3(e));
        }
    }

    void m485lambda$onCreate$1$appfastsshVoucherActivity(View view) {
        if (!VpnStatus.isConnected()) {
            Toast.makeText(this, ProtectedFastSSH.s("⾿"), 0).show();
            return;
        }
        EditText editText = (EditText) findViewById(com.hatunnel.plus.R.id.l_res_0x7f0902a9);
        if (editText.getText().toString().isEmpty()) {
            Toast.makeText(this, ProtectedFastSSH.s("⾾"), 0).show();
            return;
        }
        String string = editText.getText().toString();
        if (!isValidUUID(string)) {
            Toast.makeText(this, ProtectedFastSSH.s("⾽"), 0).show();
            return;
        }
        UUID uuidFromString = UUID.fromString(string);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
        byteBufferAllocate.putLong(uuidFromString.getMostSignificantBits());
        byteBufferAllocate.putLong(uuidFromString.getLeastSignificantBits());
        new Thread(new VoucherActivity$$ExternalSyntheticLambda1(this, byteBufferAllocate)).start();
    }

    public void onAccessTopUp() {
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.hatunnel.plus.R.layout.l_res_0x7f0c0023);
        setSupportActionBar((Toolbar) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090284));
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setDisplayShowHomeEnabled(true);
        ((MaterialButton) findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901f5)).setOnClickListener(new VoucherActivity$$ExternalSyntheticLambda0(this));
    }

    public void onExpiredState() {
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        onBackPressed();
        return true;
    }

    public void onRemindState() {
    }

    @Override
    protected void onResume() {
        super.onResume();
    }

    @Override
    protected void onStart() {
        super.onStart();
        bindService(new Intent(this, (Class<?>) SSHTunnelService.class), this.serviceConnection, 1);
        VpnStatus.addVpnStateListener(this);
    }

    public void onStartCountdown(long j) {
    }

    @Override
    protected void onStop() {
        super.onStop();
        unbindService(this.serviceConnection);
        VpnStatus.removeVpnStateListener(this);
    }

    public void onUpdateState(VpnStatus.VpnState vpnState) {
        int i = AnonymousClass5.$SwitchMap$app$fast$ssh$core$VpnStatus$VpnState[vpnState.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            runOnUiThread(new AnonymousClass4());
        }
    }
}
