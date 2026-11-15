.class public Lst2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Loj8;


# direct methods
.method public constructor <init>(Loj8;)V
    .locals 1

    const-string v0, "div2Builder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lst2;->a:Loj8;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;II)Lcom/yandex/div/core/tooltip/DivTooltipContainer;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lst2;->b(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;)Landroid/view/View;

    move-result-object p0

    new-instance p2, Lcom/yandex/div/core/tooltip/DivTooltipContainer;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p1, "context.divView.getContext()"

    invoke-static {v1, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/tooltip/DivTooltipContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, p3, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public final b(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;)Landroid/view/View;
    .locals 9

    invoke-virtual {p2}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    iget-object p0, p0, Lst2;->a:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldd2;

    sget-object v1, Lcom/yandex/div/core/state/DivStatePath;->f:Lcom/yandex/div/core/state/DivStatePath$a;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, p2}, Lcom/yandex/div/core/state/DivStatePath$a;->h(JLcom/yandex/div2/Div;)Lcom/yandex/div/core/state/DivStatePath;

    move-result-object v1

    invoke-virtual {p0, p2, p1, v1}, Ldd2;->a(Lcom/yandex/div2/Div;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v0}, Log2;->getWidth()Lcom/yandex/div2/DivSize;

    move-result-object v1

    const-string v2, "displayMetrics"

    invoke-static {p2, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->D0(Lcom/yandex/div2/DivSize;Landroid/util/DisplayMetrics;Loj3;Landroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)I

    move-result v8

    invoke-interface {v0}, Log2;->getHeight()Lcom/yandex/div2/DivSize;

    move-result-object v1

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->D0(Lcom/yandex/div2/DivSize;Landroid/util/DisplayMetrics;Loj3;Landroid/view/ViewGroup$LayoutParams;ILjava/lang/Object;)I

    move-result p1

    invoke-direct {v7, v8, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-object p0
.end method
