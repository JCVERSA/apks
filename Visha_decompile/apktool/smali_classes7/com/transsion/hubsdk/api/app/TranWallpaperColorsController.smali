.class public Lcom/transsion/hubsdk/api/app/TranWallpaperColorsController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranWallpaperColorsController"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospWallpaperColors;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubWallpaperColors;


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
.method public getAllColors(Landroid/app/WallpaperColors;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperColors;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranWallpaperColorsController;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranWallpaperColorsAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranWallpaperColorsAdapter;->getAllColors(Landroid/app/WallpaperColors;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wallpaperColors is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranWallpaperColorsAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/app/TranWallpaperColorsController;->TAG:Ljava/lang/String;

    const-string v0, "TranThubWallpaperColors"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranWallpaperColorsController;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubWallpaperColors;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubWallpaperColors;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubWallpaperColors;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranWallpaperColorsController;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubWallpaperColors;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranWallpaperColorsController;->TAG:Ljava/lang/String;

    const-string v0, "TranAospWallpaperColors"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranWallpaperColorsController;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospWallpaperColors;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospWallpaperColors;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospWallpaperColors;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranWallpaperColorsController;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospWallpaperColors;

    :cond_2
    return-object p1
.end method
