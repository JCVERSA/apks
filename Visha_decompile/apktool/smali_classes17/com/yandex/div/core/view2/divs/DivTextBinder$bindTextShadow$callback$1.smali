.class final Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivTextBinder;->n0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V
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
        "\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
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
.field final synthetic $displayMetrics:Landroid/util/DisplayMetrics;

.field final synthetic $newDiv:Lcom/yandex/div2/DivText;

.field final synthetic $resolver:Loj3;

.field final synthetic $shadow:Lcom/yandex/div2/DivShadow;

.field final synthetic $this_bindTextShadow:Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivTextBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivShadow;Loj3;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivText;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivTextBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;->$this_bindTextShadow:Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;->$shadow:Lcom/yandex/div2/DivShadow;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;->$resolver:Loj3;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;->$displayMetrics:Landroid/util/DisplayMetrics;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;->$newDiv:Lcom/yandex/div2/DivText;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 5

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;->this$0:Lcom/yandex/div/core/view2/divs/DivTextBinder;

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;->$this_bindTextShadow:Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;->$shadow:Lcom/yandex/div2/DivShadow;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;->$resolver:Loj3;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;->$displayMetrics:Landroid/util/DisplayMetrics;

    const-string v4, "displayMetrics"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;->$newDiv:Lcom/yandex/div2/DivText;

    iget-object v4, v4, Lcom/yandex/div2/DivText;->Z:Lcom/yandex/div/json/expressions/Expression;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;->$resolver:Loj3;

    invoke-virtual {v4, p0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p1, v1, v2, v3, p0}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->z(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div2/DivShadow;Loj3;Landroid/util/DisplayMetrics;I)Lof9;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, v0, p0}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->u(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;Lof9;)V

    return-void
.end method
