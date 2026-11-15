.class public final Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqj3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;,
        Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$b;,
        Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$c;,
        Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$d;,
        Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;
    }
.end annotation


# static fields
.field public static final q:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$c;


# instance fields
.field public final b:Lcom/yandex/div/core/view2/Div2View;

.field public final c:Landroid/view/View;

.field public d:Lcom/yandex/div2/DivBorder;

.field public final e:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$b;

.field public final f:Lyi5;

.field public final g:Lyi5;

.field public final h:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$d;

.field public i:F

.field public j:[F

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public final p:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->q:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$c;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;)V
    .locals 2

    const-string v0, "divView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->b:Lcom/yandex/div/core/view2/Div2View;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    new-instance p1, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$b;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$b;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->e:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$b;

    new-instance p1, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$borderParams$2;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$borderParams$2;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->f:Lyi5;

    new-instance p1, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$shadowParams$2;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$shadowParams$2;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->g:Lyi5;

    new-instance p1, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$d;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$d;-><init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->h:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$d;

    iput-boolean v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->o:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->p:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;Lcom/yandex/div2/DivBorder;Loj3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->e(Lcom/yandex/div2/DivBorder;Loj3;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;)Landroid/util/DisplayMetrics;
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->k()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;)F
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->i:F

    return p0
.end method

.method public static final synthetic d(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    return-object p0
.end method

.method private final n()V
    .locals 4

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->t()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->j:[F

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lhi;->U([F)F

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    cmpg-float v3, v0, v3

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->u()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->h:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$d;

    invoke-virtual {v1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$d;->a(F)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->h:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$d;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    iget-boolean p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->o:Z

    invoke-virtual {v0, p0}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method


# virtual methods
.method public final e(Lcom/yandex/div2/DivBorder;Loj3;)V
    .locals 10

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->k()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/yandex/div2/DivBorder;->e:Lcom/yandex/div2/DivStroke;

    if-eqz v2, :cond_0

    invoke-static {v2, p2, v0}, Ltg2;->a(Lcom/yandex/div2/DivStroke;Loj3;Landroid/util/DisplayMetrics;)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->i:F

    cmpl-float v2, v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->l:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    if-eqz p1, :cond_2

    iget-object v2, p1, Lcom/yandex/div2/DivBorder;->e:Lcom/yandex/div2/DivStroke;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/yandex/div2/DivStroke;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->j()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;

    move-result-object v6

    iget v7, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->i:F

    invoke-virtual {v6, v7, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->h(FI)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->j()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;

    move-result-object v2

    if-eqz p1, :cond_3

    iget-object v6, p1, Lcom/yandex/div2/DivBorder;->e:Lcom/yandex/div2/DivStroke;

    if-eqz v6, :cond_3

    iget-object v6, v6, Lcom/yandex/div2/DivStroke;->b:Lcom/yandex/div2/DivStrokeStyle;

    goto :goto_3

    :cond_3
    move-object v6, v5

    :goto_3
    instance-of v6, v6, Lcom/yandex/div2/DivStrokeStyle$b;

    invoke-virtual {v2, v6}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->g(Z)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result v2

    int-to-float v2, v2

    iget-object v6, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result v6

    int-to-float v6, v6

    invoke-static {p1, v2, v6, v0, p2}, Leu2;->e(Lcom/yandex/div2/DivBorder;FFLandroid/util/DisplayMetrics;Loj3;)[F

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v5

    :goto_4
    iput-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->j:[F

    if-eqz v0, :cond_8

    invoke-static {v0}, Lhi;->U([F)F

    move-result v2

    array-length v6, v0

    move v7, v4

    :goto_5
    if-ge v7, v6, :cond_7

    aget v8, v0, v7

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    move v0, v4

    goto :goto_6

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    move v0, v3

    :goto_6
    xor-int/2addr v0, v3

    goto :goto_7

    :cond_8
    move v0, v4

    :goto_7
    iput-boolean v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->k:Z

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->m:Z

    if-eqz p1, :cond_9

    iget-object v2, p1, Lcom/yandex/div2/DivBorder;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v2, :cond_9

    invoke-virtual {v2, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_8

    :cond_9
    move v2, v4

    :goto_8
    iput-boolean v2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->n:Z

    if-eqz v2, :cond_b

    if-eqz p1, :cond_a

    iget-object v2, p1, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    goto :goto_9

    :cond_a
    move-object v2, v5

    :goto_9
    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/yandex/div/core/view2/divs/widgets/DivFrameLayout;

    if-eqz v2, :cond_b

    goto :goto_a

    :cond_b
    move v3, v4

    :cond_c
    :goto_a
    iput-boolean v3, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->m:Z

    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    iget-boolean v4, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->n:Z

    if-nez v4, :cond_d

    goto :goto_b

    :cond_d
    if-eqz v3, :cond_e

    goto :goto_b

    :cond_e
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yandex/div/R$dimen;->div_shadow_elevation:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    :goto_b
    invoke-virtual {v2, v1}, Landroid/view/View;->setElevation(F)V

    iget-boolean v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->m:Z

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->l()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;

    move-result-object v1

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    goto :goto_c

    :cond_f
    move-object p1, v5

    :goto_c
    invoke-virtual {v1, p1, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;->g(Lcom/yandex/div2/DivShadow;Loj3;)V

    :cond_10
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->m()V

    iget-boolean p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->m:Z

    if-nez p1, :cond_11

    if-eqz v0, :cond_13

    :cond_11
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_12

    move-object v5, p0

    check-cast v5, Landroid/view/View;

    :cond_12
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    :cond_13
    return-void
.end method

.method public final f(Lcom/yandex/div2/DivBorder;Loj3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->e(Lcom/yandex/div2/DivBorder;Loj3;)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->p(Lcom/yandex/div2/DivBorder;Loj3;)V

    return-void
.end method

.method public final g(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->e:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$b;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$b;->a()Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method public getSubscriptions()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->p:Ljava/util/List;

    return-object p0
.end method

.method public final h(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->j()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->d()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->j()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->c()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final i(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    invoke-static {v0}, Lm7b;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->m:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->l()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;->b()F

    move-result v0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->l()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;->c()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->l()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;->a()Landroid/graphics/NinePatch;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->l()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;->e()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->l()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;->d()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :goto_1
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public final j()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->f:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;

    return-object p0
.end method

.method public final k()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v0, "view.resources.displayMetrics"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->g:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;

    return-object p0
.end method

.method public final m()V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->o()V

    invoke-direct {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->n()V

    return-void
.end method

.method public final o()V
    .locals 6

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->j:[F

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->e:Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$b;

    invoke-virtual {v1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$b;->b([F)V

    iget v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->i:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    sub-float/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->l:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->j()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$a;->f([F)V

    :cond_2
    iget-boolean v1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->m:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->l()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$e;->f([F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final p(Lcom/yandex/div2/DivBorder;Loj3;)V
    .locals 3

    if-eqz p1, :cond_10

    invoke-static {p1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->w(Lcom/yandex/div2/DivBorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_e

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$observeBorder$callback$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer$observeBorder$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;Lcom/yandex/div2/DivBorder;Loj3;)V

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->a:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->b:Lcom/yandex/div2/DivCornersRadius;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/yandex/div2/DivCornersRadius;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->b:Lcom/yandex/div2/DivCornersRadius;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/yandex/div2/DivCornersRadius;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->b:Lcom/yandex/div2/DivCornersRadius;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/yandex/div2/DivCornersRadius;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->b:Lcom/yandex/div2/DivCornersRadius;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/yandex/div2/DivCornersRadius;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->e:Lcom/yandex/div2/DivStroke;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/yandex/div2/DivStroke;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->e:Lcom/yandex/div2/DivStroke;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/yandex/div2/DivStroke;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_7

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_6

    :cond_7
    move-object v1, v2

    :goto_6
    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->e:Lcom/yandex/div2/DivStroke;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/yandex/div2/DivStroke;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_8

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_7

    :cond_8
    move-object v1, v2

    :goto_7
    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/yandex/div2/DivShadow;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_9

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_8

    :cond_9
    move-object v1, v2

    :goto_8
    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/yandex/div2/DivShadow;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_9

    :cond_a
    move-object v1, v2

    :goto_9
    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lcom/yandex/div2/DivShadow;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_a

    :cond_b
    move-object v1, v2

    :goto_a
    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/yandex/div2/DivDimension;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_c

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_b

    :cond_c
    move-object v1, v2

    :goto_b
    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_d

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_c

    :cond_d
    move-object v1, v2

    :goto_c
    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    if-eqz v1, :cond_e

    iget-object v1, v1, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz v1, :cond_e

    iget-object v1, v1, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    if-eqz v1, :cond_e

    iget-object v1, v1, Lcom/yandex/div2/DivDimension;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_e

    invoke-virtual {v1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_d

    :cond_e
    move-object v1, v2

    :goto_d
    invoke-interface {p0, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p1, p1, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p1, :cond_f

    invoke-virtual {p1, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    :cond_f
    invoke-interface {p0, v2}, Lqj3;->addSubscription(Lqc2;)V

    :cond_10
    :goto_e
    return-void
.end method

.method public final q(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->m()V

    return-void
.end method

.method public final r(Lcom/yandex/div2/DivBorder;Loj3;)V
    .locals 1

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->d:Lcom/yandex/div2/DivBorder;

    invoke-static {p1, v0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->c(Lcom/yandex/div2/DivBorder;Lcom/yandex/div2/DivBorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lqj3;->release()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->d:Lcom/yandex/div2/DivBorder;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->f(Lcom/yandex/div2/DivBorder;Loj3;)V

    return-void
.end method

.method public final s(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->o:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->o:Z

    invoke-direct {p0}, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->n()V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->b:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getForceCanvasClipping()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->l:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    invoke-static {p0}, Lm7b;->a(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->m:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;->c:Landroid/view/View;

    invoke-static {p0}, Lm7b;->a(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
