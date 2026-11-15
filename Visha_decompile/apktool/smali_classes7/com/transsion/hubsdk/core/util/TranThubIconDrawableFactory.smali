.class public Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/util/ITranIconDrawableFactoryAdapter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    return-void
.end method


# virtual methods
.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 9
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 10
    invoke-virtual {v0, p2}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 13
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 14
    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 11
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 12
    invoke-virtual {v0, p2, p3, p4}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 15
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 7
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {v0, p0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGlobalThemedIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getGlobalThemedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnbadgedIcon(Landroid/content/Context;ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 3
    new-instance v0, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    invoke-direct {v0, p1}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getUnbadgedIcon(Landroid/content/Context;ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getUnbadgedIcon(ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mIconDrawableFactory:Lcom/transsion/hubsdk/util/TranIconDrawableFactory;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/util/TranThubIconDrawableFactory;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/transsion/hubsdk/util/TranIconDrawableFactory;->getUnbadgedIcon(Landroid/content/Context;ZLandroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
