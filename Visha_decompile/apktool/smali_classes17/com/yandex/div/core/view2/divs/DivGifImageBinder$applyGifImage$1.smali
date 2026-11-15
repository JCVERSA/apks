.class final Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$1;
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
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroid/graphics/drawable/Drawable;",
        "it",
        "Lzfb;",
        "invoke",
        "(Landroid/graphics/drawable/Drawable;)V",
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

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$1;->$this_applyGifImage:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$1;->invoke(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$1;->$this_applyGifImage:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    invoke-virtual {v0}, Lcom/yandex/div/core/widget/LoadableImageView;->isImageLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$1;->$this_applyGifImage:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    invoke-virtual {v0}, Lcom/yandex/div/core/widget/LoadableImageView;->isImagePreview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$1;->$this_applyGifImage:Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/widget/LoadableImageView;->setPlaceholder(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
