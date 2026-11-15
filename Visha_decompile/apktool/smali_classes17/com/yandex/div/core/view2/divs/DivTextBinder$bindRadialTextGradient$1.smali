.class final Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/DivTextBinder;->e0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivRadialGradient;Lcom/yandex/div2/DivTextGradient;Loj3;)V
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
        "\u0000\u0012\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "",
        "",
        "colors",
        "Lzfb;",
        "invoke",
        "(Ljava/util/List;)V",
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

.field final synthetic $newTextGradient:Lcom/yandex/div2/DivRadialGradient;

.field final synthetic $resolver:Loj3;

.field final synthetic $this_bindRadialTextGradient:Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

.field final synthetic this$0:Lcom/yandex/div/core/view2/divs/DivTextBinder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivRadialGradient;Landroid/util/DisplayMetrics;Loj3;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->this$0:Lcom/yandex/div/core/view2/divs/DivTextBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->$this_bindRadialTextGradient:Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->$newTextGradient:Lcom/yandex/div2/DivRadialGradient;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->$displayMetrics:Landroid/util/DisplayMetrics;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->$resolver:Loj3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "colors"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->this$0:Lcom/yandex/div/core/view2/divs/DivTextBinder;

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->$this_bindRadialTextGradient:Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    .line 3
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->$newTextGradient:Lcom/yandex/div2/DivRadialGradient;

    iget-object v0, v0, Lcom/yandex/div2/DivRadialGradient;->e:Lcom/yandex/div2/DivRadialGradientRadius;

    iget-object v3, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->$displayMetrics:Landroid/util/DisplayMetrics;

    const-string v4, "displayMetrics"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->$resolver:Loj3;

    invoke-static {v1, v0, v3, v5}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->B(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div2/DivRadialGradientRadius;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;

    move-result-object v3

    .line 4
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->this$0:Lcom/yandex/div/core/view2/divs/DivTextBinder;

    iget-object v5, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->$newTextGradient:Lcom/yandex/div2/DivRadialGradient;

    iget-object v5, v5, Lcom/yandex/div2/DivRadialGradient;->a:Lcom/yandex/div2/DivRadialGradientCenter;

    iget-object v6, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->$displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->$resolver:Loj3;

    invoke-static {v0, v5, v6, v7}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->A(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div2/DivRadialGradientCenter;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

    move-result-object v0

    .line 5
    iget-object v5, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->this$0:Lcom/yandex/div/core/view2/divs/DivTextBinder;

    iget-object v6, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->$newTextGradient:Lcom/yandex/div2/DivRadialGradient;

    iget-object v6, v6, Lcom/yandex/div2/DivRadialGradient;->b:Lcom/yandex/div2/DivRadialGradientCenter;

    iget-object v7, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->$displayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v7, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;->$resolver:Loj3;

    invoke-static {v5, v6, v7, p0}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->A(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div2/DivRadialGradientCenter;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

    move-result-object v5

    move-object v4, v0

    move-object v6, p1

    .line 6
    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->n(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Ljava/util/List;)V

    return-void
.end method
