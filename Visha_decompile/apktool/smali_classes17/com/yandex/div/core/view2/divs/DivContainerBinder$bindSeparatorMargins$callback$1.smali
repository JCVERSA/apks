.class public final Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparatorMargins$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\t\u001a\u00020\u0006\"\u0012\u0008\u0000\u0010\u0003*\u00020\u0000*\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Landroid/view/ViewGroup;",
        "Lmk2;",
        "Lcom/yandex/div2/Div$b;",
        "T",
        "",
        "<anonymous parameter 0>",
        "Lzfb;",
        "invoke",
        "(Ljava/lang/Object;)V",
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
.field final synthetic $applySeparatorMargins:Ls74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls74;"
        }
    .end annotation
.end field

.field final synthetic $margins:Lcom/yandex/div2/DivEdgeInsets;

.field final synthetic $resolver:Loj3;


# direct methods
.method public constructor <init>(Ls74;Lcom/yandex/div2/DivEdgeInsets;Loj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls74;",
            "Lcom/yandex/div2/DivEdgeInsets;",
            "Loj3;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparatorMargins$callback$1;->$applySeparatorMargins:Ls74;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparatorMargins$callback$1;->$margins:Lcom/yandex/div2/DivEdgeInsets;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparatorMargins$callback$1;->$resolver:Loj3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparatorMargins$callback$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparatorMargins$callback$1;->$applySeparatorMargins:Ls74;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparatorMargins$callback$1;->$margins:Lcom/yandex/div2/DivEdgeInsets;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindSeparatorMargins$callback$1;->$resolver:Loj3;

    invoke-interface {p1, v0, p0}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
