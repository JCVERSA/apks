.class public Lcom/transsion/hubsdk/api/wallpaper/TranWallpaperManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PACKAGE_NAME_ARGUMENT_EXCEPTION:Ljava/lang/String; = "package name should not be null"

.field private static final TAG:Ljava/lang/String; = "TranWallpaperManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/wallpaper/TranAospWallpaperManager;

.field private mThubService:Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;


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


# virtual methods
.method public animateWallpaperToDim(F)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33451:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/wallpaper/TranWallpaperManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/wallpaper/ITranWallpaperManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/wallpaper/ITranWallpaperManagerAdapter;->animateWallpaperToDim(F)V

    return-void
.end method

.method public getBitmapAsUser(IZI)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/wallpaper/TranWallpaperManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/wallpaper/ITranWallpaperManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/wallpaper/ITranWallpaperManagerAdapter;->getBitmapAsUser(IZI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/wallpaper/ITranWallpaperManagerAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/wallpaper/TranWallpaperManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubWallpaperManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/wallpaper/TranWallpaperManager;->mThubService:Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/wallpaper/TranWallpaperManager;->mThubService:Lcom/transsion/hubsdk/core/wallpaper/TranThubWallpaperManager;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/wallpaper/TranWallpaperManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospWallpaperManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/wallpaper/TranWallpaperManager;->mAospService:Lcom/transsion/hubsdk/aosp/wallpaper/TranAospWallpaperManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/wallpaper/TranAospWallpaperManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/wallpaper/TranAospWallpaperManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/wallpaper/TranWallpaperManager;->mAospService:Lcom/transsion/hubsdk/aosp/wallpaper/TranAospWallpaperManager;

    :cond_2
    return-object p1
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/wallpaper/TranWallpaperManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/wallpaper/ITranWallpaperManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/wallpaper/ITranWallpaperManagerAdapter;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object p0

    return-object p0
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/wallpaper/TranWallpaperManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/wallpaper/ITranWallpaperManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/wallpaper/ITranWallpaperManagerAdapter;->setWallpaperComponent(Landroid/content/ComponentName;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWallpaperComponentWithFlags(Landroid/content/ComponentName;I)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33511:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/wallpaper/TranWallpaperManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/wallpaper/ITranWallpaperManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/wallpaper/ITranWallpaperManagerAdapter;->setWallpaperComponentWithFlags(Landroid/content/ComponentName;I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
