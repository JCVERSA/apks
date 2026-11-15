.class final Lcom/yandex/div/core/view2/divs/DivVideoBinder$observeScale$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivVideoBinder;->k(Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;Lcom/yandex/div2/DivVideo;Loj3;Lcom/yandex/div/core/player/DivPlayerView;Lte8;)V
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
        "Lcom/yandex/div2/DivVideoScale;",
        "it",
        "Lzfb;",
        "invoke",
        "(Lcom/yandex/div2/DivVideoScale;)V",
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

.field final synthetic $previewView:Lte8;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/player/DivPlayerView;Lte8;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder$observeScale$1;->$playerView:Lcom/yandex/div/core/player/DivPlayerView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder$observeScale$1;->$previewView:Lte8;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/div2/DivVideoScale;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivVideoBinder$observeScale$1;->invoke(Lcom/yandex/div2/DivVideoScale;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Lcom/yandex/div2/DivVideoScale;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder$observeScale$1;->$playerView:Lcom/yandex/div/core/player/DivPlayerView;

    invoke-virtual {v0, p1}, Lcom/yandex/div/core/player/DivPlayerView;->setScale(Lcom/yandex/div2/DivVideoScale;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivVideoBinder$observeScale$1;->$previewView:Lte8;

    invoke-virtual {p0, p1}, Lte8;->a(Lcom/yandex/div2/DivVideoScale;)V

    return-void
.end method
