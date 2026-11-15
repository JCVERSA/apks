.class public final Lgi4;
.super Lcom/bumptech/glide/request/RequestOptions;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Lgi4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public B()Lgi4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public C(Lcom/bumptech/glide/load/Transformation;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public E(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lgi4;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public F(I)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public G(II)Lgi4;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public H(I)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public I(Landroid/graphics/drawable/Drawable;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public J(Lcom/bumptech/glide/Priority;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public K(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lgi4;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public L(Lcom/bumptech/glide/load/Key;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public M(F)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public N(Z)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public O(Landroid/content/res/Resources$Theme;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public P(I)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public Q(Lcom/bumptech/glide/load/Transformation;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public R(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lgi4;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public final varargs S([Lcom/bumptech/glide/load/Transformation;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public final varargs T([Lcom/bumptech/glide/load/Transformation;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public U(Z)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public V(Z)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/request/BaseRequestOptions;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public bridge synthetic apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->a(Lcom/bumptech/glide/request/BaseRequestOptions;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lgi4;->c()Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public c()Lgi4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->autoClone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public bridge synthetic centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lgi4;->d()Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lgi4;->e()Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lgi4;->f()Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lgi4;->g()Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lgi4;->g()Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public d()Lgi4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public bridge synthetic decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->h(Ljava/lang/Class;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lgi4;->i()Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->j(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lgi4;->k()Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lgi4;->l()Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->m(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public e()Lgi4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public bridge synthetic encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->n(Landroid/graphics/Bitmap$CompressFormat;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->o(I)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic error(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lgi4;->p(I)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lgi4;->q(Landroid/graphics/drawable/Drawable;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public f()Lgi4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public bridge synthetic fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lgi4;->r(I)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lgi4;->s(Landroid/graphics/drawable/Drawable;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lgi4;->t()Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->u(Lcom/bumptech/glide/load/DecodeFormat;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lgi4;->v(J)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public g()Lgi4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->clone()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public h(Ljava/lang/Class;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->decode(Ljava/lang/Class;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public i()Lgi4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->disallowHardwareConfig()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public j(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public k()Lgi4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public l()Lgi4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public bridge synthetic lock()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lgi4;->w()Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public m(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public n(Landroid/graphics/Bitmap$CompressFormat;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public o(I)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->encodeQuality(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public bridge synthetic onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->x(Z)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lgi4;->y()Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lgi4;->z()Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optionalCircleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lgi4;->A()Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optionalFitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0}, Lgi4;->B()Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lgi4;->C(Lcom/bumptech/glide/load/Transformation;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lgi4;->E(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic override(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lgi4;->F(I)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lgi4;->G(II)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public p(I)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lgi4;->H(I)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lgi4;->I(Landroid/graphics/drawable/Drawable;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->J(Lcom/bumptech/glide/Priority;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public q(Landroid/graphics/drawable/Drawable;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public r(I)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public s(Landroid/graphics/drawable/Drawable;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public bridge synthetic set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lgi4;->K(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->L(Lcom/bumptech/glide/load/Key;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->M(F)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->N(Z)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public t()Lgi4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->fitCenter()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public bridge synthetic theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->O(Landroid/content/res/Resources$Theme;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic timeout(I)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->P(I)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lgi4;->Q(Lcom/bumptech/glide/load/Transformation;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic transform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lgi4;->R(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lgi4;->S([Lcom/bumptech/glide/load/Transformation;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->T([Lcom/bumptech/glide/load/Transformation;)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public u(Lcom/bumptech/glide/load/DecodeFormat;)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public bridge synthetic useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->U(Z)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useUnlimitedSourceGeneratorsPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    invoke-virtual {p0, p1}, Lgi4;->V(Z)Lgi4;

    move-result-object p0

    return-object p0
.end method

.method public v(J)Lgi4;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->frame(J)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public w()Lgi4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->lock()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public x(Z)Lgi4;
    .locals 0

    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public y()Lgi4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method

.method public z()Lgi4;
    .locals 0

    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lgi4;

    return-object p0
.end method
