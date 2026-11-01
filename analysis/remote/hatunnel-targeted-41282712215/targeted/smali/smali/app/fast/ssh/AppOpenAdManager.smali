.class public Lapp/fast/ssh/AppOpenAdManager;
.super Ljava/lang/Object;
.source "AppOpenAdManager.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final AD_UNIT_ID:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static isShowingAd:Z


# instance fields
.field private appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

.field private currentActivity:Landroid/app/Activity;

.field private loadCallback:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

.field private loadTime:J

.field private final myApplication:Lapp/fast/ssh/FastSSH;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\u2dd9"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/AppOpenAdManager;->AD_UNIT_ID:Ljava/lang/String;

    const-string/jumbo v0, "\u2dda"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lapp/fast/ssh/AppOpenAdManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lapp/fast/ssh/FastSSH;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lapp/fast/ssh/AppOpenAdManager;->loadTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lapp/fast/ssh/AppOpenAdManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    iput-object p1, p0, Lapp/fast/ssh/AppOpenAdManager;->myApplication:Lapp/fast/ssh/FastSSH;

    invoke-virtual {p1, p0}, Lapp/fast/ssh/FastSSH;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000(Lapp/fast/ssh/AppOpenAdManager;)Lcom/google/android/gms/ads/appopen/AppOpenAd;
    .locals 0

    iget-object p0, p0, Lapp/fast/ssh/AppOpenAdManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-object p0
.end method

.method static synthetic access$002(Lapp/fast/ssh/AppOpenAdManager;Lcom/google/android/gms/ads/appopen/AppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;
    .locals 0

    iput-object p1, p0, Lapp/fast/ssh/AppOpenAdManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-object p1
.end method

.method static synthetic access$102(Lapp/fast/ssh/AppOpenAdManager;J)J
    .locals 0

    iput-wide p1, p0, Lapp/fast/ssh/AppOpenAdManager;->loadTime:J

    return-wide p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lapp/fast/ssh/AppOpenAdManager;->isShowingAd:Z

    return p0
.end method

.method private getAdRequest()Lcom/google/android/gms/ads/AdRequest;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method private wasLoadTimeLessThanNHoursAgo(J)Z
    .locals 4

    .prologue
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lapp/fast/ssh/AppOpenAdManager;->loadTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    mul-long/2addr p1, v2

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public fetchAd()V
    .locals 4

    .prologue
    new-instance v0, Lapp/fast/ssh/Subscription;

    new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;

    iget-object v2, p0, Lapp/fast/ssh/AppOpenAdManager;->myApplication:Lapp/fast/ssh/FastSSH;

    invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V

    invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lapp/fast/ssh/AppOpenAdManager;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lapp/fast/ssh/AppOpenAdManager$1;

    invoke-direct {v0, p0}, Lapp/fast/ssh/AppOpenAdManager$1;-><init>(Lapp/fast/ssh/AppOpenAdManager;)V

    iput-object v0, p0, Lapp/fast/ssh/AppOpenAdManager;->loadCallback:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    invoke-direct {p0}, Lapp/fast/ssh/AppOpenAdManager;->getAdRequest()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lapp/fast/ssh/AppOpenAdManager;->myApplication:Lapp/fast/ssh/FastSSH;

    const-string/jumbo v2, "\u2dd9"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lapp/fast/ssh/AppOpenAdManager;->loadCallback:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    invoke-static {v1, v2, v0, v3}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    return-void
.end method

.method public isAdAvailable()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lapp/fast/ssh/AppOpenAdManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lapp/fast/ssh/AppOpenAdManager;->wasLoadTimeLessThanNHoursAgo(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lapp/fast/ssh/AppOpenAdManager;->currentActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lapp/fast/ssh/AppOpenAdManager;->currentActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lapp/fast/ssh/AppOpenAdManager;->currentActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lapp/fast/ssh/AppOpenAdManager;->showAdIfAvailable()V

    const-string/jumbo v0, "\u2dda"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u2ddb"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    return-void
.end method

.method public showAdIfAvailable()V
    .locals 3

    .prologue
    new-instance v0, Lapp/fast/ssh/Subscription;

    new-instance v1, Lapp/fast/ssh/PrefsSubscriptionStore;

    iget-object v2, p0, Lapp/fast/ssh/AppOpenAdManager;->myApplication:Lapp/fast/ssh/FastSSH;

    invoke-direct {v1, v2}, Lapp/fast/ssh/PrefsSubscriptionStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lapp/fast/ssh/Subscription;-><init>(Lapp/fast/ssh/BillingManager$SubscriptionStore;)V

    invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v0

    const-string/jumbo v1, "\u2dda"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    sget-boolean v0, Lapp/fast/ssh/AppOpenAdManager;->isShowingAd:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lapp/fast/ssh/AppOpenAdManager;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u2ddc"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    const/4 v0, 0x1

    sput-boolean v0, Lapp/fast/ssh/AppOpenAdManager;->isShowingAd:Z

    iget-object v0, p0, Lapp/fast/ssh/AppOpenAdManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    iget-object v1, p0, Lapp/fast/ssh/AppOpenAdManager;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->show(Landroid/app/Activity;)V

    return-void

    :cond_0
    const-string/jumbo v0, "\u2ddd"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-virtual {p0}, Lapp/fast/ssh/AppOpenAdManager;->fetchAd()V

    return-void
.end method
