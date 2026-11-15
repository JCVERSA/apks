.class public final Lcom/bumptech/glide/integration/cronet/CronetGlideModule;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/module/GlideModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 3

    .line 1
    new-instance p2, Lcom/bumptech/glide/integration/cronet/CronetRequestFactoryImpl;

    .line 2
    .line 3
    new-instance v0, Lcom/bumptech/glide/integration/cronet/CronetGlideModule$1;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/integration/cronet/CronetGlideModule$1;-><init>(Lcom/bumptech/glide/integration/cronet/CronetGlideModule;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p2, v0}, Lcom/bumptech/glide/integration/cronet/CronetRequestFactoryImpl;-><init>(Lcom/google/common/base/q;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$StreamFactory;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, p2, v0}, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$StreamFactory;-><init>(Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;Lcom/bumptech/glide/integration/cronet/DataLogger;)V

    .line 15
    .line 16
    .line 17
    const-class v1, Lcom/bumptech/glide/load/model/GlideUrl;

    .line 18
    .line 19
    const-class v2, Ljava/io/InputStream;

    .line 20
    .line 21
    invoke-virtual {p3, v1, v2, p1}, Lcom/bumptech/glide/Registry;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$ByteBufferFactory;

    .line 25
    .line 26
    invoke-direct {p1, p2, v0}, Lcom/bumptech/glide/integration/cronet/ChromiumUrlLoader$ByteBufferFactory;-><init>(Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;Lcom/bumptech/glide/integration/cronet/DataLogger;)V

    .line 27
    .line 28
    .line 29
    const-class p2, Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    invoke-virtual {p3, v1, p2, p1}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    .line 32
    .line 33
    .line 34
    return-void
.end method
