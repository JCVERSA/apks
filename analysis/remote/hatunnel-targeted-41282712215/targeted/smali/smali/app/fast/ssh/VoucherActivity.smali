.class public Lapp/fast/ssh/VoucherActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VoucherActivity.java"

# interfaces
.implements Lapp/fast/ssh/core/VpnStatus$VpnStateListener;


# instance fields
.field private bannerAd:Lcom/google/android/gms/ads/AdView;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private vpnConnection:Lapp/fast/ssh/core/VpnConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lapp/fast/ssh/VoucherActivity;->vpnConnection:Lapp/fast/ssh/core/VpnConnection;

    new-instance v0, Lapp/fast/ssh/VoucherActivity$1;

    invoke-direct {v0, p0}, Lapp/fast/ssh/VoucherActivity$1;-><init>(Lapp/fast/ssh/VoucherActivity;)V

    iput-object v0, p0, Lapp/fast/ssh/VoucherActivity;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lapp/fast/ssh/VoucherActivity;Lapp/fast/ssh/core/VpnConnection;)Lapp/fast/ssh/core/VpnConnection;
    .locals 0

    iput-object p1, p0, Lapp/fast/ssh/VoucherActivity;->vpnConnection:Lapp/fast/ssh/core/VpnConnection;

    return-object p1
.end method

.method private getAdSize()Lcom/google/android/gms/ads/AdSize;
    .locals 2

    invoke-virtual {p0}, Lapp/fast/ssh/VoucherActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method private initAds()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lapp/fast/ssh/VoucherActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0}, Lapp/fast/ssh/VoucherActivity;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    iget-object v0, p0, Lapp/fast/ssh/VoucherActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;

    const-string/jumbo v1, "\u2fbc"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Lapp/fast/ssh/VoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lapp/fast/ssh/VoucherActivity;->bannerAd:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static isValidUUID(Ljava/lang/String;)Z
    .locals 0

    .prologue
    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method synthetic lambda$onCreate$0$app-fast-ssh-VoucherActivity(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Lapp/fast/ssh/VoucherActivity;->vpnConnection:Lapp/fast/ssh/core/VpnConnection;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    new-instance v1, Lapp/fast/ssh/VoucherActivity$2;

    invoke-direct {v1, p0}, Lapp/fast/ssh/VoucherActivity$2;-><init>(Lapp/fast/ssh/VoucherActivity;)V

    invoke-virtual {v0, p1, v1}, Lapp/fast/ssh/core/VpnConnection;->beginRedeemVoucher([BLapp/fast/ssh/core/VpnConnection$RedeemResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lapp/fast/ssh/VoucherActivity$3;

    invoke-direct {v0, p0, p1}, Lapp/fast/ssh/VoucherActivity$3;-><init>(Lapp/fast/ssh/VoucherActivity;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, Lapp/fast/ssh/VoucherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onCreate$1$app-fast-ssh-VoucherActivity(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lapp/fast/ssh/core/VpnStatus;->isConnected()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const p1, 0x7f0902a9

    invoke-virtual {p0, p1}, Lapp/fast/ssh/VoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lapp/fast/ssh/VoucherActivity;->isValidUUID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lapp/fast/ssh/VoucherActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lapp/fast/ssh/VoucherActivity$$ExternalSyntheticLambda1;-><init>(Lapp/fast/ssh/VoucherActivity;Ljava/nio/ByteBuffer;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    const-string/jumbo p1, "\u2fbd"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    const-string/jumbo p1, "\u2fbe"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    const-string/jumbo p1, "\u2fbf"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onAccessTopUp()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0023

    invoke-virtual {p0, p1}, Lapp/fast/ssh/VoucherActivity;->setContentView(I)V

    const p1, 0x7f090284

    invoke-virtual {p0, p1}, Lapp/fast/ssh/VoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lapp/fast/ssh/VoucherActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lapp/fast/ssh/VoucherActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lapp/fast/ssh/VoucherActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const p1, 0x7f0901f5

    invoke-virtual {p0, p1}, Lapp/fast/ssh/VoucherActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lapp/fast/ssh/VoucherActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lapp/fast/ssh/VoucherActivity$$ExternalSyntheticLambda0;-><init>(Lapp/fast/ssh/VoucherActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onExpiredState()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lapp/fast/ssh/VoucherActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRemindState()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lapp/fast/ssh/core/SSHTunnelService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lapp/fast/ssh/VoucherActivity;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lapp/fast/ssh/VoucherActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {p0}, Lapp/fast/ssh/core/VpnStatus;->addVpnStateListener(Lapp/fast/ssh/core/VpnStatus$VpnStateListener;)V

    return-void
.end method

.method public onStartCountdown(J)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lapp/fast/ssh/VoucherActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lapp/fast/ssh/VoucherActivity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-static {p0}, Lapp/fast/ssh/core/VpnStatus;->removeVpnStateListener(Lapp/fast/ssh/core/VpnStatus$VpnStateListener;)V

    return-void
.end method

.method public onUpdateState(Lapp/fast/ssh/core/VpnStatus$VpnState;)V
    .locals 1

    .prologue
    sget-object v0, Lapp/fast/ssh/VoucherActivity$5;->$SwitchMap$app$fast$ssh$core$VpnStatus$VpnState:[I

    invoke-virtual {p1}, Lapp/fast/ssh/core/VpnStatus$VpnState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lapp/fast/ssh/VoucherActivity$4;

    invoke-direct {p1, p0}, Lapp/fast/ssh/VoucherActivity$4;-><init>(Lapp/fast/ssh/VoucherActivity;)V

    invoke-virtual {p0, p1}, Lapp/fast/ssh/VoucherActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
