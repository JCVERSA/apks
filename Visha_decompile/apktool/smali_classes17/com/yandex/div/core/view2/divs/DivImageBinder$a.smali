.class public final Lcom/yandex/div/core/view2/divs/DivImageBinder$a;
.super Lok2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivImageBinder;->q(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Lwc3;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

.field public final synthetic c:Lcom/yandex/div/core/view2/divs/DivImageBinder;

.field public final synthetic d:Lcom/yandex/div/core/view2/a;

.field public final synthetic e:Lcom/yandex/div2/DivImage;

.field public final synthetic f:Loj3;

.field public final synthetic g:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Loj3;Landroid/net/Uri;Lcom/yandex/div/core/view2/Div2View;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->b:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->c:Lcom/yandex/div/core/view2/divs/DivImageBinder;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->d:Lcom/yandex/div/core/view2/a;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->e:Lcom/yandex/div2/DivImage;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->f:Loj3;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->g:Landroid/net/Uri;

    invoke-direct {p0, p7}, Lok2;-><init>(Lcom/yandex/div/core/view2/Div2View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Lrk2;->a()V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->b:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;->setImageUrl$div_release(Landroid/net/Uri;)V

    return-void
.end method

.method public b(Ldq0;)V
    .locals 4

    const-string v0, "cachedBitmap"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lrk2;->b(Ldq0;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->b:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    invoke-virtual {p1}, Ldq0;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/core/widget/LoadableImageView;->setCurrentBitmapWithoutFilters$div_release(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->c:Lcom/yandex/div/core/view2/divs/DivImageBinder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->b:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->d:Lcom/yandex/div/core/view2/a;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->e:Lcom/yandex/div2/DivImage;

    iget-object v3, v3, Lcom/yandex/div2/DivImage;->t:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->g(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Ljava/util/List;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->c:Lcom/yandex/div/core/view2/divs/DivImageBinder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->b:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->e:Lcom/yandex/div2/DivImage;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->f:Loj3;

    invoke-virtual {p1}, Ldq0;->d()Lcom/yandex/div/core/images/BitmapSource;

    move-result-object p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->j(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;Loj3;Lcom/yandex/div/core/images/BitmapSource;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->b:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/LoadableImageView;->imageLoaded()V

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->c:Lcom/yandex/div/core/view2/divs/DivImageBinder;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->b:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->e:Lcom/yandex/div2/DivImage;

    iget-object v1, v1, Lcom/yandex/div2/DivImage;->P:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->f:Loj3;

    invoke-virtual {v1, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->e:Lcom/yandex/div2/DivImage;

    iget-object v2, v2, Lcom/yandex/div2/DivImage;->Q:Lcom/yandex/div/json/expressions/Expression;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->f:Loj3;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivBlendMode;

    invoke-static {p1, v0, v1, v2}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->l(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/widget/LoadableImageView;Ljava/lang/Integer;Lcom/yandex/div2/DivBlendMode;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->b:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/AspectImageView;->invalidate()V

    return-void
.end method

.method public c(Landroid/graphics/drawable/PictureDrawable;)V
    .locals 4

    const-string v0, "pictureDrawable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->c:Lcom/yandex/div/core/view2/divs/DivImageBinder;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->e:Lcom/yandex/div2/DivImage;

    invoke-static {v0, v1}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->n(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div2/DivImage;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->g:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lgy4;->b(Landroid/graphics/drawable/PictureDrawable;Landroid/net/Uri;[BILjava/lang/Object;)Ldq0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->b(Ldq0;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lrk2;->c(Landroid/graphics/drawable/PictureDrawable;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->b:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/widget/LoadableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->c:Lcom/yandex/div/core/view2/divs/DivImageBinder;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->b:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->e:Lcom/yandex/div2/DivImage;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->f:Loj3;

    invoke-static {p1, v0, v2, v3, v1}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->j(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;Loj3;Lcom/yandex/div/core/images/BitmapSource;)V

    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->b:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/LoadableImageView;->imageLoaded()V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;->b:Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/AspectImageView;->invalidate()V

    return-void
.end method
