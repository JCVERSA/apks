.class public Lcom/transsion/glide/VideoAppModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "SourceFile"


# annotations
.annotation build Lcom/bumptech/glide/annotation/GlideModule;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public isManifestParsingEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 0

    new-instance p0, Lcom/transsion/glide/model/MediaCoverLoader$Factory;

    invoke-direct {p0, p1}, Lcom/transsion/glide/model/MediaCoverLoader$Factory;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    const-class p2, Landroid/graphics/Bitmap;

    invoke-virtual {p3, p1, p2, p0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    return-void
.end method
