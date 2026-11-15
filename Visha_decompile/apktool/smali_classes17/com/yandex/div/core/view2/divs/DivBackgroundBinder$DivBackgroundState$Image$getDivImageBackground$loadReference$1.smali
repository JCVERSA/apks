.class public final Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1;
.super Lok2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->b(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lwk2;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/yandex/div/core/view2/a;

.field public final synthetic d:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;

.field public final synthetic e:Lcom/yandex/div/internal/drawable/ScalingDrawable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;Lcom/yandex/div/internal/drawable/ScalingDrawable;Lcom/yandex/div/core/view2/Div2View;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1;->c:Lcom/yandex/div/core/view2/a;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1;->d:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1;->e:Lcom/yandex/div/internal/drawable/ScalingDrawable;

    invoke-direct {p0, p5}, Lok2;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    return-void
.end method


# virtual methods
.method public b(Ldq0;)V
    .locals 5

    const-string v0, "cachedBitmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1;->c:Lcom/yandex/div/core/view2/a;

    invoke-virtual {p1}, Ldq0;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v2, "cachedBitmap.bitmap"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1;->d:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$a;

    invoke-virtual {v4}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$a;->a()Lcom/yandex/div2/DivFilter;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    new-instance v2, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1$onSuccess$2;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1;->e:Lcom/yandex/div/internal/drawable/ScalingDrawable;

    invoke-direct {v2, p0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1$onSuccess$2;-><init>(Lcom/yandex/div/internal/drawable/ScalingDrawable;)V

    invoke-static {v0, v1, p1, v3, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->h(Landroid/view/View;Lcom/yandex/div/core/view2/a;Landroid/graphics/Bitmap;Ljava/util/List;Le74;)V

    return-void
.end method

.method public c(Landroid/graphics/drawable/PictureDrawable;)V
    .locals 3

    const-string v0, "pictureDrawable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1;->d:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1;->d:Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image;->d()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lgy4;->b(Landroid/graphics/drawable/PictureDrawable;Landroid/net/Uri;[BILjava/lang/Object;)Ldq0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1;->b(Ldq0;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivBackgroundBinder$DivBackgroundState$Image$getDivImageBackground$loadReference$1;->e:Lcom/yandex/div/internal/drawable/ScalingDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/PictureDrawable;->getPicture()Landroid/graphics/Picture;

    move-result-object p1

    const-string v0, "pictureDrawable.picture"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/drawable/ScalingDrawable;->f(Landroid/graphics/Picture;)V

    return-void
.end method
