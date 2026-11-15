.class public Lii4;
.super Lcom/bumptech/glide/RequestBuilder;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/RequestBuilder;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/RequestBuilder;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    return-void
.end method


# virtual methods
.method public A(Lcom/bumptech/glide/request/RequestListener;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public B(Landroid/graphics/Bitmap;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public C(Landroid/graphics/drawable/Drawable;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public E(Landroid/net/Uri;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public F(Ljava/io/File;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public G(Ljava/lang/Integer;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public H(Ljava/lang/Object;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public I(Ljava/lang/String;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public J(Ljava/net/URL;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public K([B)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load([B)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public L()Lii4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public M(Z)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public N()Lii4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public O()Lii4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public P()Lii4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public Q()Lii4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public R(Lcom/bumptech/glide/load/Transformation;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public S(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lii4;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public T(I)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public U(II)Lii4;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public V(I)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public W(Landroid/graphics/drawable/Drawable;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public X(Lcom/bumptech/glide/Priority;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public Y(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lii4;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public Z(Lcom/bumptech/glide/load/Key;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/RequestListener;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public a0(F)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public bridge synthetic addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->a(Lcom/bumptech/glide/request/RequestListener;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lii4;->c(Lcom/bumptech/glide/request/BaseRequestOptions;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lii4;->c(Lcom/bumptech/glide/request/BaseRequestOptions;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lii4;->d()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public b0(Z)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public c(Lcom/bumptech/glide/request/BaseRequestOptions;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public c0(Landroid/content/res/Resources$Theme;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lii4;->e()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lii4;->f()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lii4;->g()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lii4;->h()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lii4;->h()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lii4;->h()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public d()Lii4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public d0(F)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(F)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->i(Ljava/lang/Class;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lii4;->j()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->k(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lii4;->l()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lii4;->m()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->n(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public e()Lii4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public e0(Lcom/bumptech/glide/RequestBuilder;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public bridge synthetic encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->o(Landroid/graphics/Bitmap$CompressFormat;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->p(I)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lii4;->s(Lcom/bumptech/glide/RequestBuilder;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic error(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lii4;->t(Ljava/lang/Object;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lii4;->q(I)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lii4;->r(Landroid/graphics/drawable/Drawable;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public f()Lii4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public f0(Ljava/util/List;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail(Ljava/util/List;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lii4;->u(I)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lii4;->v(Landroid/graphics/drawable/Drawable;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lii4;->w()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->x(Lcom/bumptech/glide/load/DecodeFormat;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lii4;->y(J)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public g()Lii4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public final varargs g0([Lcom/bumptech/glide/RequestBuilder;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public bridge synthetic getDownloadOnlyRequest()Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0}, Lii4;->z()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public h()Lii4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/RequestBuilder;->clone()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public h0(I)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public i(Ljava/lang/Class;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public i0(Lcom/bumptech/glide/load/Transformation;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public j()Lii4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public j0(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lii4;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public k(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public varargs k0([Lcom/bumptech/glide/load/Transformation;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public l()Lii4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public varargs l0([Lcom/bumptech/glide/load/Transformation;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public bridge synthetic listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->A(Lcom/bumptech/glide/request/RequestListener;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lii4;->B(Landroid/graphics/Bitmap;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lii4;->C(Landroid/graphics/drawable/Drawable;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lii4;->E(Landroid/net/Uri;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lii4;->F(Ljava/io/File;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lii4;->G(Ljava/lang/Integer;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lii4;->H(Ljava/lang/Object;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lii4;->I(Ljava/lang/String;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/net/URL;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lii4;->J(Ljava/net/URL;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load([B)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lii4;->K([B)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lii4;->B(Landroid/graphics/Bitmap;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lii4;->C(Landroid/graphics/drawable/Drawable;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lii4;->E(Landroid/net/Uri;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lii4;->F(Ljava/io/File;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lii4;->G(Ljava/lang/Integer;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lii4;->H(Ljava/lang/Object;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lii4;->I(Ljava/lang/String;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lii4;->J(Ljava/net/URL;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lii4;->K([B)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic lock()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lii4;->L()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public m()Lii4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public m0(Lcom/bumptech/glide/TransitionOptions;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public n(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public n0(Z)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public o(Landroid/graphics/Bitmap$CompressFormat;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public o0(Z)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public bridge synthetic onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->M(Z)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lii4;->N()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lii4;->O()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lii4;->P()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lii4;->Q()Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lii4;->R(Lcom/bumptech/glide/load/Transformation;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lii4;->S(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic override(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lii4;->T(I)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lii4;->U(II)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public p(I)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lii4;->V(I)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lii4;->W(Landroid/graphics/drawable/Drawable;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->X(Lcom/bumptech/glide/Priority;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public q(I)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public r(Landroid/graphics/drawable/Drawable;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public s(Lcom/bumptech/glide/RequestBuilder;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lii4;->Y(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->Z(Lcom/bumptech/glide/load/Key;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->a0(F)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->b0(Z)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public t(Ljava/lang/Object;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->error(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public bridge synthetic theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->c0(Landroid/content/res/Resources$Theme;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thumbnail(F)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lii4;->d0(F)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thumbnail(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lii4;->e0(Lcom/bumptech/glide/RequestBuilder;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thumbnail(Ljava/util/List;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lii4;->f0(Ljava/util/List;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic thumbnail([Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lii4;->g0([Lcom/bumptech/glide/RequestBuilder;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->h0(I)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lii4;->i0(Lcom/bumptech/glide/load/Transformation;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lii4;->j0(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lii4;->k0([Lcom/bumptech/glide/load/Transformation;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->l0([Lcom/bumptech/glide/load/Transformation;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->m0(Lcom/bumptech/glide/TransitionOptions;)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public u(I)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public bridge synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->n0(Z)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lii4;->o0(Z)Lii4;

    move-result-object p0

    return-object p0
.end method

.method public v(Landroid/graphics/drawable/Drawable;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public w()Lii4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public x(Lcom/bumptech/glide/load/DecodeFormat;)Lii4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public y(J)Lii4;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lii4;

    return-object p0
.end method

.method public z()Lii4;
    .locals 2

    new-instance v0, Lii4;

    const-class v1, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Lii4;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/RequestBuilder;)V

    sget-object p0, Lcom/bumptech/glide/RequestBuilder;->DOWNLOAD_ONLY_OPTIONS:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, p0}, Lii4;->c(Lcom/bumptech/glide/request/BaseRequestOptions;)Lii4;

    move-result-object p0

    return-object p0
.end method
