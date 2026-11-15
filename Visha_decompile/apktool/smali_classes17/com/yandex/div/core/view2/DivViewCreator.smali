.class public Lcom/yandex/div/core/view2/DivViewCreator;
.super Lcw2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/DivViewCreator$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/yandex/div/core/view2/DivViewCreator$a;

.field public static final f:[Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcdc;

.field public final c:Lfu2;

.field public d:Lddc;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/yandex/div/core/view2/DivViewCreator$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/DivViewCreator$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/DivViewCreator;->e:Lcom/yandex/div/core/view2/DivViewCreator$a;

    const-string v18, "DIV2.VIDEO"

    const-string v19, "DIV2.SWITCH"

    const-string v2, "DIV2.TEXT_VIEW"

    const-string v3, "DIV2.IMAGE_VIEW"

    const-string v4, "DIV2.IMAGE_GIF_VIEW"

    const-string v5, "DIV2.OVERLAP_CONTAINER_VIEW"

    const-string v6, "DIV2.LINEAR_CONTAINER_VIEW"

    const-string v7, "DIV2.WRAP_CONTAINER_VIEW"

    const-string v8, "DIV2.GRID_VIEW"

    const-string v9, "DIV2.GALLERY_VIEW"

    const-string v10, "DIV2.PAGER_VIEW"

    const-string v11, "DIV2.TAB_VIEW"

    const-string v12, "DIV2.STATE"

    const-string v13, "DIV2.CUSTOM"

    const-string v14, "DIV2.INDICATOR"

    const-string v15, "DIV2.SLIDER"

    const-string v16, "DIV2.INPUT"

    const-string v17, "DIV2.SELECT"

    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/div/core/view2/DivViewCreator;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcdc;Lfu2;Lddc;Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewPool"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewPreCreationProfile"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcw2;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/div/core/view2/DivViewCreator;->b:Lcdc;

    iput-object p3, p0, Lcom/yandex/div/core/view2/DivViewCreator;->c:Lfu2;

    invoke-virtual {p4}, Lddc;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p3, Lcom/yandex/div/core/view2/DivViewCreator$viewPreCreationProfile$1$1;

    const/4 v0, 0x0

    invoke-direct {p3, p5, p1, v0}, Lcom/yandex/div/core/view2/DivViewCreator$viewPreCreationProfile$1$1;-><init>(Lcom/yandex/div/internal/viewpool/optimization/ViewPreCreationProfileRepository;Ljava/lang/String;Lwh1;)V

    const/4 p1, 0x1

    invoke-static {v0, p3, p1, v0}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lddc;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, p1

    :cond_1
    :goto_0
    iput-object p4, p0, Lcom/yandex/div/core/view2/DivViewCreator;->d:Lddc;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->N()Lddc;

    move-result-object p1

    new-instance p3, Lzu2;

    invoke-direct {p3, p0}, Lzu2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->s()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.TEXT_VIEW"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Lqv2;

    invoke-direct {p3, p0}, Lqv2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->h()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.IMAGE_VIEW"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Lav2;

    invoke-direct {p3, p0}, Lav2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->e()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.IMAGE_GIF_VIEW"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Lbv2;

    invoke-direct {p3, p0}, Lbv2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->l()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.OVERLAP_CONTAINER_VIEW"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Lcv2;

    invoke-direct {p3, p0}, Lcv2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->k()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.LINEAR_CONTAINER_VIEW"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Ldv2;

    invoke-direct {p3, p0}, Ldv2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->u()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.WRAP_CONTAINER_VIEW"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Lev2;

    invoke-direct {p3, p0}, Lev2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->f()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.GRID_VIEW"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Lfv2;

    invoke-direct {p3, p0}, Lfv2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->d()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.GALLERY_VIEW"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Lgv2;

    invoke-direct {p3, p0}, Lgv2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->m()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.PAGER_VIEW"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Lhv2;

    invoke-direct {p3, p0}, Lhv2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->r()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.TAB_VIEW"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Liv2;

    invoke-direct {p3, p0}, Liv2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->p()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.STATE"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Ljv2;

    invoke-direct {p3, p0}, Ljv2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->c()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.CUSTOM"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Lkv2;

    invoke-direct {p3, p0}, Lkv2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->i()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.INDICATOR"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Llv2;

    invoke-direct {p3, p0}, Llv2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->o()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.SLIDER"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Lmv2;

    invoke-direct {p3, p0}, Lmv2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->j()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.INPUT"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Lnv2;

    invoke-direct {p3, p0}, Lnv2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->n()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.SELECT"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Lov2;

    invoke-direct {p3, p0}, Lov2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->t()Lrd8;

    move-result-object p4

    invoke-virtual {p4}, Lrd8;->a()I

    move-result p4

    const-string p5, "DIV2.VIDEO"

    invoke-interface {p2, p5, p3, p4}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    new-instance p3, Lpv2;

    invoke-direct {p3, p0}, Lpv2;-><init>(Lcom/yandex/div/core/view2/DivViewCreator;)V

    invoke-virtual {p1}, Lddc;->q()Lrd8;

    move-result-object p0

    invoke-virtual {p0}, Lrd8;->a()I

    move-result p0

    const-string p1, "DIV2.SWITCH"

    invoke-interface {p2, p1, p3, p0}, Lcdc;->c(Ljava/lang/String;Lhcc;I)V

    return-void
.end method

.method public static synthetic A(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->T(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->O(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->Z(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->f0(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->R(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->W(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->U(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->Y(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->d0(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->b0(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->e0(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final O(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final P(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final Q(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final R(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final S(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final T(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivPagerIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final U(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final V(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivInputView;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final W(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static final X(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final Y(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static final Z(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final a0(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivImageView;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final b0(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final c0(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivFrameLayout;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivFrameLayout;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final d0(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final e0(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static final f0(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;

    iget-object v2, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static synthetic t(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivImageView;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->a0(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->P(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->S(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivCustomWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->X(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivInputView;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->V(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivInputView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivFrameLayout;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->c0(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivFrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/DivViewCreator;->Q(Lcom/yandex/div/core/view2/DivViewCreator;)Lcom/yandex/div/core/view2/divs/widgets/DivTabsLayout;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public L(Lcom/yandex/div2/Div;Loj3;)Landroid/view/View;
    .locals 1

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/DivViewCreator;->c:Lfu2;

    invoke-virtual {v0, p1, p2}, Lfu2;->u(Lcom/yandex/div2/Div;Loj3;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcw2;->s(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget-object p1, Lb17;->a:Lb17;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/Space;

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    invoke-direct {p1, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public M(Lcom/yandex/div2/Div;Loj3;)Landroid/view/View;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivViewCreator;->b:Lcdc;

    sget-object v0, Lcom/yandex/div/core/view2/DivViewCreator;->e:Lcom/yandex/div/core/view2/DivViewCreator$a;

    invoke-static {v0, p1, p2}, Lcom/yandex/div/core/view2/DivViewCreator$a;->a(Lcom/yandex/div/core/view2/DivViewCreator$a;Lcom/yandex/div2/Div;Loj3;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcdc;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public N()Lddc;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/DivViewCreator;->d:Lddc;

    return-object p0
.end method

.method public bridge synthetic a(Lcom/yandex/div2/Div;Loj3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/DivViewCreator;->M(Lcom/yandex/div2/Div;Loj3;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic f(Lcom/yandex/div2/Div$f;Loj3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/DivViewCreator;->h0(Lcom/yandex/div2/Div$f;Loj3;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public g0(Lddc;)V
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/DivViewCreator;->b:Lcdc;

    invoke-virtual {p1}, Lddc;->s()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.TEXT_VIEW"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->h()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.IMAGE_VIEW"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->e()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.IMAGE_GIF_VIEW"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->l()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.OVERLAP_CONTAINER_VIEW"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->k()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.LINEAR_CONTAINER_VIEW"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->u()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.WRAP_CONTAINER_VIEW"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->f()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.GRID_VIEW"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->d()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.GALLERY_VIEW"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->m()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.PAGER_VIEW"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->r()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.TAB_VIEW"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->p()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.STATE"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->c()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.CUSTOM"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->i()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.INDICATOR"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->o()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.SLIDER"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->j()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.INPUT"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->n()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.SELECT"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->t()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.VIDEO"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lddc;->q()Lrd8;

    move-result-object v1

    invoke-virtual {v1}, Lrd8;->a()I

    move-result v1

    const-string v2, "DIV2.SWITCH"

    invoke-interface {v0, v2, v1}, Lcdc;->b(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/DivViewCreator;->d:Lddc;

    return-void
.end method

.method public h0(Lcom/yandex/div2/Div$f;Loj3;)Landroid/view/View;
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/DivViewCreator;->M(Lcom/yandex/div2/Div;Loj3;)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/yandex/div2/Div$f;->c()Lcom/yandex/div2/DivGrid;

    move-result-object p1

    invoke-static {p1}, Lbh2;->n(Lcom/yandex/div2/DivGrid;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/Div;

    invoke-virtual {p0, v1, p2}, Lcom/yandex/div/core/view2/DivViewCreator;->L(Lcom/yandex/div2/Div;Loj3;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public i0(Lcom/yandex/div2/Div$l;Loj3;)Landroid/view/View;
    .locals 6

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resolver"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;

    iget-object v1, p0, Lcom/yandex/div/core/view2/DivViewCreator;->a:Landroid/content/Context;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic l(Lcom/yandex/div2/Div$l;Loj3;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/DivViewCreator;->i0(Lcom/yandex/div2/Div$l;Loj3;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
