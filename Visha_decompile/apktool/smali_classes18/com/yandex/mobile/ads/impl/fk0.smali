.class public final Lcom/yandex/mobile/ads/impl/fk0;
.super Lcom/yandex/mobile/ads/impl/vg2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/vg2<",
        "Landroid/widget/ImageView;",
        "Lcom/yandex/mobile/ads/impl/xj0;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/yandex/mobile/ads/impl/sj0;

.field private final d:Lcom/yandex/mobile/ads/impl/jj0;

.field private final e:Lcom/yandex/mobile/ads/impl/bk0;

.field private final f:Lcom/yandex/mobile/ads/impl/m02;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 7

    .line 1
    new-instance v4, Lcom/yandex/mobile/ads/impl/jj0;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/yandex/mobile/ads/impl/d91;

    invoke-direct {v1, p3}, Lcom/yandex/mobile/ads/impl/d91;-><init>(Lcom/yandex/mobile/ads/impl/o8;)V

    .line 4
    invoke-direct {v4, v0, v1, p2}, Lcom/yandex/mobile/ads/impl/jj0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/jj0$a;Lcom/yandex/mobile/ads/impl/sj0;)V

    .line 5
    new-instance v5, Lcom/yandex/mobile/ads/impl/bk0;

    invoke-direct {v5, p2}, Lcom/yandex/mobile/ads/impl/bk0;-><init>(Lcom/yandex/mobile/ads/impl/sj0;)V

    .line 6
    new-instance v6, Lcom/yandex/mobile/ads/impl/m02;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/m02;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 7
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/fk0;-><init>(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/jj0;Lcom/yandex/mobile/ads/impl/bk0;Lcom/yandex/mobile/ads/impl/m02;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/jj0;Lcom/yandex/mobile/ads/impl/bk0;Lcom/yandex/mobile/ads/impl/m02;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lcom/yandex/mobile/ads/impl/sj0;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/jj0;",
            "Lcom/yandex/mobile/ads/impl/bk0;",
            "Lcom/yandex/mobile/ads/impl/m02;",
            ")V"
        }
    .end annotation

    .line 8
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adResponse"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "imageForPresentProvider"

    invoke-static {p4, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "imageValueValidator"

    invoke-static {p5, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "smartCenterImageRenderer"

    invoke-static {p6, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vg2;-><init>(Landroid/view/View;)V

    .line 10
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fk0;->c:Lcom/yandex/mobile/ads/impl/sj0;

    .line 11
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/fk0;->d:Lcom/yandex/mobile/ads/impl/jj0;

    .line 12
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/fk0;->e:Lcom/yandex/mobile/ads/impl/bk0;

    .line 13
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/fk0;->f:Lcom/yandex/mobile/ads/impl/m02;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/fk0;Lcom/yandex/mobile/ads/impl/xj0;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 16
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$imageValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vg2;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/xj0;->e()Lcom/yandex/mobile/ads/impl/r02;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 19
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fk0;->f:Lcom/yandex/mobile/ads/impl/m02;

    invoke-virtual {p0, p2, v0, p1}, Lcom/yandex/mobile/ads/impl/m02;->a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;Lcom/yandex/mobile/ads/impl/xj0;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/xj0;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fk0;->d:Lcom/yandex/mobile/ads/impl/jj0;

    new-instance v1, Lcfd;

    invoke-direct {v1, p0, p1}, Lcfd;-><init>(Lcom/yandex/mobile/ads/impl/fk0;Lcom/yandex/mobile/ads/impl/xj0;)V

    invoke-virtual {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/jj0;->a(Lcom/yandex/mobile/ads/impl/xj0;Lcom/yandex/mobile/ads/impl/jj0$b;)V

    return-void
.end method

.method public static synthetic d(Lcom/yandex/mobile/ads/impl/fk0;Lcom/yandex/mobile/ads/impl/xj0;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/fk0;->a(Lcom/yandex/mobile/ads/impl/fk0;Lcom/yandex/mobile/ads/impl/xj0;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/widget/ImageView;

    .line 2
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fk0;->f:Lcom/yandex/mobile/ads/impl/m02;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/m02;->a(Landroid/widget/ImageView;)V

    .line 5
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/vg2;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/widget/ImageView;)V
    .locals 1

    .line 6
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fk0;->f:Lcom/yandex/mobile/ads/impl/m02;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/m02;->a(Landroid/widget/ImageView;)V

    .line 9
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/vg2;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/widget/ImageView;Lcom/yandex/mobile/ads/impl/xj0;)V
    .locals 1

    .line 13
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageValue"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/fk0;->a(Lcom/yandex/mobile/ads/impl/xj0;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .line 10
    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Lcom/yandex/mobile/ads/impl/xj0;

    .line 11
    const-string v0, "imageView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageValue"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fk0;->e:Lcom/yandex/mobile/ads/impl/bk0;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/bk0;->a(Landroid/graphics/drawable/Drawable;Lcom/yandex/mobile/ads/impl/xj0;)Z

    move-result p0

    return p0
.end method

.method public final b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Lcom/yandex/mobile/ads/impl/xj0;

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "imageValue"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/fk0;->a(Lcom/yandex/mobile/ads/impl/xj0;)V

    return-void
.end method
