.class public Lcom/mgtv/a/c/f;
.super Lcom/mgtv/a/c/a;
.source "SourceFile"


# instance fields
.field protected s:Z

.field private t:Z

.field private u:Z

.field private v:Landroid/widget/FrameLayout;

.field private w:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

.field private x:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mgtv/a/c/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/c/f;->t:Z

    iput-boolean v0, p0, Lcom/mgtv/a/c/f;->u:Z

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/a/c/f;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/c/f;->x:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-static {p1, p2}, Laud;->b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/mgtv/a/c/f;)Lcom/mgmi/ads/api/render/MySimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/a/c/f;->w:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 2
    const-string v0, "gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GIF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private c(Ljava/lang/String;)Llbd;
    .locals 2

    .line 20
    iget-boolean v0, p0, Lcom/mgtv/a/c/a;->j:Z

    if-eqz v0, :cond_1

    .line 21
    iget v0, p0, Lcom/mgtv/a/c/a;->e:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Llbd;->E:Llbd;

    invoke-static {p1, v0}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Llbd$b;->R(Z)Llbd$b;

    move-result-object p1

    iget-boolean v0, p0, Lcom/mgtv/a/c/a;->k:Z

    invoke-virtual {p1, v0}, Llbd$b;->M(Z)Llbd$b;

    move-result-object p1

    iget v0, p0, Lcom/mgtv/a/c/a;->f:I

    invoke-virtual {p1, v0}, Llbd$b;->z(I)Llbd$b;

    move-result-object p1

    iget p0, p0, Lcom/mgtv/a/c/a;->e:I

    invoke-virtual {p1, p0}, Llbd$b;->G(I)Llbd$b;

    move-result-object p0

    invoke-virtual {p0}, Llbd$b;->t()Llbd;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    sget-object v0, Llbd;->E:Llbd;

    invoke-static {p1, v0}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Llbd$b;->R(Z)Llbd$b;

    move-result-object p1

    iget-boolean v0, p0, Lcom/mgtv/a/c/a;->k:Z

    invoke-virtual {p1, v0}, Llbd$b;->M(Z)Llbd$b;

    move-result-object p1

    iget p0, p0, Lcom/mgtv/a/c/a;->f:I

    invoke-virtual {p1, p0}, Llbd$b;->z(I)Llbd$b;

    move-result-object p0

    invoke-virtual {p0}, Llbd$b;->t()Llbd;

    move-result-object p0

    return-object p0

    .line 24
    :cond_1
    sget-object v0, Llbd;->E:Llbd;

    invoke-static {p1, v0}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object p1

    iget-boolean v0, p0, Lcom/mgtv/a/c/a;->k:Z

    invoke-virtual {p1, v0}, Llbd$b;->M(Z)Llbd$b;

    move-result-object p1

    iget p0, p0, Lcom/mgtv/a/c/a;->f:I

    invoke-virtual {p1, p0}, Llbd$b;->z(I)Llbd$b;

    move-result-object p0

    invoke-virtual {p0}, Llbd$b;->t()Llbd;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/mgtv/a/c/f;->t:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/mgtv/a/c/f;->v:Landroid/widget/FrameLayout;

    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/c/f;->w:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    return-object p0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/mgtv/a/c/f;->t:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/mgmi/R$layout;->layout_blur_image:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/mgtv/a/c/f;->v:Landroid/widget/FrameLayout;

    .line 4
    sget v0, Lcom/mgmi/R$id;->style_ad_ivImage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    iput-object p1, p0, Lcom/mgtv/a/c/f;->w:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    .line 5
    iget-object p1, p0, Lcom/mgtv/a/c/f;->v:Landroid/widget/FrameLayout;

    sget v0, Lcom/mgmi/R$id;->fl_bg_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/mgtv/a/c/f;->x:Landroid/widget/ImageView;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    invoke-direct {v0, p1}, Lcom/mgmi/ads/api/render/MySimpleDraweeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/a/c/f;->w:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    .line 7
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    new-instance v1, Lcom/mgtv/a/c/f$5;

    invoke-direct {v1, p0, p2}, Lcom/mgtv/a/c/f$5;-><init>(Lcom/mgtv/a/c/f;Landroid/widget/ImageView;)V

    invoke-static {p1, v0, v1}, Ley4;->b(Landroid/content/Context;Ljava/lang/String;Lsed;)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;Ljava/io/File;)V
    .locals 4

    .line 12
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 13
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 14
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 15
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLocalFile file width"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SspImagePlayer"

    invoke-static {v2, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-boolean v1, p0, Lcom/mgtv/a/c/f;->u:Z

    const-string v2, ""

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_1

    .line 18
    iget-object v1, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {v1}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/model/VASTAd;

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, v1, v3, v0}, Lcom/mgtv/a/c/f;->a(Lcom/mgmi/model/VASTAd;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    iget-object p1, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p1, :cond_0

    .line 20
    iget-object p0, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    const p2, 0x497cc

    invoke-interface {p1, p0, p2, v2}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/a/c/f;->s()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/mgtv/a/c/f;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 22
    iget-object p1, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p1, :cond_2

    .line 23
    iget-object p0, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    const p2, 0x49bb1

    invoke-interface {p1, p0, p2, v2}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    return-void

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz v0, :cond_4

    .line 25
    invoke-interface {v0}, Lcom/mgtv/a/c/e;->b()V

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mgtv/a/c/f;->c(Ljava/lang/String;)Llbd;

    move-result-object v0

    new-instance v1, Lcom/mgtv/a/c/f$4;

    invoke-direct {v1, p0}, Lcom/mgtv/a/c/f$4;-><init>(Lcom/mgtv/a/c/f;)V

    invoke-static {p1, p2, v0, v1}, Ley4;->a(Landroid/widget/ImageView;Ljava/io/File;Llbd;Lckd;)V

    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;II)Z
    .locals 2

    const/4 p0, 0x0

    if-lez p2, :cond_2

    if-gtz p3, :cond_0

    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    goto :goto_0

    :cond_1
    const v0, 0x40654814

    :goto_0
    int-to-float p1, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    sub-float/2addr v0, p1

    .line 30
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    :goto_1
    return p0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/mgtv/a/c/a;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public c()V
    .locals 4

    .line 2
    invoke-super {p0}, Lcom/mgtv/a/c/a;->c()V

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/c/f;->w:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    iget-boolean v0, p0, Lcom/mgtv/a/c/f;->t:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/mgtv/a/c/e;->b()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/mgtv/a/c/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/mgtv/a/c/f;->w:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    iget-object v1, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    sget-object v3, Llbd;->E:Llbd;

    invoke-static {v2, v3}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v2

    invoke-virtual {v2}, Llbd$b;->t()Llbd;

    move-result-object v2

    new-instance v3, Lcom/mgtv/a/c/f$1;

    invoke-direct {v3, p0}, Lcom/mgtv/a/c/f$1;-><init>(Lcom/mgtv/a/c/f;)V

    invoke-static {v0, v1, v2, v3}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/c/f;->w:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    iget-object v1, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    sget-object v3, Llbd;->E:Llbd;

    .line 10
    invoke-static {v2, v3}, Llbd;->c(Ljava/lang/String;Llbd;)Llbd$b;

    move-result-object v2

    new-instance v3, Lcom/mgtv/a/c/f$2;

    invoke-direct {v3, p0}, Lcom/mgtv/a/c/f$2;-><init>(Lcom/mgtv/a/c/f;)V

    invoke-virtual {v2, v3}, Llbd$b;->o(Lcom/bumptech/glide/request/target/SimpleTarget;)Llbd$b;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Llbd$b;->t()Llbd;

    move-result-object v2

    new-instance v3, Lcom/mgtv/a/c/f$3;

    invoke-direct {v3, p0}, Lcom/mgtv/a/c/f$3;-><init>(Lcom/mgtv/a/c/f;)V

    .line 12
    invoke-static {v0, v1, v2, v3}, Ley4;->d(Landroid/widget/ImageView;Landroid/net/Uri;Llbd;Lckd;)V

    :goto_0
    return-void

    .line 13
    :cond_2
    invoke-static {}, Lcom/mgmi/b/c;->a()Lcom/mgmi/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgmi/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    const-string v0, "SspImagePlayer"

    const-string v2, "AdsRender exists exists"

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/mgtv/a/c/f;->w:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/a/c/f;->a(Landroid/widget/ImageView;Ljava/io/File;)V

    return-void

    .line 19
    :cond_3
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/c/f;->w:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/a/c/f;->a(Landroid/content/Context;Landroid/widget/ImageView;)V

    :cond_4
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mgtv/a/c/f;->t:Z

    return-void
.end method

.method public g()V
    .locals 3

    iget v0, p0, Lcom/mgtv/a/c/a;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mgtv/a/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mgtv/a/c/a;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/a/c/a;->d:I

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mgtv/a/c/a;->d:I

    :goto_0
    iget v0, p0, Lcom/mgtv/a/c/a;->c:I

    iget v1, p0, Lcom/mgtv/a/c/a;->b:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mgtv/a/c/e;->g()V

    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->f()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz v2, :cond_3

    mul-int/lit16 v0, v0, 0x3e8

    invoke-interface {v2, v0, v1}, Lcom/mgtv/a/c/e;->a(II)V

    :cond_3
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/a/c/a;->a(J)V

    :goto_1
    return-void
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/a/c/f;->s:Z

    return p0
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/c/f;->s:Z

    invoke-super {p0}, Lcom/mgtv/a/c/a;->q()V

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {v0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/c/a;->o:Lcom/mgmi/model/m;

    invoke-virtual {p0}, Lcom/mgmi/model/m;->h()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTStaticResource;->getMd5()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method
