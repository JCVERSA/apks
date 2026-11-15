.class public Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranIconDrawableFactory"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;

.field private mThubService:Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;


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
.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 9
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "appInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 8
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 11
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "appInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 5
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 9
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 11
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 13
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Drawable cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 15
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Drawable or themeId cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitmap cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    .line 5
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Drawable cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 7
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Drawable or themeId cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->TAG:Ljava/lang/String;

    const-string v0, "TranThubIconDrawableFactory"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->mThubService:Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->mThubService:Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->TAG:Ljava/lang/String;

    const-string v0, "TranAospIconDrawableFactory"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->mAospService:Lcom/transsion/hubsdk/aosp/util/TranAospIconDrawableFactory;

    :cond_2
    return-object p1
.end method

.method public getUnbadgedIcon(Landroid/content/Context;ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getUnbadgedIcon(Landroid/content/Context;ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUnbadgedIcon(ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33381:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/util/TranIconDrawableFactory;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;->getUnbadgedIcon(ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Params cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
