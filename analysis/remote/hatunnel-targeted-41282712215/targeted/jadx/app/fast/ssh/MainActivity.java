package app.fast.ssh;

import android.app.ProgressDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import app.fast.ssh.adapter.MyPagerAdapter;
import app.fast.ssh.core.VpnStatus;
import app.fast.ssh.dialog.PayloadGen;
import app.fast.ssh.dialog.RenewAccessDialog;
import app.fast.ssh.util.AESEncryption;
import app.fast.ssh.util.ApkInfoExtractor;
import app.fast.ssh.util.DBHelper;
import app.fast.ssh.util.ResourceUpdater;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.navigation.NavigationView;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.tabs.TabLayout;
import com.google.android.play.core.appupdate.AppUpdateInfo;
import com.google.android.play.core.appupdate.AppUpdateManager;
import com.google.android.play.core.appupdate.AppUpdateManagerFactory;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import org.json.JSONObject;

public class MainActivity extends AppCompatActivity {
    private static final int APP_UPDATE_REQUEST_CODE = 11040;
    private AppUpdateManager appUpdateManager;
    private AdView bannerAd;
    private LogFragment debugFragment;
    private DrawerLayout drawer;
    private ActionBarDrawerToggle drawerToggle;
    private HomeFragment homeFragment;
    private InterstitialAd renewInterstitial;
    private ResourceUpdater resourceUpdater;
    private Timer resumeAdTimer;
    private InterstitialAd resumeInterstitial;
    private InterstitialAd updateSuccessInterstitial;
    private static final String RESUME_INTERSTITIAL = ProtectedFastSSH.s("⾅");
    private static final String RENEW_INTERSTITIAL = ProtectedFastSSH.s("⾆");
    private boolean restartOnUpdateRequest = false;
    private boolean inBackground = false;

    class AnonymousClass1 implements ResourceUpdater.UpdateListener {
        AnonymousClass1() {
        }

        @Override
        public void onErrorOccurred() {
        }

        @Override
        public void onResponseReceived(JSONObject jSONObject) {
            try {
                System.out.println(jSONObject);
                MainActivity.access$000(MainActivity.this, jSONObject);
            } catch (Exception unused) {
            }
        }
    }

    class AnonymousClass2 implements ResourceUpdater.UpdateListener {
        final ProgressDialog val$progress;
        final Subscription val$subscription;

        AnonymousClass2(Subscription subscription, ProgressDialog progressDialog) {
            this.val$subscription = subscription;
            this.val$progress = progressDialog;
        }

        @Override
        public void onErrorOccurred() {
            Toast.makeText(MainActivity.this, ProtectedFastSSH.s("⽣"), 0).show();
            this.val$progress.dismiss();
        }

        @Override
        public void onResponseReceived(JSONObject jSONObject) {
            try {
                if (!MainActivity.access$000(MainActivity.this, jSONObject)) {
                    Toast.makeText(MainActivity.this, ProtectedFastSSH.s("⽤"), 0).show();
                } else if (MainActivity.access$100(MainActivity.this) != null && this.val$subscription.shouldRequestAds()) {
                    MainActivity.access$100(MainActivity.this).show(MainActivity.this);
                }
                this.val$progress.dismiss();
            } catch (Exception unused) {
                onErrorOccurred();
            }
        }
    }

    class AnonymousClass3 implements DialogInterface.OnClickListener {
        AnonymousClass3() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            VpnStatus.removeVpnStateListener(MainActivity.access$200(MainActivity.this));
            MainActivity.access$200(MainActivity.this).stopCurrentProfile();
            MainActivity.access$200(MainActivity.this).stopService();
            Intent intent = MainActivity.this.getIntent();
            MainActivity.this.finish();
            MainActivity.this.startActivity(intent);
        }
    }

    class AnonymousClass4 implements DialogInterface.OnClickListener {
        AnonymousClass4() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            MainActivity.access$302(MainActivity.this, true);
        }
    }

    class AnonymousClass5 extends InterstitialAdLoadCallback {

        class AnonymousClass1 extends FullScreenContentCallback {
            AnonymousClass1() {
            }

            @Override
            public void onAdClicked() {
            }

            @Override
            public void onAdDismissedFullScreenContent() {
                MainActivity.access$102(MainActivity.this, null);
            }

            @Override
            public void onAdFailedToShowFullScreenContent(AdError adError) {
                MainActivity.access$102(MainActivity.this, null);
            }

            @Override
            public void onAdImpression() {
            }

            @Override
            public void onAdShowedFullScreenContent() {
            }
        }

        AnonymousClass5() {
        }

        @Override
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            MainActivity.access$102(MainActivity.this, null);
        }

        public void onAdLoaded2(InterstitialAd interstitialAd) {
            MainActivity.access$102(MainActivity.this, interstitialAd);
            MainActivity.access$100(MainActivity.this).setFullScreenContentCallback(new AnonymousClass1());
        }

        @Override
        public void onAdLoaded(InterstitialAd interstitialAd) {
            onAdLoaded2(interstitialAd);
        }
    }

    static boolean access$000(MainActivity mainActivity, JSONObject jSONObject) throws Exception {
        return mainActivity.processUpdate(jSONObject);
    }

    static InterstitialAd access$100(MainActivity mainActivity) {
        return mainActivity.updateSuccessInterstitial;
    }

    static InterstitialAd access$102(MainActivity mainActivity, InterstitialAd interstitialAd) {
        mainActivity.updateSuccessInterstitial = interstitialAd;
        return interstitialAd;
    }

    static HomeFragment access$200(MainActivity mainActivity) {
        return mainActivity.homeFragment;
    }

    static boolean access$302(MainActivity mainActivity, boolean z) {
        mainActivity.restartOnUpdateRequest = z;
        return z;
    }

    private int appVersionCode() {
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
        } catch (Exception unused) {
            return 0;
        }
    }

    private String appVersionName() {
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (Exception unused) {
            return ProtectedFastSSH.s("⽥");
        }
    }

    private String deviceId() {
        return Settings.Secure.getString(getContentResolver(), ProtectedFastSSH.s("⽦"));
    }

    private void fixAppBarInset() {
        AppBarLayout appBarLayout = (AppBarLayout) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090056);
        if (appBarLayout == null) {
            return;
        }
        ViewCompat.setOnApplyWindowInsetsListener(appBarLayout, new MainActivity$$ExternalSyntheticLambda0());
        ViewCompat.requestApplyInsets(appBarLayout);
    }

    private void fixDrawerInset() {
        NavigationView navigationView = (NavigationView) findViewById(com.hatunnel.plus.R.id.l_res_0x7f0900db);
        if (navigationView == null) {
            return;
        }
        ViewCompat.setOnApplyWindowInsetsListener(navigationView, new MainActivity$$ExternalSyntheticLambda2());
        ViewCompat.requestApplyInsets(navigationView);
    }

    private AdSize getAdSize() {
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(this, (int) (displayMetrics.widthPixels / displayMetrics.density));
    }

    private void handleImportIntent(Intent intent) {
        try {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                this.homeFragment.processImportString(extras.getString(ProtectedFastSSH.s("⽧")), this);
            }
        } catch (Exception unused) {
        }
    }

    private void initAds() {
        AdView adView = new AdView(this);
        this.bannerAd = adView;
        adView.setAdSize(getAdSize());
        this.bannerAd.setAdUnitId(ProtectedFastSSH.s("⽨"));
        LinearLayout linearLayout = (LinearLayout) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090069);
        linearLayout.removeAllViews();
        linearLayout.addView(this.bannerAd);
    }

    static WindowInsetsCompat lambda$fixAppBarInset$0(View view, WindowInsetsCompat windowInsetsCompat) {
        view.setPadding(view.getPaddingLeft(), windowInsetsCompat.getInsets(WindowInsetsCompat.Type.statusBars()).top, view.getPaddingRight(), view.getPaddingBottom());
        return windowInsetsCompat;
    }

    static WindowInsetsCompat lambda$fixDrawerInset$1(View view, WindowInsetsCompat windowInsetsCompat) {
        view.setPadding(view.getPaddingLeft(), windowInsetsCompat.getInsets(WindowInsetsCompat.Type.statusBars()).top, view.getPaddingRight(), view.getPaddingBottom());
        return windowInsetsCompat;
    }

    static void lambda$onCreate$2(Boolean bool) {
    }

    private void loadUpdateSuccessInterstitialAd() {
        if (this.updateSuccessInterstitial == null) {
            InterstitialAd.load(this, ProtectedFastSSH.s("⽩"), new AdRequest.Builder().build(), new AnonymousClass5());
        }
    }

    private void openLink(String str) {
        Intent intent = new Intent(ProtectedFastSSH.s("⽪"));
        intent.setData(Uri.parse(str));
        startActivity(intent);
    }

    private boolean processUpdate(JSONObject jSONObject) throws Exception {
        boolean z;
        DBHelper dBHelper = new DBHelper(this);
        String string = jSONObject.getString(DBHelper.Resource.SERVERS.toString().toLowerCase());
        String strDecrypt = AESEncryption.decrypt(jSONObject.getString(DBHelper.Resource.METHODS.toString().toLowerCase()), ProtectedFastSSH.s("⽫"));
        String string2 = jSONObject.getString(DBHelper.Resource.ALLOWED_APPS.toString().toLowerCase());
        String latest = readLatest(string, DBHelper.Resource.SERVERS);
        boolean z2 = true;
        if (latest != null) {
            dBHelper.updateResource(DBHelper.Resource.SERVERS, latest);
            z = true;
        } else {
            z = false;
        }
        String latest2 = readLatest(strDecrypt, DBHelper.Resource.METHODS);
        if (latest2 != null) {
            dBHelper.updateResource(DBHelper.Resource.METHODS, latest2);
            z = true;
        }
        String latest3 = readLatest(string2, DBHelper.Resource.ALLOWED_APPS);
        if (latest3 != null) {
            dBHelper.updateResource(DBHelper.Resource.ALLOWED_APPS, latest3);
        } else {
            z2 = z;
        }
        if (z2) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setTitle(ProtectedFastSSH.s("⽬"));
            builder.setMessage(ProtectedFastSSH.s("⽭") + jSONObject.optString(ProtectedFastSSH.s("⽮"), ""));
            builder.setPositiveButton(ProtectedFastSSH.s("⽯"), new AnonymousClass3());
            builder.setNeutralButton(ProtectedFastSSH.s("⽰"), new AnonymousClass4());
            builder.setCancelable(false);
            builder.create().show();
        }
        return z2;
    }

    private String readLatest(String str, DBHelper.Resource resource) throws Exception {
        String resource2 = readResource(ProtectedFastSSH.s("⽱") + resource.toString().toLowerCase() + ProtectedFastSSH.s("⽲"));
        String resource3 = new DBHelper(this).getResource(resource);
        boolean zMatches = resource3.matches("");
        String strS = ProtectedFastSSH.s("⽳");
        if (!zMatches && ApkInfoExtractor.compareVersion(new JSONObject(resource2).getString(strS), new JSONObject(resource3).getString(strS)) == -1) {
            resource2 = resource3;
        }
        if (ApkInfoExtractor.compareVersion(new JSONObject(resource2).getString(strS), new JSONObject(str).getString(strS)) == -1) {
            return str;
        }
        return null;
    }

    private String readResource(String str) throws Throwable {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(getAssets().open(str)));
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

    private void showRenewAccess() {
        new RenewAccessDialog(this).show();
    }

    private void startResourceUpdate() {
        if (this.restartOnUpdateRequest) {
            VpnStatus.removeVpnStateListener(this.homeFragment);
            this.homeFragment.stopCurrentProfile();
            this.homeFragment.stopService();
            Intent intent = getIntent();
            finish();
            startActivity(intent);
            Toast.makeText(this, ProtectedFastSSH.s("⽴"), 0).show();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(this);
        progressDialog.setMessage(ProtectedFastSSH.s("⽵"));
        progressDialog.setCancelable(false);
        progressDialog.setCanceledOnTouchOutside(false);
        Subscription subscription = new Subscription(new PrefsSubscriptionStore(this));
        if (subscription.shouldRequestAds()) {
            loadUpdateSuccessInterstitialAd();
        }
        this.resourceUpdater.requestUpdate(new AnonymousClass2(subscription, progressDialog));
        progressDialog.show();
    }

    public String debugState() {
        PrefsSubscriptionStore prefsSubscriptionStore = new PrefsSubscriptionStore(this);
        String subscriptionToken = prefsSubscriptionStore.getSubscriptionToken();
        if (subscriptionToken == null) {
            return ProtectedFastSSH.s("⽶");
        }
        return ProtectedFastSSH.s("⽷") + subscriptionToken.substring(0, Math.min(8, subscriptionToken.length())) + ProtectedFastSSH.s("⽸") + ((prefsSubscriptionStore.getTokenExpiresAtMillis() - System.currentTimeMillis()) / 60000) + ProtectedFastSSH.s("⽹");
    }

    public void hideBannerAd() {
        this.bannerAd.setVisibility(8);
    }

    void m478lambda$onCreate$3$appfastsshMainActivity(AppUpdateInfo appUpdateInfo) {
        if (appUpdateInfo.updateAvailability() == 2 && appUpdateInfo.isUpdateTypeAllowed(1)) {
            try {
                this.appUpdateManager.startUpdateFlowForResult(appUpdateInfo, 1, this, APP_UPDATE_REQUEST_CODE);
            } catch (IntentSender.SendIntentException e) {
                e.printStackTrace();
            }
        }
    }

    void m479lambda$onCreate$4$appfastsshMainActivity(String str, NavigationView navigationView, DialogInterface dialogInterface, int i) {
        ((ClipboardManager) getSystemService(ProtectedFastSSH.s("⽺"))).setPrimaryClip(ClipData.newPlainText("", str));
        Snackbar.make(navigationView, ProtectedFastSSH.s("⽻") + str, -1).show();
    }

    boolean m480lambda$onCreate$5$appfastsshMainActivity(NavigationView navigationView, MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case com.hatunnel.plus.R.id.l_res_0x7f09000e:
                startActivity(new Intent(this, (Class<?>) AboutActivity.class));
                break;
            case com.hatunnel.plus.R.id.l_res_0x7f09005a:
                startActivity(new Intent(this, (Class<?>) AppsActivity.class));
                break;
            case com.hatunnel.plus.R.id.l_res_0x7f0900c9:
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setTitle(ProtectedFastSSH.s("⽾"));
                String strDeviceId = deviceId();
                builder.setMessage(strDeviceId);
                builder.setPositiveButton(ProtectedFastSSH.s("⽿"), new MainActivity$$ExternalSyntheticLambda3(this, strDeviceId, navigationView));
                builder.create().show();
                break;
            case com.hatunnel.plus.R.id.l_res_0x7f0900f2:
                this.homeFragment.exportConfig();
                break;
            case com.hatunnel.plus.R.id.l_res_0x7f090109:
                new PayloadGen(this, this.homeFragment).show();
                break;
            case com.hatunnel.plus.R.id.l_res_0x7f090138:
                this.homeFragment.importConfig();
                break;
            case com.hatunnel.plus.R.id.l_res_0x7f090225:
                startActivity(new Intent(this, (Class<?>) SettingsActivity.class));
                break;
            case com.hatunnel.plus.R.id.l_res_0x7f090265:
                openLink(ProtectedFastSSH.s("⽽"));
                break;
            case com.hatunnel.plus.R.id.l_res_0x7f0902b1:
                Toast.makeText(this, ProtectedFastSSH.s("⽼"), 0).show();
                break;
        }
        this.drawer.closeDrawer(GravityCompat.START);
        return true;
    }

    void m481lambda$onResume$6$appfastsshMainActivity(AppUpdateInfo appUpdateInfo) {
        if (appUpdateInfo.updateAvailability() == 3) {
            try {
                this.appUpdateManager.startUpdateFlowForResult(appUpdateInfo, 1, this, APP_UPDATE_REQUEST_CODE);
            } catch (IntentSender.SendIntentException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 11011 && i2 == -1) {
            this.homeFragment.startCurrentProfile();
        }
    }

    @Override
    public void onBackPressed() {
        if (this.drawer.isDrawerOpen(GravityCompat.START)) {
            this.drawer.closeDrawer(GravityCompat.START);
        } else {
            super.onBackPressed();
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.hatunnel.plus.R.layout.l_res_0x7f0c0021);
        if (Build.VERSION.SDK_INT >= 33) {
            String strS = ProtectedFastSSH.s("⾀");
            if (ContextCompat.checkSelfPermission(this, strS) != 0) {
                registerForActivityResult(new ActivityResultContracts.RequestPermission(), new MainActivity$$ExternalSyntheticLambda4()).launch(strS);
            }
        }
        this.resourceUpdater = new ResourceUpdater(this);
        AppUpdateManager appUpdateManagerCreate = AppUpdateManagerFactory.create(this);
        this.appUpdateManager = appUpdateManagerCreate;
        appUpdateManagerCreate.getAppUpdateInfo().addOnSuccessListener(new MainActivity$$ExternalSyntheticLambda5(this));
        setSupportActionBar((Toolbar) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090284));
        this.drawer = (DrawerLayout) findViewById(com.hatunnel.plus.R.id.l_res_0x7f0900db);
        ActionBarDrawerToggle actionBarDrawerToggle = new ActionBarDrawerToggle(this, this.drawer, com.hatunnel.plus.R.string.l_res_0x7f1200d8, com.hatunnel.plus.R.string.l_res_0x7f1200d7);
        this.drawerToggle = actionBarDrawerToggle;
        actionBarDrawerToggle.syncState();
        this.drawer.addDrawerListener(this.drawerToggle);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.setInterpolator(new DecelerateInterpolator());
        animationSet.setFillAfter(true);
        animationSet.setFillEnabled(true);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeButtonEnabled(true);
        List<Fragment> arrayList = new ArrayList<>();
        if (bundle != null) {
            arrayList = getSupportFragmentManager().getFragments();
            this.homeFragment = (HomeFragment) arrayList.get(0);
            this.debugFragment = (LogFragment) arrayList.get(1);
            this.homeFragment.setArguments(null);
        } else {
            this.homeFragment = new HomeFragment();
            Bundle extras = getIntent().getExtras();
            if (extras != null) {
                this.homeFragment.setArguments(extras);
            }
            this.debugFragment = new LogFragment();
            arrayList.add(this.homeFragment);
            arrayList.add(this.debugFragment);
        }
        ViewPager viewPager = (ViewPager) findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901d2);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(ProtectedFastSSH.s("⾁"));
        arrayList2.add(ProtectedFastSSH.s("⾂"));
        MyPagerAdapter myPagerAdapter = new MyPagerAdapter(arrayList, arrayList2, getSupportFragmentManager(), 1);
        viewPager.setAdapter(myPagerAdapter);
        myPagerAdapter.notifyDataSetChanged();
        ((TabLayout) findViewById(com.hatunnel.plus.R.id.l_res_0x7f090255)).setupWithViewPager(viewPager);
        NavigationView navigationView = (NavigationView) findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901a0);
        ((TextView) navigationView.getHeaderView(0).findViewById(com.hatunnel.plus.R.id.l_res_0x7f09029d)).setText(String.format(ProtectedFastSSH.s("⾃"), appVersionName(), Integer.valueOf(appVersionCode())));
        navigationView.setNavigationItemSelectedListener(new MainActivity$$ExternalSyntheticLambda6(this, navigationView));
        this.resourceUpdater.requestUpdate(new AnonymousClass1());
        initAds();
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(com.hatunnel.plus.R.menu.l_res_0x7f0e0002, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        handleImportIntent(intent);
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (this.drawerToggle.onOptionsItemSelected(menuItem)) {
            return true;
        }
        switch (menuItem.getItemId()) {
            case com.hatunnel.plus.R.id.l_res_0x7f09005a:
                startActivity(new Intent(this, (Class<?>) AppsActivity.class));
                break;
            case com.hatunnel.plus.R.id.l_res_0x7f090099:
                startResourceUpdate();
                break;
            case com.hatunnel.plus.R.id.l_res_0x7f09009f:
                this.debugFragment.clear();
                break;
            case com.hatunnel.plus.R.id.l_res_0x7f0900ed:
                VpnStatus.removeVpnStateListener(this.homeFragment);
                this.homeFragment.stopCurrentProfile();
                this.homeFragment.stopService();
                finish();
                break;
            case com.hatunnel.plus.R.id.l_res_0x7f0900f2:
                this.homeFragment.exportConfig();
                break;
            case com.hatunnel.plus.R.id.l_res_0x7f090138:
                this.homeFragment.importConfig();
                break;
            case com.hatunnel.plus.R.id.l_res_0x7f090225:
                startActivity(new Intent(this, (Class<?>) SettingsActivity.class));
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override
    protected void onPause() {
        super.onPause();
        this.inBackground = true;
        ((FastSSH) getApplicationContext()).getBillingManager().setStateListener(null);
    }

    @Override
    protected void onResume() {
        super.onResume();
        this.inBackground = false;
        ProtectedFastSSH.s("⾄");
        debugState();
        BillingManager billingManager = ((FastSSH) getApplicationContext()).getBillingManager();
        billingManager.setStateListener(this.homeFragment);
        billingManager.refreshIfNeeded();
        AdRequest adRequestBuild = new AdRequest.Builder().build();
        if (new Subscription(new PrefsSubscriptionStore(this)).shouldRequestAds()) {
            this.bannerAd.loadAd(adRequestBuild);
            this.bannerAd.setVisibility(0);
        } else {
            this.bannerAd.setVisibility(8);
        }
        this.appUpdateManager.getAppUpdateInfo().addOnSuccessListener(new MainActivity$$ExternalSyntheticLambda1(this));
    }
}
