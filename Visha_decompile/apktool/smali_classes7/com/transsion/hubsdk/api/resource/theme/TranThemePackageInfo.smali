.class public Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COUNT_OF_TYPE:I = 0xc

.field public static final FEATURE_COLOERD_ICON:Ljava/lang/String; = "colored_icon"

.field public static final FEATURE_KEY:Ljava/lang/String; = "feature"

.field public static final FEATURE_POVA7_PREBUILT:Ljava/lang/String; = "pova7_prebuilt"

.field public static final INSTALL_SOURCE_KEY:Ljava/lang/String; = "install_source"

.field public static final INSTALL_TIMESTAMP_KEY:Ljava/lang/String; = "install_timestamp"

.field public static final PREBUILT_KEY:Ljava/lang/String; = "prebuilt"

.field public static final SORT_BY_ENABLE_ORDER_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_BY_INSTALL_TIME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORT_BY_INSTALL_TIME_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPES_ARRAY:[I

.field public static final TYPE_AOD:I = 0x4

.field public static final TYPE_DYNAMIC_WALLPAPER:I = 0x8

.field public static final TYPE_FONTS:I = 0x3

.field public static final TYPE_GLOBAL:I = 0x0

.field public static final TYPE_ICONS:I = 0x1

.field public static final TYPE_LOCKSCREEN:I = 0x9

.field public static final TYPE_LOCKSCREEN_WITH_DYNAMIC_WALLPAPER:I = 0xb

.field public static final TYPE_LOCKSCREEN_WITH_STATIC_WALLPAPER:I = 0xa

.field public static final TYPE_RINGTONE:I = 0x5

.field public static final TYPE_WALLPAPER:I = 0x2

.field public static final TYPE_WALLPAPER_DESKTOP:I = 0x6

.field public static final TYPE_WALLPAPER_LOCKSCREEN:I = 0x7


# instance fields
.field public final appDir:Ljava/lang/String;

.field public final author:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final enabledOrder:I

.field public final id:Ljava/lang/String;

.field private mAospService:Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;

.field private final mBundle:Landroid/os/Bundle;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end field

.field private final mRootDir:Ljava/lang/String;
    .annotation build Landroid/annotation/NonNull;
    .end annotation
.end field

.field public final running:Z

.field public final targetUserId:I

.field public final type:I

.field public final typeFlags:I

.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->TYPES_ARRAY:[I

    new-instance v0, Lfya;

    invoke-direct {v0}, Lfya;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->SORT_BY_INSTALL_TIME:Ljava/util/Comparator;

    new-instance v0, Lgya;

    invoke-direct {v0}, Lgya;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->SORT_BY_INSTALL_TIME_REVERSE:Ljava/util/Comparator;

    new-instance v0, Lhya;

    invoke-direct {v0}, Lhya;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->SORT_BY_ENABLE_ORDER_REVERSE:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZIII)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->id:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->author:Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->version:I

    .line 18
    iput p4, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->type:I

    .line 19
    iput-object p5, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->appDir:Ljava/lang/String;

    .line 20
    iput-boolean p9, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->running:Z

    .line 21
    iput-object p6, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->description:Ljava/lang/String;

    .line 22
    iput-object p7, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mRootDir:Ljava/lang/String;

    .line 23
    iput-object p8, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mBundle:Landroid/os/Bundle;

    .line 24
    iput p10, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->targetUserId:I

    .line 25
    iput p11, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->typeFlags:I

    .line 26
    iput p12, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->enabledOrder:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->id:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->author:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->version:I

    .line 5
    iput p4, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->type:I

    .line 6
    iput-object p5, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->appDir:Ljava/lang/String;

    .line 7
    iput-boolean p7, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->running:Z

    .line 8
    iput-object p6, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->description:Ljava/lang/String;

    .line 9
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mRootDir:Ljava/lang/String;

    .line 10
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mBundle:Landroid/os/Bundle;

    .line 11
    iput p8, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->targetUserId:I

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->typeFlags:I

    .line 13
    iput p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->enabledOrder:I

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;)J
    .locals 2

    invoke-static {p0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->lambda$static$0(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->lambda$static$2(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;)J
    .locals 2

    invoke-static {p0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->lambda$static$1(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getAospPackageInfo()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->getService()Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->id:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;->getAospPackageInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getTypeFlag(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method private varargs invokeAospPackageInfoMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->getAospPackageInfo()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1, p0, p3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;)J
    .locals 2

    const-string v0, "install_timestamp"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static synthetic lambda$static$1(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;)J
    .locals 2

    const-string v0, "install_timestamp"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    neg-long v0, v0

    return-wide v0
.end method

.method private static synthetic lambda$static$2(Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;)I
    .locals 0

    iget p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->enabledOrder:I

    neg-int p0, p0

    return p0
.end method

.method public static varargs typeArrayToBitFlags([I)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget v2, p0, v0

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getAppDataDir()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mRootDir:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->appDir:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCmfColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmf_id_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "getExtra"

    invoke-direct {p0, v1, v0, p1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->invokeAospPackageInfoMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "getExtra"

    invoke-direct {p0, v1, v0, p1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->invokeAospPackageInfoMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    const-string v0, "feature"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidC()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "getLong"

    invoke-direct {p0, v3, v0, p1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->invokeAospPackageInfoMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getRootDir()Ljava/io/File;
    .locals 3

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidC()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mRootDir:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "getRootDir"

    invoke-direct {p0, v2, v1, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->invokeAospPackageInfoMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method public getService()Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeManagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mAospService:Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mAospService:Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeManager;

    :cond_0
    return-object v0
.end method

.method public hasCmfColor()Z
    .locals 5

    .line 7
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidC()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 8
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9
    const-string v3, "cmf_id_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_1
    return v2

    .line 10
    :cond_2
    new-array v0, v2, [Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "hasCmfColor"

    invoke-direct {p0, v4, v0, v3}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->invokeAospPackageInfoMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_3

    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method public hasCmfColor(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmf_id_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidC()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 5
    :cond_1
    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "hasExtra"

    invoke-direct {p0, v2, v1, p1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->invokeAospPackageInfoMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public hasExtra(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "hasExtra"

    invoke-direct {p0, v1, v0, p1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->invokeAospPackageInfoMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPrebuilt()Z
    .locals 1

    const-string v0, "prebuilt"

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "putLong"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->invokeAospPackageInfoMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/String;

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "putString"

    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->invokeAospPackageInfoMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranThemePackageInfo { id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " author=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " running="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->running:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enableOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;->enabledOrder:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
