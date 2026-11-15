.class public Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;


# static fields
.field private static final ALL_PACKAGE:Ljava/lang/String; = "all"

.field public static final ENABLED:Z

.field public static final FEATURE_NAME:Ljava/lang/String; = "tran_theme"

.field public static final IS_FEATURE_ENABLED:Z

.field private static final IS_FORCE_DISABLE:Z

.field public static final IS_MP_RELEASE:Z = false

.field public static final OP_DISABLE:I = 0x1

.field public static final OP_DISABLE_ALL:I = 0x3

.field public static final OP_DISABLE_ONE:I = 0x4

.field public static final OP_ENABLE:I = 0x0

.field public static final OP_UNINSTALL:I = 0x2

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

.field private static final TAG:Ljava/lang/String; = "TranThubThemeManager"

.field public static final VERSION_CODE:Ljava/lang/String;

.field public static final VERSION_NAME:Ljava/lang/String;


# instance fields
.field private mThemeManager:Lcom/transsion/hubsdk/resource/theme/TranThemeManager;

.field private final mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/transsion/hubsdk/resource/theme/TranThemeManager;->VERSION_CODE:Ljava/lang/String;

    sput-object v0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->VERSION_CODE:Ljava/lang/String;

    sget-object v0, Lcom/transsion/hubsdk/resource/theme/TranThemeManager;->VERSION_CODE:Ljava/lang/String;

    sput-object v0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->VERSION_NAME:Ljava/lang/String;

    const-string v0, "persist.sys.override_resource.force_disable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->IS_FORCE_DISABLE:Z

    const-string v2, "ro.system_theme_241204_sr_sa_0006_0001_support"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->IS_FEATURE_ENABLED:Z

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getInstance()Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    :cond_1
    new-instance v0, Lcom/transsion/hubsdk/resource/theme/TranThemeManager;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->mThemeManager:Lcom/transsion/hubsdk/resource/theme/TranThemeManager;

    return-void
.end method

.method private convertPackageInfo(Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 14

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, "TranThubThemeManager"

    const-string v1, "convertPackageInfo"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p0, Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :cond_1
    move-object v9, p0

    new-instance p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    iget-object v2, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mAuthor:Ljava/lang/String;

    iget v4, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mVersion:I

    iget v5, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mType:I

    iget-object v6, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mAppDir:Ljava/lang/String;

    iget-object v7, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->getRootDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    iget-boolean v10, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mRunning:Z

    iget v11, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mTargetUserId:I

    iget v12, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mTypeFlags:I

    iget v13, p1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;->mEnabledOrder:I

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZIII)V

    return-object p0
.end method

.method public static isSupported()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->ENABLED:Z

    return v0
.end method

.method private wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Lcom/transsion/hubsdk/resource/theme/TranThemeManager$ResultCallback;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager$1;-><init>(Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)V

    return-object v0
.end method


# virtual methods
.method public disable(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->toggle(Ljava/lang/String;ILjava/lang/String;ZLcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public disable(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->disableAll(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public disableAll(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "all"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->operate(Ljava/lang/String;ILcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public disableOne(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->operate(Ljava/lang/String;ILcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public enable(Ljava/lang/String;ILjava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->toggle(Ljava/lang/String;ILjava/lang/String;ZLcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public enable(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->operate(Ljava/lang/String;ILcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public getAospPackageInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentRunningPackageInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentRunningPackageInfoList(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;

    invoke-direct {p0, v2}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->convertPackageInfo(Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getCurrentRunningTheme(I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getCurrentRunningTheme(I)Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->convertPackageInfo(Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledPackageInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x2

    .line 5
    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->getInstalledPackageInfoList(I)Ljava/util/List;

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
    iget-object v0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {v0, p1}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getInstalledPackageInfoList(I)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;

    .line 4
    invoke-direct {p0, v1}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->convertPackageInfo(Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->getPackageInfo(Ljava/lang/String;I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->getPackageInfo(Ljava/lang/String;I)Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->convertPackageInfo(Lcom/transsion/hubsdk/resource/theme/TranThemePackageInfo;)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getThemeFile(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 5
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->getRootDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public getThemeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const/4 v0, -0x2

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->getPackageInfo(Ljava/lang/String;I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->getThemeFile(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getThemeFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->getPackageInfo(Ljava/lang/String;I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->getThemeFile(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public install(Ljava/io/File;ZLcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->mThemeManager:Lcom/transsion/hubsdk/resource/theme/TranThemeManager;

    invoke-direct {p0, p3}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Lcom/transsion/hubsdk/resource/theme/TranThemeManager$ResultCallback;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0, p4}, Lcom/transsion/hubsdk/resource/theme/TranThemeManager;->install(Ljava/io/File;ZLcom/transsion/hubsdk/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public isIconThemeRunning()Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x2

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->isThemeRunning(II)Z

    move-result p0

    return p0
.end method

.method public isIconThemeRunning(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->isThemeRunning(II)Z

    move-result p0

    return p0
.end method

.method public isThemeRunning(I)Z
    .locals 1

    const/4 v0, -0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->isThemeRunning(II)Z

    move-result p0

    return p0
.end method

.method public isThemeRunning(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->mTranThemeFilesProvider:Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/resource/theme/TranThemeFilesProvider;->isThemeRunning(II)Z

    move-result p0

    return p0
.end method

.method public operate(Ljava/lang/String;ILcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->mThemeManager:Lcom/transsion/hubsdk/resource/theme/TranThemeManager;

    invoke-direct {p0, p3}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Lcom/transsion/hubsdk/resource/theme/TranThemeManager$ResultCallback;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0, p4}, Lcom/transsion/hubsdk/resource/theme/TranThemeManager;->operate(Ljava/lang/String;ILcom/transsion/hubsdk/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public toggle(Ljava/lang/String;ILjava/lang/String;ZLcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->mThemeManager:Lcom/transsion/hubsdk/resource/theme/TranThemeManager;

    invoke-direct {p0, p5}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->wrapCallback(Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;)Lcom/transsion/hubsdk/resource/theme/TranThemeManager$ResultCallback;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/hubsdk/resource/theme/TranThemeManager;->toggle(Ljava/lang/String;ILjava/lang/String;ZLcom/transsion/hubsdk/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public uninstall(Ljava/lang/String;Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeManager;->operate(Ljava/lang/String;ILcom/transsion/hubsdk/api/resource/theme/TranThemeManager$ResultCallback;Landroid/os/Handler;)V

    return-void
.end method
