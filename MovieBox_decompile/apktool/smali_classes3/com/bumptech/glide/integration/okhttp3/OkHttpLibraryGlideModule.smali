.class public final Lcom/bumptech/glide/integration/okhttp3/OkHttpLibraryGlideModule;
.super Lcom/bumptech/glide/module/LibraryGlideModule;
.source "source.java"


# annotations
.annotation build Lcom/bumptech/glide/annotation/GlideModule;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/module/LibraryGlideModule;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/Glide;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/Registry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class p2, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 7
    .line 8
    const-class v0, Ljava/io/InputStream;

    .line 9
    .line 10
    invoke-virtual {p3, p2, v0, p1}, Lcom/bumptech/glide/Registry;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 11
    .line 12
    .line 13
    return-void
.end method
