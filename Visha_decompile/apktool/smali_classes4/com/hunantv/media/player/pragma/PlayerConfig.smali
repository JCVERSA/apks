.class public Lcom/hunantv/media/player/pragma/PlayerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static Crash_Path:Ljava/lang/String; = null

.field public static final IMGO4_LIB_VERSION:Ljava/lang/String; = "5.5.3"

.field public static final IMGO_LOG_LEVEL_DEBUG:I = 0x3

.field public static final IMGO_LOG_LEVEL_DEFAULT:I = 0x1

.field public static final IMGO_LOG_LEVEL_ERROR:I = 0x6

.field public static final IMGO_LOG_LEVEL_FATAL:I = 0x7

.field public static final IMGO_LOG_LEVEL_INFO:I = 0x4

.field public static final IMGO_LOG_LEVEL_SILENT:I = 0x8

.field public static final IMGO_LOG_LEVEL_UNKNOWN:I = 0x0

.field public static final IMGO_LOG_LEVEL_VERBOSE:I = 0x2

.field public static final IMGO_LOG_LEVEL_WARN:I = 0x5

.field public static final IMGO_LOG_REPORT_BRIEF:I = 0x1

.field public static final IMGO_LOG_REPORT_DETAIL:I = 0x2

.field public static final IMGO_LOG_REPORT_NONE:I = 0x0

.field public static final IMGO_VERSION_TIME:Ljava/lang/String; = "20230314"

.field public static final MGTVPLAER4_VERSION:Ljava/lang/String; = "25.3"

.field private static PackageName:Ljava/lang/String; = null

.field private static VersionName:Ljava/lang/String; = null

.field public static mMTK_Chip_use_systemplayer:Ljava/lang/Boolean; = null

.field private static sGifUserAgent:Ljava/lang/String; = null

.field public static use_log_level:I = 0x3

.field public static use_report_level:I


# instance fields
.field private mProxyType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/hunantv/media/player/pragma/PlayerConfig;->mMTK_Chip_use_systemplayer:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/hunantv/media/player/pragma/PlayerConfig;->mProxyType:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getGifUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/hunantv/media/player/pragma/PlayerConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/player/pragma/PlayerConfig;->sGifUserAgent:Ljava/lang/String;

    invoke-static {v1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/player/pragma/PlayerConfig;->getPackageNameOnce(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/hunantv/media/player/pragma/PlayerConfig;->getVersionNameOnce(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "ImgoMediaPlayerLib"

    const-string v3, "gif"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".V"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Linux;Android "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")) "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/media/player/pragma/PlayerConfig;->getLibFullVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/hunantv/media/player/pragma/PlayerConfig;->sGifUserAgent:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/hunantv/media/player/pragma/PlayerConfig;->sGifUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getLibFullVersion()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/hunantv/media/player/h;->ad()I

    move-result v0

    const-string v1, "."

    if-lez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5.5.3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "20230314"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageNameOnce(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Lcom/hunantv/media/player/pragma/PlayerConfig;->PackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/hunantv/media/player/pragma/PlayerConfig;->PackageName:Ljava/lang/String;

    :cond_1
    sget-object p0, Lcom/hunantv/media/player/pragma/PlayerConfig;->PackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static getVersionNameOnce(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/hunantv/media/player/pragma/PlayerConfig;->VersionName:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/hunantv/media/report/ReportParams$GlobalSet;->getsAppVersionName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/hunantv/media/report/ReportParams$GlobalSet;->getsAppVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hunantv/media/report/ReportParams$GlobalSet;->getsAppVersionName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    sput-object p0, Lcom/hunantv/media/player/pragma/PlayerConfig;->VersionName:Ljava/lang/String;

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcom/hunantv/media/player/pragma/PlayerConfig;->getPackageNameOnce(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :goto_2
    sget-object p0, Lcom/hunantv/media/player/pragma/PlayerConfig;->VersionName:Ljava/lang/String;

    return-object p0
.end method

.method public static setPlayerCodecFailedMTKSysPlayer(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/hunantv/media/player/pragma/PlayerConfig;->mMTK_Chip_use_systemplayer:Ljava/lang/Boolean;

    return-void
.end method

.method public static setPlayerCrachRecordPath(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/hunantv/media/player/pragma/PlayerConfig;->Crash_Path:Ljava/lang/String;

    return-void
.end method

.method public static setPlayerDebug(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :goto_0
    sput p0, Lcom/hunantv/media/player/pragma/PlayerConfig;->use_report_level:I

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/4 p0, 0x3

    sput p0, Lcom/hunantv/media/player/pragma/PlayerConfig;->use_log_level:I

    return-void
.end method

.method public static setPlayerDebugInfo(I)V
    .locals 0

    sput p0, Lcom/hunantv/media/player/pragma/PlayerConfig;->use_report_level:I

    return-void
.end method

.method public static setPlayerDebugLogLevel(I)V
    .locals 0

    sput p0, Lcom/hunantv/media/player/pragma/PlayerConfig;->use_log_level:I

    return-void
.end method


# virtual methods
.method public getUserAgent(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string p2, "ffmpeg"

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const-string p2, "mediacodecNative"

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    const-string p2, "system"

    goto :goto_1

    :cond_3
    :goto_0
    const-string p2, "?"

    :goto_1
    invoke-static {p1}, Lcom/hunantv/media/player/pragma/PlayerConfig;->getPackageNameOnce(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/hunantv/media/player/pragma/PlayerConfig;->getVersionNameOnce(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImgoMediaPlayerLib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".V"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (Linux;Android "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")) "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/media/player/pragma/PlayerConfig;->mProxyType:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/media/player/pragma/PlayerConfig;->getLibFullVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setProxyType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/pragma/PlayerConfig;->mProxyType:Ljava/lang/String;

    return-void
.end method
