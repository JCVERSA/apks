.class public final Lcom/vungle/ads/internal/privacy/PrivacyManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;,
        Lcom/vungle/ads/internal/privacy/PrivacyManager$a;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

.field private static ccpaConsent:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

.field private static final coppaStatus:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final disableAdId:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static filePreferences:Lcom/vungle/ads/internal/persistence/b;

.field private static gdprConsent:Ljava/lang/String;

.field private static gdprConsentMessageVersion:Ljava/lang/String;

.field private static gdprConsentSource:Ljava/lang/String;

.field private static gdprConsentTimestamp:Ljava/lang/Long;

.field private static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/privacy/PrivacyManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->disableAdId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->coppaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final saveCcpaConsent(Lcom/vungle/ads/internal/privacy/PrivacyConsent;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->filePreferences:Lcom/vungle/ads/internal/persistence/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "ccpa_status"

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/vungle/ads/internal/persistence/b;->apply()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private final saveCoppaConsent(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->filePreferences:Lcom/vungle/ads/internal/persistence/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "is_coppa"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;Z)Lcom/vungle/ads/internal/persistence/b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/vungle/ads/internal/persistence/b;->apply()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final saveGdprConsent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->filePreferences:Lcom/vungle/ads/internal/persistence/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "gdpr_status"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v0, "gdpr_source"

    .line 14
    .line 15
    invoke-virtual {p1, v0, p2}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/b;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const-string p2, "gdpr_message_version"

    .line 22
    .line 23
    invoke-virtual {p1, p2, p3}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/b;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const-string p2, "gdpr_timestamp"

    .line 30
    .line 31
    invoke-virtual {p1, p2, p4, p5}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;J)Lcom/vungle/ads/internal/persistence/b;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/vungle/ads/internal/persistence/b;->apply()V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public final allowDeviceIDFromTCF()Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->getGdprAppliesFromPreferences()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->getTcfStatus()Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, -0x1

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyManager$a;->$EnumSwitchMapping$1:[I

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    aget v0, v2, v0

    .line 31
    .line 32
    :goto_0
    if-eq v0, v1, :cond_4

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    if-eq v0, v1, :cond_3

    .line 36
    .line 37
    const/4 v1, 0x2

    .line 38
    if-eq v0, v1, :cond_2

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    if-ne v0, v1, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 45
    .line 46
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_2
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->ALLOW_ID:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->DISABLE_ID:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    :goto_1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->FALLBACK:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_5
    if-nez v0, :cond_6

    .line 60
    .line 61
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->FALLBACK:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_6
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;->ALLOW_ID:Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    .line 65
    .line 66
    :goto_2
    return-object v0
.end method

.method public final getCcpaStatus()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->ccpaConsent:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_IN:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    return-object v0
.end method

.method public final getConsentMessageVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsentMessageVersion:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public final getConsentSource()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsentSource:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "no_interaction"

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public final getConsentStatus()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsent:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "unknown"

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public final getConsentTimestamp()J
    .locals 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsentTimestamp:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    :goto_0
    return-wide v0
.end method

.method public final getCoppaStatus()Lcom/vungle/ads/internal/privacy/COPPA;
    .locals 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->coppaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/vungle/ads/internal/privacy/COPPA;->COPPA_NOTSET:Lcom/vungle/ads/internal/privacy/COPPA;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    sget-object v0, Lcom/vungle/ads/internal/privacy/COPPA;->COPPA_ENABLED:Lcom/vungle/ads/internal/privacy/COPPA;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    sget-object v0, Lcom/vungle/ads/internal/privacy/COPPA;->COPPA_DISABLED:Lcom/vungle/ads/internal/privacy/COPPA;

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    sget-object v0, Lcom/vungle/ads/internal/privacy/COPPA;->COPPA_NOTSET:Lcom/vungle/ads/internal/privacy/COPPA;

    .line 43
    .line 44
    return-object v0
.end method

.method public final getDisableAdId$vungle_ads_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->disableAdId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getGdprAppliesFromPreferences()Ljava/lang/Boolean;
    .locals 4

    .line 1
    const-string v0, "IABTCF_gdprApplies"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 5
    .line 6
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/4 v3, -0x1

    .line 11
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v2

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move-object v2, v1

    .line 23
    :goto_0
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    goto :goto_2

    .line 28
    :goto_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 29
    .line 30
    invoke-static {v2}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    :goto_2
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    goto :goto_6

    .line 45
    :cond_1
    :try_start_1
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    const-string v3, "-1"

    .line 50
    .line 51
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    const-string v2, "getString(IABTCF_GDPR_APPLIES, \"-1\")"

    .line 58
    .line 59
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_3

    .line 71
    :catchall_1
    move-exception v0

    .line 72
    goto :goto_5

    .line 73
    :cond_2
    move-object v0, v1

    .line 74
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :goto_4
    move-object v2, v0

    .line 79
    goto :goto_6

    .line 80
    :goto_5
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    goto :goto_4

    .line 91
    :goto_6
    invoke-static {v2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    move-object v2, v1

    .line 98
    :cond_3
    check-cast v2, Ljava/lang/Integer;

    .line 99
    .line 100
    if-nez v2, :cond_4

    .line 101
    .line 102
    goto :goto_7

    .line 103
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/4 v3, 0x1

    .line 108
    if-ne v0, v3, :cond_5

    .line 109
    .line 110
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 111
    .line 112
    goto :goto_8

    .line 113
    :cond_5
    :goto_7
    if-nez v2, :cond_6

    .line 114
    .line 115
    goto :goto_8

    .line 116
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_7

    .line 121
    .line 122
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 123
    .line 124
    :cond_7
    :goto_8
    return-object v1
.end method

.method public final getIABTCFString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v2, "IABTCF_TCString"

    .line 8
    .line 9
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object v1, v0

    .line 19
    :goto_1
    return-object v1
.end method

.method public final getPreviousTcfToken()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->filePreferences:Lcom/vungle/ads/internal/persistence/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "previous_tcf_token"

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/persistence/b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method

.method public final getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized init(Landroid/content/Context;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "context"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 16
    .line 17
    const-string v0, "PrivacyManager"

    .line 18
    .line 19
    const-string v1, "PrivacyManager already initialized"

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto/16 :goto_6

    .line 28
    .line 29
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    sget-object v1, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/vungle/ads/ServiceLocator$Companion;->getInstance(Landroid/content/Context;)Lcom/vungle/ads/ServiceLocator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-class v1, Lcom/vungle/ads/internal/persistence/b;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lcom/vungle/ads/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/vungle/ads/internal/persistence/b;

    .line 48
    .line 49
    sput-object p1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->filePreferences:Lcom/vungle/ads/internal/persistence/b;

    .line 50
    .line 51
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->disableAdId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/lang/Boolean;

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {p0, v1}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->saveDisableAdId(Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string v2, "disable_ad_id"

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Lcom/vungle/ads/internal/persistence/b;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsent:Ljava/lang/String;

    .line 81
    .line 82
    const-wide/16 v3, 0x0

    .line 83
    .line 84
    if-eqz v2, :cond_6

    .line 85
    .line 86
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsentSource:Ljava/lang/String;

    .line 87
    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    const-string v1, ""

    .line 91
    .line 92
    :cond_3
    move-object v5, v1

    .line 93
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsentMessageVersion:Ljava/lang/String;

    .line 94
    .line 95
    if-nez v1, :cond_4

    .line 96
    .line 97
    const-string v1, ""

    .line 98
    .line 99
    :cond_4
    move-object v6, v1

    .line 100
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsentTimestamp:Ljava/lang/Long;

    .line 101
    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v3

    .line 108
    :cond_5
    move-wide v7, v3

    .line 109
    move-object v1, p0

    .line 110
    move-object v3, v5

    .line 111
    move-object v4, v6

    .line 112
    move-wide v5, v7

    .line 113
    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->saveGdprConsent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_6
    const-string v1, "gdpr_status"

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/persistence/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_IN:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    if-eqz v5, :cond_7

    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    goto :goto_1

    .line 140
    :cond_7
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_OUT:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_8

    .line 151
    .line 152
    invoke-virtual {v2}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    :cond_8
    :goto_1
    sput-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsent:Ljava/lang/String;

    .line 157
    .line 158
    const-string v1, "gdpr_source"

    .line 159
    .line 160
    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/persistence/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    sput-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsentSource:Ljava/lang/String;

    .line 165
    .line 166
    const-string v1, "gdpr_message_version"

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/persistence/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    sput-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsentMessageVersion:Ljava/lang/String;

    .line 173
    .line 174
    const-string v1, "gdpr_timestamp"

    .line 175
    .line 176
    invoke-virtual {p1, v1, v3, v4}, Lcom/vungle/ads/internal/persistence/b;->getLong(Ljava/lang/String;J)J

    .line 177
    .line 178
    .line 179
    move-result-wide v1

    .line 180
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    sput-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsentTimestamp:Ljava/lang/Long;

    .line 185
    .line 186
    :goto_2
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->ccpaConsent:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 187
    .line 188
    if-eqz v1, :cond_9

    .line 189
    .line 190
    invoke-direct {p0, v1}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->saveCcpaConsent(Lcom/vungle/ads/internal/privacy/PrivacyConsent;)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_9
    const-string v1, "ccpa_status"

    .line 195
    .line 196
    invoke-virtual {p1, v1}, Lcom/vungle/ads/internal/persistence/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_OUT:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 201
    .line 202
    invoke-virtual {v2}, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->getValue()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_a

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_a
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyConsent;->OPT_IN:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 214
    .line 215
    :goto_3
    sput-object v2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->ccpaConsent:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 216
    .line 217
    :goto_4
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->coppaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Ljava/lang/Boolean;

    .line 224
    .line 225
    if-eqz v2, :cond_b

    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->saveCoppaConsent(Z)V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_b
    const-string v2, "is_coppa"

    .line 236
    .line 237
    invoke-virtual {p1, v2}, Lcom/vungle/ads/internal/persistence/b;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    if-eqz p1, :cond_c

    .line 242
    .line 243
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    :cond_c
    :goto_5
    const/4 p1, 0x1

    .line 247
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    .line 249
    .line 250
    monitor-exit p0

    .line 251
    return-void

    .line 252
    :goto_6
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    throw p1
.end method

.method public final saveDisableAdId(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->filePreferences:Lcom/vungle/ads/internal/persistence/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "disable_ad_id"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;Z)Lcom/vungle/ads/internal/persistence/b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/vungle/ads/internal/persistence/b;->apply()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final setPreviousTcfToken(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->filePreferences:Lcom/vungle/ads/internal/persistence/b;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string v1, "previous_tcf_token"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/b;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/vungle/ads/internal/persistence/b;->apply()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public final setSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    return-void
.end method

.method public final shouldReturnTrueForLegacy$vungle_ads_release()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->getIABTCFString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->getPreviousTcfToken()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->setPreviousTcfToken(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method public final shouldSendAdIds()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->allowDeviceIDFromTCF()Lcom/vungle/ads/internal/privacy/PrivacyManager$DeviceIdAllowed;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/vungle/ads/internal/privacy/PrivacyManager$a;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v0, v2, :cond_2

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    if-eq v0, v3, :cond_1

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    if-ne v0, v3, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 25
    .line 26
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->getDisableAdId$vungle_ads_release()Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    move v1, v2

    .line 43
    :cond_2
    return v1
.end method

.method public final shouldSendTCFString()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->getGdprAppliesFromPreferences()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->getTcfStatus()Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, -0x1

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v2, Lcom/vungle/ads/internal/privacy/PrivacyManager$a;->$EnumSwitchMapping$1:[I

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    aget v0, v2, v0

    .line 31
    .line 32
    :goto_0
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    if-eq v0, v1, :cond_4

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    if-eq v0, v2, :cond_4

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    if-ne v0, v1, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 45
    .line 46
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->shouldReturnTrueForLegacy$vungle_ads_release()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    const/4 v1, 0x0

    .line 56
    :cond_4
    :goto_2
    return v1
.end method

.method public final updateCcpaConsent(Lcom/vungle/ads/internal/privacy/PrivacyConsent;)V
    .locals 1

    .line 1
    const-string v0, "consent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->ccpaConsent:Lcom/vungle/ads/internal/privacy/PrivacyConsent;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->saveCcpaConsent(Lcom/vungle/ads/internal/privacy/PrivacyConsent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final updateCoppaConsent(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->coppaStatus:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->saveCoppaConsent(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final updateDisableAdId(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->disableAdId:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->saveDisableAdId(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final updateGdprConsent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "consent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "source"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object p1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsent:Ljava/lang/String;

    .line 12
    .line 13
    sput-object p2, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsentSource:Ljava/lang/String;

    .line 14
    .line 15
    sput-object p3, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsentMessageVersion:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const/16 p3, 0x3e8

    .line 22
    .line 23
    int-to-long v2, p3

    .line 24
    div-long v8, v0, v2

    .line 25
    .line 26
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    sput-object p3, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsentTimestamp:Ljava/lang/Long;

    .line 31
    .line 32
    sget-object p3, Lcom/vungle/ads/internal/privacy/PrivacyManager;->gdprConsentMessageVersion:Ljava/lang/String;

    .line 33
    .line 34
    if-nez p3, :cond_0

    .line 35
    .line 36
    const-string p3, ""

    .line 37
    .line 38
    :cond_0
    move-object v7, p3

    .line 39
    move-object v4, p0

    .line 40
    move-object v5, p1

    .line 41
    move-object v6, p2

    .line 42
    invoke-direct/range {v4 .. v9}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->saveGdprConsent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
