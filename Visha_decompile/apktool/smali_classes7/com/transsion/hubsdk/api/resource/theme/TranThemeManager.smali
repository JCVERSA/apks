.class public Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;,
        Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$NoOpThemeManagerAdapter;
    }
.end annotation


# static fields
.field private static final NO_OP_SERVICE:Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

.field public static final STATUS_DUP_DISABLE:I = 0xa

.field public static final STATUS_DUP_ENABLE:I = 0x9

.field public static final STATUS_FAIL:I = 0x1

.field public static final STATUS_FAIL_TRANSFER_FILE:I = 0x100

.field public static final STATUS_FAIL_TRANSFER_FILE_NOT_FOUND:I = 0x102

.field public static final STATUS_FAIL_TRANSFER_FILE_PERMISSION_DENIED:I = 0x101

.field public static final STATUS_FEATURE_NOT_SUPPORTED:I = 0xb

.field public static final STATUS_FORBID_UNCHANGED:I = 0xc

.field public static final STATUS_ILLEGAL_ARGUMENT:I = 0x4

.field public static final STATUS_ILLEGAL_STATE:I = 0x3

.field public static final STATUS_MAGICFONT_DISABLED:I = 0xe

.field public static final STATUS_MAGICFONT_NOT_INSTALLED:I = 0xd

.field public static final STATUS_PACKAGE_FILE_NOT_FOUND:I = 0x6

.field public static final STATUS_PACKAGE_FORMAT_ERROR:I = 0x8

.field public static final STATUS_PACKAGE_NOT_FOUND:I = 0x7

.field public static final STATUS_PERMISSION_DENIED:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x0

.field public static final STATUS_TIMEOUT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TranThemeManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;

.field private mContext:Landroid/content/Context;

.field private mThubService:Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$NoOpThemeManagerAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$NoOpThemeManagerAdapter;-><init>(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$1;)V

    sput-object v0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->NO_OP_SERVICE:Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private hasAospThemeManager()Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "com.transsion.resource.theme.TranThemeManager"

    const-class v1, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, p0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    :catch_0
    return p0
.end method


# virtual methods
.method public disable(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 8

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->disable(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public disable(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->disable(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public disableAll(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 2

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->disableAll(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public disableOne(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 2

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->disableOne(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public enable(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 8

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->enable(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public enable(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->enable(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public getCurrentRunningPackageInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->getCurrentRunningPackageInfoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentRunningTheme(I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 2

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->getCurrentRunningTheme(I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledPackageInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->getInstalledPackageInfoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledPackageInfoList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->getInstalledPackageInfoList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInfo(Ljava/lang/String;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->getPackageInfo(Ljava/lang/String;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 2

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->getPackageInfo(Ljava/lang/String;I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidC()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mThubService:Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;

    invoke-direct {p1, p2}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mThubService:Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;

    :cond_0
    return-object p1

    :cond_1
    invoke-direct {p0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->hasAospThemeManager()Z

    move-result p1

    const-string p2, "TranThemeManager"

    if-eqz p1, :cond_3

    const-string p1, "TranAospThemeManager"

    invoke-static {p2, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mAospService:Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mAospService:Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;

    :cond_2
    return-object p1

    :cond_3
    const-string p0, "No TranAospThemeManager"

    invoke-static {p2, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->NO_OP_SERVICE:Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    return-object p0
.end method

.method public getThemeFile(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 3
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->getThemeFile(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getThemeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->getThemeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getThemeFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->getThemeFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public install(Ljava/io/File;ZLcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 2

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->install(Ljava/io/File;ZLcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public isIconThemeRunning()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->isIconThemeRunning()Z

    move-result p0

    return p0
.end method

.method public isIconThemeRunning(I)Z
    .locals 2

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->isIconThemeRunning(I)Z

    move-result p0

    return p0
.end method

.method public isThemeRunning(I)Z
    .locals 2

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->isThemeRunning(I)Z

    move-result p0

    return p0
.end method

.method public isThemeRunning(II)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->isThemeRunning(II)Z

    move-result p0

    return p0
.end method

.method public operate(Ljava/lang/String;ILcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 2

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->operate(Ljava/lang/String;ILcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public toggle(Ljava/lang/String;ILjava/lang/String;ZLcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 9

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->toggle(Ljava/lang/String;ILjava/lang/String;ZLcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public uninstall(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 2

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager;->getService(Ljava/lang/String;Landroid/content/Context;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->uninstall(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method
