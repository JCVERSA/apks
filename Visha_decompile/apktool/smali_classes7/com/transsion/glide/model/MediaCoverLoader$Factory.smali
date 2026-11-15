.class public Lcom/transsion/glide/model/MediaCoverLoader$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/glide/model/MediaCoverLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lcom/transsion/glide/load/model/LocalMediaLoadInfo;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/glide/model/MediaCoverLoader$Factory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/transsion/glide/load/model/LocalMediaLoadInfo;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/glide/model/MediaCoverLoader;

    iget-object p0, p0, Lcom/transsion/glide/model/MediaCoverLoader$Factory;->context:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/transsion/glide/model/MediaCoverLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public final teardown()V
    .locals 0

    return-void
.end method
