.class public Lapp/fast/ssh/FastSSH;
.super Landroid/app/Application;
.source "FastSSH.java"


# static fields
.field private static final ONESIGNAL_APP_ID:Ljava/lang/String;

.field private static appOpenAdManager:Lapp/fast/ssh/AppOpenAdManager;

.field private static weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private billingManager:Lapp/fast/ssh/BillingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\u2e86"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/FastSSH;->ONESIGNAL_APP_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private applyTheme()V
    .locals 3

    .prologue
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "\u2e75"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2e76"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void

    :cond_1
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void

    :cond_2
    const/4 v0, -0x1

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    return-void
.end method

.method private deviceId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lapp/fast/ssh/FastSSH;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "\u2e77"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lapp/fast/ssh/FastSSH;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method static synthetic lambda$onCreate$0(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .locals 0

    return-void
.end method

.method private setTLSVersion()V
    .locals 6

    .prologue
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "\u2e78"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2e79"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "\u2e7a"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2e7b"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u2e7c"

    invoke-static {v3}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u2e7d"

    invoke-static {v4}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lapp/fast/ssh/core/connection/SSLTunnelConnection;->TLS_VERSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lapp/fast/ssh/core/connection/SSLTunnelConnection;->TLS_VERSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    sget-object v0, Lapp/fast/ssh/core/connection/SSLTunnelConnection;->TLS_VERSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lapp/fast/ssh/core/connection/SSLTunnelConnection;->TLS_VERSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    sget-object v0, Lapp/fast/ssh/core/connection/SSLTunnelConnection;->TLS_VERSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lapp/fast/ssh/core/connection/SSLTunnelConnection;->TLS_VERSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    sget-object v0, Lapp/fast/ssh/core/connection/SSLTunnelConnection;->TLS_VERSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lapp/fast/ssh/core/connection/SSLTunnelConnection;->TLS_VERSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    sget-object v0, Lapp/fast/ssh/core/connection/SSLTunnelConnection;->TLS_VERSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lapp/fast/ssh/core/connection/SSLTunnelConnection;->TLS_VERSIONS:Ljava/util/ArrayList;

    const-string/jumbo v5, "\u2e7e"

    invoke-static {v5}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lapp/fast/ssh/core/connection/SSLTunnelConnection;->TLS_VERSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lapp/fast/ssh/core/connection/SSLTunnelConnection;->TLS_VERSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lapp/fast/ssh/core/connection/SSLTunnelConnection;->TLS_VERSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lapp/fast/ssh/core/connection/SSLTunnelConnection;->TLS_VERSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getBillingManager()Lapp/fast/ssh/BillingManager;
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/FastSSH;->billingManager:Lapp/fast/ssh/BillingManager;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;

    new-instance v0, Lapp/fast/ssh/HttpTokenExchange;

    const-string/jumbo v1, "\u2e7f"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lapp/fast/ssh/HttpTokenExchange;-><init>(Ljava/lang/String;)V

    new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;

    invoke-direct {v1, p0}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    new-instance v2, Lapp/fast/ssh/BillingManager;

    invoke-direct {p0}, Lapp/fast/ssh/FastSSH;->deviceId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v1, v3}, Lapp/fast/ssh/BillingManager;-><init>(Landroid/content/Context;Lapp/fast/ssh/BillingManager$TokenExchange;Lapp/fast/ssh/BillingManager$SubscriptionStore;Ljava/lang/String;)V

    iput-object v2, p0, Lapp/fast/ssh/FastSSH;->billingManager:Lapp/fast/ssh/BillingManager;

    new-instance v0, Lapp/fast/ssh/FastSSH$1;

    invoke-direct {v0, p0}, Lapp/fast/ssh/FastSSH$1;-><init>(Lapp/fast/ssh/FastSSH;)V

    invoke-virtual {v2, v0}, Lapp/fast/ssh/BillingManager;->setSessionControl(Lapp/fast/ssh/BillingManager$SessionControl;)V

    iget-object v0, p0, Lapp/fast/ssh/FastSSH;->billingManager:Lapp/fast/ssh/BillingManager;

    invoke-virtual {v0}, Lapp/fast/ssh/BillingManager;->start()V

    :try_start_0
    invoke-static {}, Lorg/conscrypt/Conscrypt;->newProvider()Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    invoke-static {v1}, Lorg/conscrypt/Conscrypt;->setUseEngineSocketByDefault(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string/jumbo v1, "\u2e80"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2e81"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "\u2e82"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lsposed/hiddenapibypass/HiddenApiBypass;->addHiddenApiExemptions([Ljava/lang/String;)Z

    :cond_0
    new-instance v0, Lapp/fast/ssh/FastSSH$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lapp/fast/ssh/FastSSH$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    const-string/jumbo v0, "\u2e83"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u2e84"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2e85"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lapp/fast/ssh/FastSSH;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lapp/fast/ssh/FastSSH;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/onesignal/OneSignal;->getDebug()Lcom/onesignal/debug/IDebugManager;

    move-result-object v0

    sget-object v1, Lcom/onesignal/debug/LogLevel;->VERBOSE:Lcom/onesignal/debug/LogLevel;

    invoke-interface {v0, v1}, Lcom/onesignal/debug/IDebugManager;->setLogLevel(Lcom/onesignal/debug/LogLevel;)V

    const-string/jumbo v0, "\u2e86"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->initWithContext(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/onesignal/OneSignal;->getNotifications()Lcom/onesignal/notifications/INotificationsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/onesignal/Continue;->none()Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/onesignal/notifications/INotificationsManager;->requestPermission(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    new-instance v0, Lapp/fast/ssh/AppOpenAdManager;

    invoke-direct {v0, p0}, Lapp/fast/ssh/AppOpenAdManager;-><init>(Lapp/fast/ssh/FastSSH;)V

    sput-object v0, Lapp/fast/ssh/FastSSH;->appOpenAdManager:Lapp/fast/ssh/AppOpenAdManager;

    invoke-direct {p0}, Lapp/fast/ssh/FastSSH;->applyTheme()V

    invoke-direct {p0}, Lapp/fast/ssh/FastSSH;->setTLSVersion()V

    return-void
.end method
