.class public Lcom/transsion/hubsdk/api/provider/TranSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/provider/TranSettings$System;,
        Lcom/transsion/hubsdk/api/provider/TranSettings$Global;,
        Lcom/transsion/hubsdk/api/provider/TranSettings$Secure;
    }
.end annotation


# static fields
.field public static final ASSISTANT:Ljava/lang/String; = "assistant"

.field public static final CROSS_PROFILE_CALENDAR_ENABLED:Ljava/lang/String; = "cross_profile_calendar_enabled"

.field public static final MANAGED_PROFILE_CONTACT_REMOTE_SEARCH:Ljava/lang/String; = "managed_profile_contact_remote_search"

.field public static final SCREEN_BRIGHTNESS_FLOAT:Ljava/lang/String; = "screen_brightness_float"

.field public static final SHOW_TOUCHES:Ljava/lang/String; = "show_touches"

.field private static final TAG:Ljava/lang/String; = "TranSettings"

.field public static final USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field public static final ZEN_MODE_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final ZEN_MODE_OFF:I

.field protected static sAospService:Lcom/transsion/hubsdk/aosp/provider/TranAospSettings;

.field protected static sThubService:Lcom/transsion/hubsdk/core/provider/TranThubSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/provider/TranSettings;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;->getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getSecureIntForUser(Ljava/lang/String;II)I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/provider/TranSettings;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;->getSecureIntForUser(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/provider/TranSettings;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;->getSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;
    .locals 1

    invoke-static {p0}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsion/hubsdk/api/provider/TranSettings;->TAG:Ljava/lang/String;

    const-string v0, "TranThubSettings"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/hubsdk/api/provider/TranSettings;->sThubService:Lcom/transsion/hubsdk/core/provider/TranThubSettings;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/hubsdk/core/provider/TranThubSettings;

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/provider/TranThubSettings;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/provider/TranSettings;->sThubService:Lcom/transsion/hubsdk/core/provider/TranThubSettings;

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Lcom/transsion/hubsdk/api/provider/TranSettings;->TAG:Ljava/lang/String;

    const-string v0, "TranAospSettings"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/hubsdk/api/provider/TranSettings;->sAospService:Lcom/transsion/hubsdk/aosp/provider/TranAospSettings;

    if-nez p0, :cond_2

    new-instance p0, Lcom/transsion/hubsdk/aosp/provider/TranAospSettings;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/provider/TranAospSettings;-><init>()V

    sput-object p0, Lcom/transsion/hubsdk/api/provider/TranSettings;->sAospService:Lcom/transsion/hubsdk/aosp/provider/TranAospSettings;

    :cond_2
    return-object p0
.end method

.method public static getSystemFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/provider/TranSettings;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;->getSystemFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    return p0
.end method

.method public static putSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/provider/TranSettings;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;->putSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static putSecureIntForUser(Ljava/lang/String;II)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/provider/TranSettings;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;->putSecureIntForUser(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static putSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/provider/TranSettings;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;->putSecureStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putSystemFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/hubsdk/api/provider/TranSettings;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;->putSystemFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getSecureStringForUser(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/provider/TranSettings;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;->getSecureStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemFloatForUser(Ljava/lang/String;FI)F
    .locals 0

    .line 1
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/provider/TranSettings;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;->getSystemFloatForUser(Ljava/lang/String;FI)F

    move-result p0

    return p0
.end method

.method public getSystemLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 6

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/provider/TranSettings;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;->getSystemLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public putGlobalInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/provider/TranSettings;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;->putGlobalInt(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putSecureInt(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/provider/TranSettings;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;->putSecureInt(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putSecureStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/provider/TranSettings;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;->putSecureStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putSystemFloatForUser(Ljava/lang/String;FI)Z
    .locals 0

    .line 1
    sget-object p0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/hubsdk/api/provider/TranSettings;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/provider/ITranSettingsAdapter;->putSystemFloatForUser(Ljava/lang/String;FI)Z

    move-result p0

    return p0
.end method
