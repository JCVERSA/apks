.class public final Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorShowMode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivContainerBinder;->u(Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;Lcom/yandex/div2/DivContainer;Lcom/yandex/div2/DivContainer;Loj3;)V
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\n\u001a\u00020\u0006\"\u0012\u0008\u0000\u0010\u0003*\u00020\u0000*\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroid/view/ViewGroup;",
        "Lmk2;",
        "Lcom/yandex/div2/Div$b;",
        "T",
        "",
        "it",
        "Lzfb;",
        "invoke",
        "(Ljava/lang/Object;)V",
        "com/yandex/div/core/view2/divs/DivContainerBinder$bindSeparatorShowMode$callback$1",
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
.field final synthetic $newSeparator:Lcom/yandex/div2/DivContainer$Separator;

.field final synthetic $resolver:Loj3;

.field final synthetic $resolver$inlined:Loj3;

.field final synthetic $this_bindLineSeparator$inlined:Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivContainerBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivContainer$Separator;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;Lcom/yandex/div/core/view2/divs/DivContainerBinder;Loj3;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorShowMode$1;->$newSeparator:Lcom/yandex/div2/DivContainer$Separator;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorShowMode$1;->$resolver:Loj3;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorShowMode$1;->$this_bindLineSeparator$inlined:Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorShowMode$1;->this$0:Lcom/yandex/div/core/view2/divs/DivContainerBinder;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorShowMode$1;->$resolver$inlined:Loj3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorShowMode$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorShowMode$1;->$newSeparator:Lcom/yandex/div2/DivContainer$Separator;

    .line 3
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorShowMode$1;->$this_bindLineSeparator$inlined:Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorShowMode$1;->this$0:Lcom/yandex/div/core/view2/divs/DivContainerBinder;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivContainerBinder$bindLineSeparator$$inlined$bindSeparatorShowMode$1;->$resolver$inlined:Loj3;

    invoke-static {v1, p1, p0}, Lcom/yandex/div/core/view2/divs/DivContainerBinder;->k(Lcom/yandex/div/core/view2/divs/DivContainerBinder;Lcom/yandex/div2/DivContainer$Separator;Loj3;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout;->setShowLineSeparators(I)V

    return-void
.end method
