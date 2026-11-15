.class Lcom/mgtv/a/c/f$2;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/f;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/f;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/f$2;->a:Lcom/mgtv/a/c/f;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/mgtv/a/c/f$2;->a:Lcom/mgtv/a/c/f;

    iget-object p1, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    const-string p2, ""

    const v0, 0x497cd

    invoke-interface {p1, p0, v0, p2}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object p2, p0, Lcom/mgtv/a/c/f$2;->a:Lcom/mgtv/a/c/f;

    invoke-static {p2}, Lcom/mgtv/a/c/f;->a(Lcom/mgtv/a/c/f;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p2, p1, v0}, Lcom/mgmi/f/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object v0, p0, Lcom/mgtv/a/c/f$2;->a:Lcom/mgtv/a/c/f;

    invoke-static {v0}, Lcom/mgtv/a/c/f;->a(Lcom/mgtv/a/c/f;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/mgtv/a/c/f$2;->a:Lcom/mgtv/a/c/f;

    invoke-static {p2}, Lcom/mgtv/a/c/f;->b(Lcom/mgtv/a/c/f;)Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/mgtv/a/c/f$2;->a:Lcom/mgtv/a/c/f;

    invoke-virtual {p1}, Lcom/mgtv/a/c/a;->e()V

    iget-object p1, p0, Lcom/mgtv/a/c/f$2;->a:Lcom/mgtv/a/c/f;

    invoke-virtual {p1}, Lcom/mgtv/a/c/f;->g()V

    iget-object p0, p0, Lcom/mgtv/a/c/f$2;->a:Lcom/mgtv/a/c/f;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgtv/a/c/f;->s:Z

    iget-object p0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/mgtv/a/c/e;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/a/c/f$2;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
