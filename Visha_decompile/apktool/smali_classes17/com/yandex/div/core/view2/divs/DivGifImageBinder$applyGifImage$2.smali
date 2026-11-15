.class final Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->j(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div2/DivGifImage;Lwc3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lby4;",
        "it",
        "Lzfb;",
        "invoke",
        "(Lby4;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $this_applyGifImage:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$2;->$this_applyGifImage:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lby4;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$2;->invoke(Lby4;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Lby4;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$2;->$this_applyGifImage:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    invoke-virtual {v0}, Lcom/yandex/div/core/widget/LoadableImageView;->isImageLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    instance-of v0, p1, Lby4$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$2;->$this_applyGifImage:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    check-cast p1, Lby4$a;

    invoke-virtual {p1}, Lby4$a;->f()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/widget/LoadableImageView;->setPreview(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lby4$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$2;->$this_applyGifImage:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    check-cast p1, Lby4$b;

    invoke-virtual {p1}, Lby4$b;->f()Landroid/graphics/drawable/PictureDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/widget/LoadableImageView;->setPreview(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$2;->$this_applyGifImage:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LoadableImageView;->previewLoaded()V

    :cond_2
    return-void
.end method
