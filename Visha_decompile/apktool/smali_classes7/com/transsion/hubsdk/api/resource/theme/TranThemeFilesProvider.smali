.class public Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$Listener;,
        Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$NoOpThemeFilesProviderAdapter;
    }
.end annotation


# static fields
.field private static final NO_OP_SERVICE:Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

.field private static final TAG:Ljava/lang/String; = "TranThemeFilesProvider"

.field public static final WALLPAPER_HOME:I = 0x0

.field public static final WALLPAPER_LOCK:I = 0x1


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeFilesProvider;

.field private mThubService:Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$NoOpThemeFilesProviderAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$NoOpThemeFilesProviderAdapter;-><init>(Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$1;)V

    sput-object v0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->NO_OP_SERVICE:Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasAospThemeFilesProvider()Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "com.transsion.resource.theme.TranThemeFilesProvider"

    const-class v1, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;

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
.method public getAppIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getAppIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getAppIcon(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getAppIcon(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getAppIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 3
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getAppIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getAppIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 4
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getAppIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAppIcon(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentAppIcon(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAppIcon(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentAppIcon(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAppIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 3
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentAppIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAppIcon(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 4
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentAppIcon(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDraggableIcons(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentDraggableIcons(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDraggableIcons(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentDraggableIcons(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDraggableIcons(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentDraggableIcons(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentDraggableIcons(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentDraggableIcons(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentFontDescription()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentFontDescription()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentFontPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentFontPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconBackground()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentIconBackground()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconBackground(I)Ljava/io/File;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentIconBackground(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconForeground()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentIconForeground()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconForeground(I)Ljava/io/File;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentIconForeground(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconMask()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentIconMask()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconMask(I)Ljava/io/File;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentIconMask(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconSaturationLevel()F
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentIconSaturationLevel()F

    move-result p0

    return p0
.end method

.method public getCurrentIconSaturationLevel(I)F
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentIconSaturationLevel(I)F

    move-result p0

    return p0
.end method

.method public getCurrentIconTransformMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentIconTransformMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentIconTransformMatrix(I)Landroid/graphics/Matrix;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentIconTransformMatrix(I)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentRunningTheme(I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentRunningTheme(I)Lcom/transsion/hubsdk/api/resource/theme/TranThemePackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentThemeResources()Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentThemeResources()Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentThemeRootFile(I)Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentThemeRootFile(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentThemeRootFile(II)Ljava/io/File;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getCurrentThemeRootFile(II)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getDraggableIcons(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getDraggableIcons(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDraggableIcons(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getDraggableIcons(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDraggableIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getDraggableIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDraggableIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getDraggableIcons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFontDescription(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getFontDescription(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getFontDescription(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getFontDescription(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getFontPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFontPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getFontPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFonts(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getFonts(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFonts(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getFonts(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIconBackground(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getIconBackground(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getIconBackground(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getIconBackground(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getIconForeground(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getIconForeground(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getIconForeground(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getIconForeground(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getIconMask(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getIconMask(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getIconMask(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getIconMask(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getIconSaturationLevel(Ljava/lang/String;)F
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getIconSaturationLevel(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getIconSaturationLevel(Ljava/lang/String;I)F
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getIconSaturationLevel(Ljava/lang/String;I)F

    move-result p0

    return p0
.end method

.method public getIconTransformMatrix(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getIconTransformMatrix(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public getIconTransformMatrix(Ljava/lang/String;I)Landroid/graphics/Matrix;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getIconTransformMatrix(Ljava/lang/String;I)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidC()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->mThubService:Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;->getInstance()Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->mThubService:Lcom/transsion/hubsdk/core/resource/theme/TranThubThemeFilesProvider;

    :cond_0
    return-object p1

    :cond_1
    invoke-direct {p0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->hasAospThemeFilesProvider()Z

    move-result p1

    const-string v0, "TranThemeFilesProvider"

    if-eqz p1, :cond_3

    const-string p1, "TranAospThemeFilesProvider"

    invoke-static {v0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->mAospService:Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeFilesProvider;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeFilesProvider;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeFilesProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->mAospService:Lcom/transsion/hubsdk/aosp/resource/theme/TranAospThemeFilesProvider;

    :cond_2
    return-object p1

    :cond_3
    const-string p0, "No TranAospThemeFilesProvider"

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->NO_OP_SERVICE:Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    return-object p0
.end method

.method public getThemeCategories()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getThemeCategories()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getThemeCategories(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getThemeCategories(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getThemeCategoryDescs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getThemeCategoryDescs()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getThemeCategoryDescs(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getThemeCategoryDescs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getThemeCategoryTitles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getThemeCategoryTitles()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getThemeCategoryTitles(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getThemeCategoryTitles(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getThemeLockPreview(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getThemeLockPreview(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getThemeLockPreview(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getThemeLockPreview(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getThemePreview(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getThemePreview(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getThemePreview(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getThemePreview(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getThemeResources(Ljava/lang/String;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getThemeResources(Ljava/lang/String;)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getThemeResources(Ljava/lang/String;I)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getThemeResources(Ljava/lang/String;I)Lcom/transsion/hubsdk/api/resource/theme/TranThemeResourceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getThemeThumbPreview(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getThemeThumbPreview(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getThemeThumbPreview(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getThemeThumbPreview(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaper(ILjava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getWallpaper(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaper(ILjava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getWallpaper(ILjava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperCategories()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getWallpaperCategories()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperCategories(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getWallpaperCategories(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperCategoryDescs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getWallpaperCategoryDescs()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperCategoryDescs(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getWallpaperCategoryDescs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperCategoryTitles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getWallpaperCategoryTitles()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getWallpaperCategoryTitles(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->getWallpaperCategoryTitles(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public registerListener(Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$Listener;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33501:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/resource/theme/ITranThemeFilesProviderAdapter;->registerListener(Lcom/transsion/hubsdk/api/resource/theme/TranThemeFilesProvider$Listener;)V

    return-void
.end method
