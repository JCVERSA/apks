.class final Lcom/yandex/div/core/view2/divs/DivVideoBinder$bind$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivVideoBinder;->g(Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivVideo;Lcom/yandex/div2/DivVideo;Lcom/yandex/div/core/state/DivStatePath;)V
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
        "Lby4;",
        "preview",
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
.field final synthetic $playerView:Lcom/yandex/div/core/player/DivPlayerView;

.field final synthetic $previewImageView:Lte8;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/player/DivPlayerView;Lte8;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder$bind$1;->$playerView:Lcom/yandex/div/core/player/DivPlayerView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder$bind$1;->$previewImageView:Lte8;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lby4;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivVideoBinder$bind$1;->invoke(Lby4;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Lby4;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder$bind$1;->$previewImageView:Lte8;

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    instance-of v2, p1, Lby4$b;

    if-eqz v2, :cond_0

    check-cast p1, Lby4$b;

    invoke-virtual {p1}, Lby4$b;->f()Landroid/graphics/drawable/PictureDrawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lte8;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v2, p1, Lby4$a;

    if-eqz v2, :cond_1

    check-cast p1, Lby4$a;

    invoke-virtual {p1}, Lby4$a;->f()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lte8;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder$bind$1;->$playerView:Lcom/yandex/div/core/player/DivPlayerView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
