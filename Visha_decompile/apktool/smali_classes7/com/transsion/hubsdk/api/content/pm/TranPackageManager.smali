.class public Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;
    }
.end annotation


# static fields
.field public static final DELETE_SYSTEM_APP:I = 0x4

.field public static final FLAG_PERMISSION_GRANTED_BY_DEFAULT:I = 0x20

.field public static final FLAG_PERMISSION_POLICY_FIXED:I = 0x4

.field public static final FLAG_PERMISSION_RESTRICTION_INSTALLER_EXEMPT:I = 0x800

.field public static final FLAG_PERMISSION_RESTRICTION_SYSTEM_EXEMPT:I = 0x1000

.field public static final FLAG_PERMISSION_RESTRICTION_UPGRADE_EXEMPT:I = 0x2000

.field public static final FLAG_PERMISSION_REVIEW_REQUIRED:I = 0x40

.field public static final FLAG_PERMISSION_SYSTEM_FIXED:I = 0x10

.field public static final FLAG_PERMISSION_USER_SENSITIVE_WHEN_DENIED:I = 0x200

.field public static final FLAG_PERMISSION_USER_SENSITIVE_WHEN_GRANTED:I = 0x100

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field public static final MATCH_ANY_USER:I = 0x400000

.field public static final MATCH_HIDDEN_UNTIL_INSTALLED_COMPONENTS:I = 0x20000000

.field public static final PACKAGE_NAME_ARGUMENT_EXCEPTION:Ljava/lang/String; = "package name should not be null"

.field private static final TAG:Ljava/lang/String; = "TranPackageManager"

.field public static final USERID_ARGUMENT_EXCEPTION:Ljava/lang/String; = "userId is wrong"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

.field private mThubService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;


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

.method public static synthetic a(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->lambda$deletePackageAsUser$0(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->lambda$deletePackageAsOOBE$1(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic lambda$deletePackageAsOOBE$1(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;Ljava/lang/String;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$deletePackageAsUser$0(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;Ljava/lang/String;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkDefaultCalendar()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->checkDefaultCalendar()V

    return-void
.end method

.method public checkDefaultGaller()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->checkDefaultGaller()V

    return-void
.end method

.method public checkDefaultMusic()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->checkDefaultMusic()V

    return-void
.end method

.method public deletePackageAsOOBE(Ljava/lang/String;Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;I)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    new-instance v0, Lwxa;

    invoke-direct {v0, p2}, Lwxa;-><init>(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;)V

    invoke-interface {p0, p1, v0, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->deletePackageAsOOBE(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;I)V

    return-void
.end method

.method public deletePackageAsUser(Ljava/lang/String;Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;II)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_1

    const/high16 v0, -0x80000000

    if-le p4, v0, :cond_0

    const v0, 0x7fffffff

    if-ge p4, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    new-instance v0, Lxxa;

    invoke-direct {v0, p2}, Lxxa;-><init>(Lcom/transsion/hubsdk/api/content/pm/TranPackageManager$ITranPackageDeleteObserver;)V

    invoke-interface {p0, p1, v0, p3, p4}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllHiddenApps()[Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getAllHiddenApps()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getApplicationNotifyScreenOn(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getApplicationNotifyScreenOn(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getDefaulCalendarPackageNameAsUser(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getDefaulCalendarPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultGallerPackageNameAsUser(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getDefaultGallerPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultMusicPackageNameAsUser(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getDefaultMusicPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledApplicationsAsUser(II)Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    if-ltz p2, :cond_0

    const v0, 0x7fffffff

    if-ge p2, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstalledApplicationsInDualSpace(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getInstalledApplicationsInDualSpace(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInstalledPackagesAsUser(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33182:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "packageName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPermissionControllerPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubPackageManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->mThubService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->mThubService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospPackageManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->mAospService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->mAospService:Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    :cond_2
    return-object p1
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;I)I
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    const v0, 0x7fffffff

    if-ge p2, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isRemovableSysApp(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->isRemovableSysApp(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "packageName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public markAsUnremovableSystemAppTemp(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidT()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33361:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->markAsUnremovableSystemAppTemp(Ljava/lang/String;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "packageName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    if-ltz p3, :cond_0

    const v0, 0x7fffffff

    if-ge p3, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33211:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public reinstall(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->reinstall(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 7

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33121:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public setApplicationEnabledSettingForPM(Ljava/lang/String;II)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setApplicationEnabledSettingForPM(Ljava/lang/String;II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setApplicationNotifyScreenOn(Ljava/lang/String;II)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setApplicationNotifyScreenOn(Ljava/lang/String;II)V

    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_1

    const/high16 v0, -0x80000000

    if-le p4, v0, :cond_0

    const v0, 0x7fffffff

    if-ge p4, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "userId is wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDefaulCalendarPackageNameAsUser(Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setDefaulCalendarPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x2
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setDefaultGallerPackageNameAsUser(Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setDefaultGallerPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultMusicPackageNameAsUser(Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33281:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setDefaultMusicPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setHomeActivity(Landroid/content/ComponentName;I)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x3
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/pm/TranPackageManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageManagerAdapter;->setHomeActivity(Landroid/content/ComponentName;I)V

    return-void
.end method
