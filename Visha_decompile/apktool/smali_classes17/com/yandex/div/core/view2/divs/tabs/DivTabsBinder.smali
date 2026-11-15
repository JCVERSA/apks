.class public final Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;
.super Lwu2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$a;,
        Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$b;
    }
.end annotation


# static fields
.field public static final p:Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$a;

.field public static final q:Lcom/yandex/div2/DivTabs$TabTitleStyle;


# instance fields
.field public final b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

.field public final c:Lcom/yandex/div/core/view2/DivViewCreator;

.field public final d:Loj8;

.field public final e:Lcdc;

.field public final f:Lfda;

.field public final g:Lcom/yandex/div/core/view2/divs/DivActionBinder;

.field public final h:Lgd2;

.field public final i:Lwk2;

.field public final j:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

.field public final k:Lzn2;

.field public final l:Landroid/content/Context;

.field public final m:Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;

.field public final n:Lrda;

.field public o:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->p:Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$a;

    new-instance v0, Lcom/yandex/div2/DivTabs$TabTitleStyle;

    move-object v2, v0

    const v23, 0xfffff

    const/16 v24, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v2 .. v24}, Lcom/yandex/div2/DivTabs$TabTitleStyle;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCornersRadius;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivEdgeInsets;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->q:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcom/yandex/div/core/view2/DivViewCreator;Loj8;Lcdc;Lfda;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lgd2;Lwk2;Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lzn2;Landroid/content/Context;Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;Lrda;)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewCreator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divBinder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewPool"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textStyleProvider"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionBinder"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div2Logger"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageLoader"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibilityActionTracker"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divPatchCache"

    invoke-static {p10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p11, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runtimeVisitor"

    invoke-static {p12, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tabsStateCache"

    invoke-static {p13, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwu2;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->c:Lcom/yandex/div/core/view2/DivViewCreator;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->d:Loj8;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->e:Lcdc;

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->f:Lfda;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->g:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iput-object p7, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->h:Lgd2;

    iput-object p8, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->i:Lwk2;

    iput-object p9, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->j:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    iput-object p10, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->k:Lzn2;

    iput-object p11, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->l:Landroid/content/Context;

    iput-object p12, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->m:Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;

    iput-object p13, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->n:Lrda;

    new-instance p1, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$c;

    invoke-direct {p1, p11}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$c;-><init>(Landroid/content/Context;)V

    const/16 p2, 0xc

    const-string p3, "DIV2.TAB_HEADER_VIEW"

    invoke-interface {p4, p3, p1, p2}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p1, Lsr2;

    invoke-direct {p1, p0}, Lsr2;-><init>(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;)V

    const/4 p0, 0x2

    const-string p2, "DIV2.TAB_ITEM_VIEW"

    invoke-interface {p4, p2, p1, p0}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    return-void
.end method

.method public static final B(Lcom/yandex/div/json/expressions/Expression;Loj3;Landroid/util/DisplayMetrics;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-static {p0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static synthetic f(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->v(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->t(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/a;)V

    return-void
.end method

.method public static synthetic i(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;)Lcom/yandex/div/internal/widget/tabs/TabItemLayout;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->j(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;)Lcom/yandex/div/internal/widget/tabs/TabItemLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;)Lcom/yandex/div/internal/widget/tabs/TabItemLayout;
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/internal/widget/tabs/TabItemLayout;

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->l:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/yandex/div/internal/widget/tabs/TabItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final synthetic k(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;Loj3;Lcom/yandex/div2/DivTabs$TabTitleDelimiter;Lcom/yandex/div/core/view2/a;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->q(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;Loj3;Lcom/yandex/div2/DivTabs$TabTitleDelimiter;Lcom/yandex/div/core/view2/a;)V

    return-void
.end method

.method public static final synthetic l(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;Loj3;Lcom/yandex/div2/DivTabs$TabTitleStyle;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->r(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;Loj3;Lcom/yandex/div2/DivTabs$TabTitleStyle;)V

    return-void
.end method

.method public static final synthetic m(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivTabs;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lrg2;Lcom/yandex/div/core/state/DivStatePath;Ljava/util/List;I)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->w(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivTabs;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lrg2;Lcom/yandex/div/core/state/DivStatePath;Ljava/util/List;I)V

    return-void
.end method

.method public static final synthetic n()Lcom/yandex/div2/DivTabs$TabTitleStyle;
    .locals 1

    sget-object v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->q:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    return-object v0
.end method

.method public static final synthetic o(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;IZ)Ljava/util/Set;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->C(IZ)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic p(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->o:Ljava/lang/Long;

    return-void
.end method

.method public static final t(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->h:Lgd2;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p1

    invoke-interface {p0, p1}, Lgd2;->w(Lcom/yandex/div/core/view2/Div2View;)V

    return-void
.end method

.method public static final v(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "$list"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final w(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivTabs;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lrg2;Lcom/yandex/div/core/state/DivStatePath;Ljava/util/List;I)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->z(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivTabs;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lrg2;Lcom/yandex/div/core/state/DivStatePath;)Lpr2;

    move-result-object p0

    new-instance p1, Ltr2;

    invoke-direct {p1, p6}, Ltr2;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, p7}, Lpr2;->K(Lcom/yandex/div/internal/widget/tabs/b$g;I)V

    invoke-virtual {p3, p0}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->setDivTabsAdapter(Lpr2;)V

    return-void
.end method

.method public static final x(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string v0, "$list"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final A(Lcom/yandex/div2/DivTabs$TabTitleStyle;Landroid/util/DisplayMetrics;Loj3;)[F
    .locals 3

    iget-object p0, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_0

    invoke-static {p0, p3, p2}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->B(Lcom/yandex/div/json/expressions/Expression;Loj3;Landroid/util/DisplayMetrics;)F

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->h:Lcom/yandex/div2/DivCornersRadius;

    if-nez p0, :cond_1

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iget-object v0, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->h:Lcom/yandex/div2/DivCornersRadius;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/yandex/div2/DivCornersRadius;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_2

    invoke-static {v0, p3, p2}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->B(Lcom/yandex/div/json/expressions/Expression;Loj3;Landroid/util/DisplayMetrics;)F

    move-result v0

    goto :goto_1

    :cond_2
    move v0, p0

    :goto_1
    iget-object v1, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->h:Lcom/yandex/div2/DivCornersRadius;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/yandex/div2/DivCornersRadius;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_3

    invoke-static {v1, p3, p2}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->B(Lcom/yandex/div/json/expressions/Expression;Loj3;Landroid/util/DisplayMetrics;)F

    move-result v1

    goto :goto_2

    :cond_3
    move v1, p0

    :goto_2
    iget-object v2, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->h:Lcom/yandex/div2/DivCornersRadius;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/yandex/div2/DivCornersRadius;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v2, :cond_4

    invoke-static {v2, p3, p2}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->B(Lcom/yandex/div/json/expressions/Expression;Loj3;Landroid/util/DisplayMetrics;)F

    move-result v2

    goto :goto_3

    :cond_4
    move v2, p0

    :goto_3
    iget-object p1, p1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->h:Lcom/yandex/div2/DivCornersRadius;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/yandex/div2/DivCornersRadius;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p1, :cond_5

    invoke-static {p1, p3, p2}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->B(Lcom/yandex/div/json/expressions/Expression;Loj3;Landroid/util/DisplayMetrics;)F

    move-result p0

    :cond_5
    const/16 p1, 0x8

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput v0, p1, p2

    const/4 p2, 0x1

    aput v0, p1, p2

    const/4 p2, 0x2

    aput v1, p1, p2

    const/4 p2, 0x3

    aput v1, p1, p2

    const/4 p2, 0x4

    aput p0, p1, p2

    const/4 p2, 0x5

    aput p0, p1, p2

    const/4 p0, 0x6

    aput v2, p1, p0

    const/4 p0, 0x7

    aput v2, p1, p0

    return-object p1
.end method

.method public final C(IZ)Ljava/util/Set;
    .locals 0

    if-eqz p2, :cond_0

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lu15;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lu15;-><init>(II)V

    invoke-static {p0}, Li81;->f1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final D()Lcom/yandex/div/internal/widget/tabs/b$i;
    .locals 8

    new-instance p0, Lcom/yandex/div/internal/widget/tabs/b$i;

    sget v1, Lcom/yandex/div/R$id;->base_tabbed_title_container_scroller:I

    sget v2, Lcom/yandex/div/R$id;->div_tabs_pager_container:I

    sget v3, Lcom/yandex/div/R$id;->div_tabs_container_helper:I

    const-string v6, "DIV2.TAB_HEADER_VIEW"

    const-string v7, "DIV2.TAB_ITEM_VIEW"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/yandex/div/internal/widget/tabs/b$i;-><init>(IIIZZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final E(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Loj3;Lcom/yandex/div2/DivTabs$TabTitleDelimiter;Lcom/yandex/div/core/view2/a;)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getTitleLayout()Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->q(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;Loj3;Lcom/yandex/div2/DivTabs$TabTitleDelimiter;Lcom/yandex/div/core/view2/a;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeDividerStyle$callback$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeDividerStyle$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Loj3;Lcom/yandex/div2/DivTabs$TabTitleDelimiter;Lcom/yandex/div/core/view2/a;)V

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleDelimiter;->c:Lcom/yandex/div2/DivFixedSize;

    iget-object p0, p0, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleDelimiter;->c:Lcom/yandex/div2/DivFixedSize;

    iget-object p0, p0, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleDelimiter;->a:Lcom/yandex/div2/DivFixedSize;

    iget-object p0, p0, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleDelimiter;->a:Lcom/yandex/div2/DivFixedSize;

    iget-object p0, p0, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleDelimiter;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    return-void
.end method

.method public final F(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;Lcom/yandex/div2/DivTabs;Loj3;)V
    .locals 2

    new-instance p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;

    invoke-direct {p0, p2, p3, p1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeHeight$applyHeight$1;-><init>(Lcom/yandex/div2/DivTabs;Loj3;Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lvr8;->a(Landroid/view/View;)Lqj3;

    move-result-object p1

    iget-object v1, p2, Lcom/yandex/div2/DivTabs;->D:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p3, p0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-interface {p1, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTabs;->D:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->j:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p3, p0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-interface {p1, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTabs;->D:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->t:Lcom/yandex/div2/DivEdgeInsets;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p3, p0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    invoke-interface {p1, v1}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTabs;->D:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/yandex/div2/DivTabs$TabTitleStyle;->t:Lcom/yandex/div2/DivEdgeInsets;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p3, p0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    :cond_3
    invoke-interface {p1, v0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v0, p2, Lcom/yandex/div2/DivTabs;->E:Lcom/yandex/div2/DivEdgeInsets;

    iget-object v0, v0, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p3, p0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {p1, v0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object p2, p2, Lcom/yandex/div2/DivTabs;->E:Lcom/yandex/div2/DivEdgeInsets;

    iget-object p2, p2, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p2, p3, p0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-interface {p1, p0}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final G(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Loj3;Lcom/yandex/div2/DivTabs$TabTitleStyle;)V
    .locals 2

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getTitleLayout()Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    move-result-object v0

    if-nez p3, :cond_0

    sget-object v1, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->q:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    goto :goto_0

    :cond_0
    move-object v1, p3

    :goto_0
    invoke-virtual {p0, v0, p2, v1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->r(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;Loj3;Lcom/yandex/div2/DivTabs$TabTitleStyle;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeStyle$callback$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$observeStyle$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Loj3;Lcom/yandex/div2/DivTabs$TabTitleStyle;)V

    if-eqz p3, :cond_1

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    :cond_1
    if-eqz p3, :cond_2

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    :cond_2
    if-eqz p3, :cond_3

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->p:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    :cond_3
    if-eqz p3, :cond_4

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->m:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    :cond_4
    if-eqz p3, :cond_5

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    :cond_5
    if-eqz p3, :cond_6

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->h:Lcom/yandex/div2/DivCornersRadius;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/yandex/div2/DivCornersRadius;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    :cond_6
    if-eqz p3, :cond_7

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->h:Lcom/yandex/div2/DivCornersRadius;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/yandex/div2/DivCornersRadius;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    :cond_7
    if-eqz p3, :cond_8

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->h:Lcom/yandex/div2/DivCornersRadius;

    if-eqz p0, :cond_8

    iget-object p0, p0, Lcom/yandex/div2/DivCornersRadius;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    :cond_8
    if-eqz p3, :cond_9

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->h:Lcom/yandex/div2/DivCornersRadius;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/yandex/div2/DivCornersRadius;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    :cond_9
    if-eqz p3, :cond_a

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->q:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    :cond_a
    if-eqz p3, :cond_b

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    :cond_b
    if-eqz p3, :cond_c

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->e:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p2, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    :cond_c
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;)V
    .locals 0

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    check-cast p3, Lcom/yandex/div2/DivTabs;

    check-cast p4, Lcom/yandex/div2/DivTabs;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->s(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivTabs;Lcom/yandex/div2/DivTabs;)V

    return-void
.end method

.method public final q(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;Loj3;Lcom/yandex/div2/DivTabs$TabTitleDelimiter;Lcom/yandex/div/core/view2/a;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p3, Lcom/yandex/div2/DivTabs$TabTitleDelimiter;->c:Lcom/yandex/div2/DivFixedSize;

    iget-object v2, v1, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object v1, v1, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivSizeUnit;

    const-string v4, "metrics"

    invoke-static {v0, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3, v1, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->F0(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)I

    move-result v1

    iget-object v2, p3, Lcom/yandex/div2/DivTabs$TabTitleDelimiter;->a:Lcom/yandex/div2/DivFixedSize;

    iget-object v3, v2, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v2, v2, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivSizeUnit;

    invoke-static {v3, v4, v2, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->F0(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)I

    move-result v0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->i:Lwk2;

    iget-object p3, p3, Lcom/yandex/div2/DivTabs$TabTitleDelimiter;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p3

    new-instance v2, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$c;

    invoke-direct {v2, p1, v1, v0, p3}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$c;-><init>(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;IILcom/yandex/div/core/view2/Div2View;)V

    invoke-interface {p0, p2, v2}, Lwk2;->loadImage(Ljava/lang/String;Lrk2;)Ljn5;

    move-result-object p0

    const-string p2, "TabTitlesLayoutView<*>.a\u2026}\n            }\n        )"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/yandex/div/core/view2/Div2View;->addLoadReference(Ljn5;Landroid/view/View;)V

    return-void
.end method

.method public final r(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;Loj3;Lcom/yandex/div2/DivTabs$TabTitleStyle;)V
    .locals 4

    iget-object v0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->m:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->setTabColors(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v1, "metrics"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, v0, p2}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->A(Lcom/yandex/div2/DivTabs$TabTitleStyle;Landroid/util/DisplayMetrics;Loj3;)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setTabIndicatorCornersRadii([F)V

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-static {p0, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setTabItemSpacing(I)V

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivTabs$TabTitleStyle$AnimationType;

    sget-object v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;->NONE:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;

    goto :goto_1

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    sget-object p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;->FADE:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;->SLIDE:Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;

    :goto_1
    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setAnimationType(Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout$AnimationType;)V

    iget-object p0, p3, Lcom/yandex/div2/DivTabs$TabTitleStyle;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setAnimationDuration(J)V

    invoke-virtual {p1, p3}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->setTabTitleStyle(Lcom/yandex/div2/DivTabs$TabTitleStyle;)V

    return-void
.end method

.method public s(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivTabs;Lcom/yandex/div2/DivTabs;)V
    .locals 3

    const-string p4, "<this>"

    invoke-static {p1, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "bindingContext"

    invoke-static {p2, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "div"

    invoke-static {p3, p4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    new-instance v1, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bind$applyPaddings$1;

    invoke-direct {v1, p1, p3, p4}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bind$applyPaddings$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div2/DivTabs;Loj3;)V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p3, Lcom/yandex/div2/DivTabs;->E:Lcom/yandex/div2/DivEdgeInsets;

    iget-object v2, v2, Lcom/yandex/div2/DivEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p4, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->addSubscription(Lqc2;)V

    iget-object v2, p3, Lcom/yandex/div2/DivTabs;->E:Lcom/yandex/div2/DivEdgeInsets;

    iget-object v2, v2, Lcom/yandex/div2/DivEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p4, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->addSubscription(Lqc2;)V

    iget-object v2, p3, Lcom/yandex/div2/DivTabs;->E:Lcom/yandex/div2/DivEdgeInsets;

    iget-object v2, v2, Lcom/yandex/div2/DivEdgeInsets;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p4, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->addSubscription(Lqc2;)V

    iget-object v2, p3, Lcom/yandex/div2/DivTabs;->E:Lcom/yandex/div2/DivEdgeInsets;

    iget-object v2, v2, Lcom/yandex/div2/DivEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p4, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->addSubscription(Lqc2;)V

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getTitleLayout()Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p4}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->F(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;Lcom/yandex/div2/DivTabs;Loj3;)V

    iget-object v1, p3, Lcom/yandex/div2/DivTabs;->D:Lcom/yandex/div2/DivTabs$TabTitleStyle;

    invoke-virtual {p0, p1, p4, v1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->G(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Loj3;Lcom/yandex/div2/DivTabs$TabTitleStyle;)V

    iget-object v1, p3, Lcom/yandex/div2/DivTabs;->C:Lcom/yandex/div2/DivTabs$TabTitleDelimiter;

    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->E(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Loj3;Lcom/yandex/div2/DivTabs$TabTitleDelimiter;Lcom/yandex/div/core/view2/a;)V

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getPagerLayout()Lcom/yandex/div/internal/widget/tabs/ViewPagerFixedSizeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p3, Lcom/yandex/div2/DivTabs;->A:Lcom/yandex/div2/DivEdgeInsets;

    new-instance v1, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bind$1;

    invoke-direct {v1, p1, p3, p4}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bind$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div2/DivTabs;Loj3;)V

    invoke-static {v0, p4, p1, v1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt;->a(Lcom/yandex/div2/DivEdgeInsets;Loj3;Lqj3;Le74;)V

    iget-object v0, p3, Lcom/yandex/div2/DivTabs;->z:Lcom/yandex/div/json/expressions/Expression;

    new-instance v1, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bind$2;

    invoke-direct {v1, p1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bind$2;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;)V

    invoke-virtual {v0, p4, v1}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->addSubscription(Lqc2;)V

    iget-object v0, p3, Lcom/yandex/div2/DivTabs;->n:Lcom/yandex/div/json/expressions/Expression;

    new-instance v1, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bind$3;

    invoke-direct {v1, p1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bind$3;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;)V

    invoke-virtual {v0, p4, v1}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->addSubscription(Lqc2;)V

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getTitleLayout()Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    move-result-object v0

    new-instance v1, Lqr2;

    invoke-direct {v1, p0, p2}, Lqr2;-><init>(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/a;)V

    invoke-virtual {v0, v1}, Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;->setOnScrollChangedListener(Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView$b;)V

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getTitleLayout()Lcom/yandex/div/internal/widget/tabs/TabTitlesLayoutView;

    move-result-object p0

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getInputFocusTracker$div_release()La15;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/yandex/div/internal/widget/tabs/BaseIndicatorTabLayout;->setFocusTracker(La15;)V

    iget-object p0, p3, Lcom/yandex/div2/DivTabs;->u:Lcom/yandex/div/json/expressions/Expression;

    new-instance p2, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bind$5;

    invoke-direct {p2, p1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bind$5;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;)V

    invoke-virtual {p0, p4, p2}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final u(Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div2/DivTabs;Lcom/yandex/div2/DivTabs;Lrg2;Lqj3;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v13

    iget-object v0, v11, Lcom/yandex/div2/DivTabs;->q:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivTabs$Item;

    new-instance v2, Lyp2;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const-string v4, "view.resources.displayMetrics"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1, v3, v13}, Lyp2;-><init>(Lcom/yandex/div2/DivTabs$Item;Landroid/util/DisplayMetrics;Loj3;)V

    invoke-interface {v8, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getDivTabsAdapter()Lpr2;

    move-result-object v0

    invoke-static {v0, v11, v13}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt;->d(Lpr2;Lcom/yandex/div2/DivTabs;Loj3;)Lpr2;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object/from16 v14, p2

    invoke-virtual {v0, v14}, Lpr2;->J(Lcom/yandex/div/core/view2/a;)V

    move-object/from16 v15, p1

    invoke-virtual {v0, v15}, Lpr2;->L(Lcom/yandex/div/core/state/DivStatePath;)V

    invoke-virtual {v0}, Lpr2;->F()Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;->d(Lcom/yandex/div2/DivTabs;)V

    invoke-virtual {v0}, Lpr2;->D()Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;->c(Lcom/yandex/div2/DivTabs;)V

    move-object/from16 v1, p4

    if-ne v1, v11, :cond_1

    invoke-virtual {v0}, Lpr2;->I()V

    goto/16 :goto_4

    :cond_1
    new-instance v1, Lrr2;

    invoke-direct {v1, v8}, Lrr2;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1, v13, v12}, Lcom/yandex/div/internal/widget/tabs/b;->v(Lcom/yandex/div/internal/widget/tabs/b$g;Loj3;Lqj3;)V

    goto :goto_4

    :cond_2
    move-object/from16 v15, p1

    move-object/from16 v14, p2

    iget-object v0, v11, Lcom/yandex/div2/DivTabs;->y:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v13}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 v2, 0x1f

    shr-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v2, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable convert \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\' to Int"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lxi;->i(Ljava/lang/String;)V

    :cond_4
    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    const v0, 0x7fffffff

    goto :goto_1

    :cond_5
    const/high16 v0, -0x80000000

    :goto_1
    move v7, v0

    goto :goto_3

    :cond_6
    :goto_2
    long-to-int v0, v0

    goto :goto_1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p1

    move-object v6, v8

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->w(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivTabs;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lrg2;Lcom/yandex/div/core/state/DivStatePath;Ljava/util/List;I)V

    :goto_4
    iget-object v0, v11, Lcom/yandex/div2/DivTabs;->q:Ljava/util/List;

    new-instance v1, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$2;

    invoke-direct {v1, v10}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$2;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;)V

    invoke-static {v0, v13, v12, v1}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinderKt;->b(Ljava/util/List;Loj3;Lqj3;Le74;)V

    new-instance v7, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$selectTab$1;

    invoke-direct {v7, v9, v10}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$selectTab$1;-><init>(Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;)V

    iget-object v6, v11, Lcom/yandex/div2/DivTabs;->j:Lcom/yandex/div/json/expressions/Expression;

    new-instance v5, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;

    move-object v0, v5

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object v3, v13

    move-object/from16 v4, p0

    move-object v14, v5

    move-object/from16 v5, p2

    move-object v15, v6

    move-object/from16 v6, p6

    move-object v10, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$3;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div2/DivTabs;Loj3;Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div/core/view2/a;Lrg2;Lcom/yandex/div/core/state/DivStatePath;Ljava/util/List;)V

    invoke-virtual {v15, v13, v14}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {v12, v0}, Lqj3;->addSubscription(Lqc2;)V

    iget-object v0, v11, Lcom/yandex/div2/DivTabs;->y:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v13, v10}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {v12, v0}, Lqj3;->addSubscription(Lqc2;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getPrevDataTag()Lei2;

    move-result-object v1

    sget-object v2, Lei2;->b:Lei2;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getPrevDataTag()Lei2;

    move-result-object v0

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v0, 0x1

    :goto_6
    iget-object v1, v11, Lcom/yandex/div2/DivTabs;->y:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, v13}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    if-eqz v0, :cond_a

    iget-object v0, v9, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->o:Ljava/lang/Long;

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_a

    goto :goto_8

    :cond_a
    :goto_7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    iget-object v0, v11, Lcom/yandex/div2/DivTabs;->B:Lcom/yandex/div/json/expressions/Expression;

    new-instance v1, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$4;

    move-object/from16 v2, p3

    invoke-direct {v1, v2, v9, v11}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$bindAdapter$4;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;Lcom/yandex/div2/DivTabs;)V

    invoke-virtual {v0, v13, v1}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-interface {v12, v0}, Lqj3;->addSubscription(Lqc2;)V

    return-void
.end method

.method public y(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div2/Div$p;Lcom/yandex/div/core/state/DivStatePath;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->getDiv()Lcom/yandex/div2/Div$p;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p3, :cond_0

    invoke-virtual {p2}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getDivTabsAdapter()Lpr2;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lpr2;->z(Loj3;Lcom/yandex/div2/Div$p;)Lcom/yandex/div2/Div$p;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;->setDiv(Lcom/yandex/div2/Div$p;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->b:Lcom/yandex/div/core/view2/divs/DivBaseBinder;

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/yandex/div/core/view2/divs/DivBaseBinder;->N(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;Lcom/yandex/div2/Div;)V

    invoke-virtual {p3}, Lcom/yandex/div2/Div$p;->c()Lcom/yandex/div2/DivTabs;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/div2/Div$p;->c()Lcom/yandex/div2/DivTabs;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    invoke-virtual {p0, p2, p1, v2, v3}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->s(Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivTabs;Lcom/yandex/div2/DivTabs;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/yandex/div2/Div$p;->c()Lcom/yandex/div2/DivTabs;

    move-result-object v1

    :cond_3
    move-object v6, v1

    invoke-virtual {p3}, Lcom/yandex/div2/Div$p;->c()Lcom/yandex/div2/DivTabs;

    move-result-object v7

    iget-object p3, p0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->d:Loj8;

    invoke-interface {p3}, Loj8;->get()Ljava/lang/Object;

    move-result-object p3

    const-string v0, "divBinder.get()"

    invoke-static {p3, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, p3

    check-cast v8, Lrg2;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v9, p2

    invoke-virtual/range {v2 .. v9}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->u(Lcom/yandex/div/core/state/DivStatePath;Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div2/DivTabs;Lcom/yandex/div2/DivTabs;Lrg2;Lqj3;)V

    return-void
.end method

.method public final z(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivTabs;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lrg2;Lcom/yandex/div/core/state/DivStatePath;)Lpr2;
    .locals 19

    move-object/from16 v0, p0

    new-instance v10, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;

    iget-object v3, v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->g:Lcom/yandex/div/core/view2/divs/DivActionBinder;

    iget-object v4, v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->h:Lgd2;

    iget-object v5, v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->j:Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;-><init>(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/DivActionBinder;Lgd2;Lcom/yandex/div/core/view2/DivVisibilityActionTracker;Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;Lcom/yandex/div2/DivTabs;)V

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/yandex/div2/DivTabs;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v2, Lur2;

    invoke-direct {v2}, Lur2;-><init>()V

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lvr2;

    invoke-direct {v2}, Lvr2;-><init>()V

    goto :goto_0

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getViewPager()Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div/internal/widget/tabs/TabsLayout;->getViewPager()Lcom/yandex/div/internal/widget/tabs/ScrollableViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/tabs/RtlViewPager;->getCurrentItem()I

    move-result v3

    if-ne v3, v2, :cond_1

    sget-object v2, Lpfb;->a:Lpfb;

    new-instance v6, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$createAdapter$1;

    invoke-direct {v6, v10, v3}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder$createAdapter$1;-><init>(Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;I)V

    invoke-virtual {v2, v6}, Lpfb;->e(Lc74;)Z

    :cond_1
    new-instance v18, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;

    iget-object v14, v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->h:Lgd2;

    iget-object v15, v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->n:Lrda;

    iget-object v2, v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->m:Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;

    move-object/from16 v11, v18

    move-object/from16 v12, p1

    move-object/from16 v13, p5

    move-object/from16 v16, v2

    move-object/from16 v17, p2

    invoke-direct/range {v11 .. v17}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;-><init>(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/state/DivStatePath;Lgd2;Lrda;Lcom/yandex/div/core/expression/local/DivRuntimeVisitor;Lcom/yandex/div2/DivTabs;)V

    new-instance v14, Lpr2;

    iget-object v1, v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->e:Lcdc;

    invoke-virtual/range {p0 .. p0}, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->D()Lcom/yandex/div/internal/widget/tabs/b$i;

    move-result-object v3

    iget-object v7, v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->f:Lfda;

    iget-object v8, v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->c:Lcom/yandex/div/core/view2/DivViewCreator;

    iget-object v13, v0, Lcom/yandex/div/core/view2/divs/tabs/DivTabsBinder;->k:Lzn2;

    move-object v0, v14

    move-object/from16 v2, p3

    move-object/from16 v6, p1

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v13}, Lpr2;-><init>(Lcdc;Landroid/view/View;Lcom/yandex/div/internal/widget/tabs/b$i;Lcom/yandex/div/internal/widget/tabs/d;ZLcom/yandex/div/core/view2/a;Lfda;Lcom/yandex/div/core/view2/DivViewCreator;Lrg2;Lcom/yandex/div/core/view2/divs/tabs/DivTabsEventManager;Lcom/yandex/div/core/view2/divs/tabs/DivTabsActiveStateTracker;Lcom/yandex/div/core/state/DivStatePath;Lzn2;)V

    return-object v14
.end method
