.class public Lni/c;
.super Lcom/bumptech/glide/RequestBuilder;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    return-void
.end method


# virtual methods
.method public A(J)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method protected B()Lni/c;
    .locals 2

    .line 1
    new-instance v0, Lni/c;

    .line 2
    .line 3
    const-class v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v0, v1, p0}, Lni/c;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lcom/bumptech/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lni/c;->b(Lcom/bumptech/glide/request/BaseRequestOptions;)Lni/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public C(Lcom/bumptech/glide/request/RequestListener;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public D(Landroid/graphics/Bitmap;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public E(Landroid/graphics/drawable/Drawable;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public F(Landroid/net/Uri;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public G(Ljava/io/File;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public H(Ljava/lang/Integer;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public I(Ljava/lang/Object;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public J(Ljava/lang/String;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public K(Ljava/net/URL;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public L([B)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public M()Lni/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lni/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public N(Z)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public O()Lni/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lni/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public P()Lni/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lni/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public Q()Lni/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lni/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public R()Lni/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lni/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public S(Lcom/bumptech/glide/load/Transformation;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public T(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public U(I)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public V(II)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public W(I)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public X(Landroid/graphics/drawable/Drawable;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public Y(Lcom/bumptech/glide/Priority;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public Z(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public a(Lcom/bumptech/glide/request/RequestListener;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public a0(Lcom/bumptech/glide/load/Key;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->a(Lcom/bumptech/glide/request/RequestListener;)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->b(Lcom/bumptech/glide/request/BaseRequestOptions;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lni/c;->b(Lcom/bumptech/glide/request/BaseRequestOptions;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lni/c;->c()Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public b(Lcom/bumptech/glide/request/BaseRequestOptions;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public b0(F)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public c()Lni/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lni/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public c0(Z)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lni/c;->e()Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lni/c;->g()Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lni/c;->i()Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lni/c;->j()Lni/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lni/c;->j()Lni/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lni/c;->j()Lni/c;

    move-result-object v0

    return-object v0
.end method

.method public d0(Landroid/content/res/Resources$Theme;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->k(Ljava/lang/Class;)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lni/c;->l()Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->m(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lni/c;->n()Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lni/c;->o()Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->p(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e()Lni/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lni/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public e0(F)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->q(Landroid/graphics/Bitmap$CompressFormat;)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->r(I)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->u(Lcom/bumptech/glide/RequestBuilder;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lni/c;->v(Ljava/lang/Object;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lni/c;->s(I)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lni/c;->t(Landroid/graphics/drawable/Drawable;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public f0(Lcom/bumptech/glide/RequestBuilder;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->w(I)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lni/c;->x(Landroid/graphics/drawable/Drawable;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lni/c;->y()Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->z(Lcom/bumptech/glide/load/DecodeFormat;)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lni/c;->A(J)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g()Lni/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lni/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public g0(Ljava/util/List;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Ljava/util/List;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method protected bridge synthetic getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lni/c;->B()Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final varargs h0([Lcom/bumptech/glide/RequestBuilder;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public i()Lni/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lni/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public i0(I)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public j()Lni/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lni/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public j0(Lcom/bumptech/glide/load/Transformation;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public k(Ljava/lang/Class;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public k0(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public l()Lni/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lni/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public varargs l0([Lcom/bumptech/glide/load/Transformation;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->C(Lcom/bumptech/glide/request/RequestListener;)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->D(Landroid/graphics/Bitmap;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lni/c;->E(Landroid/graphics/drawable/Drawable;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lni/c;->F(Landroid/net/Uri;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lni/c;->G(Ljava/io/File;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lni/c;->H(Ljava/lang/Integer;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lni/c;->I(Ljava/lang/Object;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lni/c;->J(Ljava/lang/String;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lni/c;->K(Ljava/net/URL;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lni/c;->L([B)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lni/c;->D(Landroid/graphics/Bitmap;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lni/c;->E(Landroid/graphics/drawable/Drawable;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lni/c;->F(Landroid/net/Uri;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lni/c;->G(Ljava/io/File;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lni/c;->H(Ljava/lang/Integer;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lni/c;->I(Ljava/lang/Object;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lni/c;->J(Ljava/lang/String;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lni/c;->K(Ljava/net/URL;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lni/c;->L([B)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic lock()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lni/c;->M()Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public m(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public varargs m0([Lcom/bumptech/glide/load/Transformation;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public n()Lni/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lni/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public n0(Lcom/bumptech/glide/TransitionOptions;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public o()Lni/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lni/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public o0(Z)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->N(Z)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lni/c;->O()Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lni/c;->P()Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lni/c;->Q()Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lni/c;->R()Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->S(Lcom/bumptech/glide/load/Transformation;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lni/c;->T(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic override(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->U(I)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lni/c;->V(II)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public p0(Z)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->W(I)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lni/c;->X(Landroid/graphics/drawable/Drawable;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->Y(Lcom/bumptech/glide/Priority;)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public q(Landroid/graphics/Bitmap$CompressFormat;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public r(I)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public s(I)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lni/c;->Z(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->a0(Lcom/bumptech/glide/load/Key;)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->b0(F)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->c0(Z)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public t(Landroid/graphics/drawable/Drawable;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->d0(Landroid/content/res/Resources$Theme;)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic thumbnail(F)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->e0(F)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lni/c;->f0(Lcom/bumptech/glide/RequestBuilder;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail(Ljava/util/List;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lni/c;->g0(Ljava/util/List;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lni/c;->h0([Lcom/bumptech/glide/RequestBuilder;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->i0(I)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->j0(Lcom/bumptech/glide/load/Transformation;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lni/c;->k0(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lni/c;->l0([Lcom/bumptech/glide/load/Transformation;)Lni/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->m0([Lcom/bumptech/glide/load/Transformation;)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->n0(Lcom/bumptech/glide/TransitionOptions;)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public u(Lcom/bumptech/glide/RequestBuilder;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->o0(Z)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lni/c;->p0(Z)Lni/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public v(Ljava/lang/Object;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public w(I)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public x(Landroid/graphics/drawable/Drawable;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public y()Lni/c;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lni/c;

    .line 6
    .line 7
    return-object v0
.end method

.method public z(Lcom/bumptech/glide/load/DecodeFormat;)Lni/c;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lni/c;

    .line 6
    .line 7
    return-object p1
.end method
