.class public Lcom/transsion/glide/model/MediaCoverLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;,
        Lcom/transsion/glide/model/MediaCoverLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
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

    iput-object p1, p0, Lcom/transsion/glide/model/MediaCoverLoader;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public buildLoadData(Lcom/transsion/glide/load/model/LocalMediaLoadInfo;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0
    .param p1    # Lcom/transsion/glide/load/model/LocalMediaLoadInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/Options;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/glide/load/model/LocalMediaLoadInfo;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lme6;

    invoke-direct {p3, p1}, Lme6;-><init>(Lcom/transsion/glide/load/model/LocalMediaLoadInfo;)V

    new-instance p4, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;

    iget-object p0, p0, Lcom/transsion/glide/model/MediaCoverLoader;->context:Landroid/content/Context;

    invoke-direct {p4, p0, p1}, Lcom/transsion/glide/model/MediaCoverLoader$MediaCoverDataFetcher;-><init>(Landroid/content/Context;Lcom/transsion/glide/load/model/LocalMediaLoadInfo;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p2
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/Options;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/glide/model/MediaCoverLoader;->buildLoadData(Lcom/transsion/glide/load/model/LocalMediaLoadInfo;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p0

    return-object p0
.end method

.method public handles(Lcom/transsion/glide/load/model/LocalMediaLoadInfo;)Z
    .locals 0
    .param p1    # Lcom/transsion/glide/load/model/LocalMediaLoadInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    check-cast p1, Lcom/transsion/glide/load/model/LocalMediaLoadInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/glide/model/MediaCoverLoader;->handles(Lcom/transsion/glide/load/model/LocalMediaLoadInfo;)Z

    move-result p0

    return p0
.end method
