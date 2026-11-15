.class public Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;
.super Lcom/transsion/onlinevideo/OnlineBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A0:Landroid/view/View;

.field public B0:Landroid/view/View;

.field public C0:I

.field public D0:I

.field public E0:Landroidx/core/widget/NestedScrollView;

.field public F0:Landroid/widget/FrameLayout;

.field public G0:Landroid/view/View;

.field public H0:Landroid/view/View;

.field public I0:Landroid/view/View;

.field public J0:Landroid/view/View;

.field public K0:Ljava/util/List;

.field public L0:I

.field public M0:I

.field public N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

.field public N0:I

.field public O:Lcom/transsion/widgetslib/widget/SearchBar;

.field public O0:Ljava/lang/String;

.field public P:Landroidx/recyclerview/widget/RecyclerView;

.field public P0:Ljava/lang/String;

.field public Q:Lcom/transsion/onlinevideo/adapter/OnlineSearchHistoryAdapter;

.field public Q0:Z

.field public R:Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

.field public R0:Z

.field public S:Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

.field public final S0:Landroid/text/TextWatcher;

.field public T:Landroid/widget/ImageView;

.field public U:Landroid/widget/ImageView;

.field public V:Lcom/transsion/playercommon/widgets/CustomFlexboxLayoutManager;

.field public W:Landroid/view/View;

.field public X:Landroid/view/View;

.field public Y:Landroid/view/View;

.field public Z:Landroid/view/View;

.field public a0:Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;

.field public b0:Landroidx/recyclerview/widget/RecyclerView;

.field public c0:Landroidx/recyclerview/widget/RecyclerView;

.field public d0:Landroid/view/View;

.field public e0:Landroid/view/View;

.field public f0:Landroidx/recyclerview/widget/RecyclerView;

.field public g0:Landroidx/recyclerview/widget/RecyclerView;

.field public h0:Landroidx/recyclerview/widget/RecyclerView;

.field public i0:Landroid/view/View;

.field public j0:Landroid/view/View;

.field public k0:Landroid/view/View;

.field public l0:Landroid/widget/TextView;

.field public m0:Landroid/widget/TextView;

.field public n0:Landroidx/recyclerview/widget/RecyclerView;

.field public o0:Landroid/view/View;

.field public p0:Landroid/view/View;

.field public q0:Landroid/widget/TextView;

.field public r0:Landroid/widget/TextView;

.field public s0:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

.field public t0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

.field public u0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

.field public v0:Lcom/transsion/onlinevideo/adapter/SearchRelatedAdapter;

.field public w0:Landroidx/recyclerview/widget/RecyclerView;

.field public x0:Landroid/view/View;

.field public y0:Landroid/view/View;

.field public z0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/onlinevideo/OnlineBaseActivity;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->L0:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->M0:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N0:I

    new-instance v0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$a;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->S0:Landroid/text/TextWatcher;

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->D1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->m1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->q1(Landroidx/core/widget/NestedScrollView;IIII)V

    return-void
.end method

.method public static synthetic D0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->F1(Ljava/util/List;)V

    return-void
.end method

.method private synthetic E1(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Q1(ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic F0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->r1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic F1(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Q1(ZLjava/util/List;)V

    return-void
.end method

.method public static synthetic G0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->B1(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic G1(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->P1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic H0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->o1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic I0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->H1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic J0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->u1()V

    return-void
.end method

.method public static synthetic K0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->G1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic L0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->y1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic M0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->t1(Landroid/view/View;)V

    return-void
.end method

.method private M1(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public static synthetic N0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->l1(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->x1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic P0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)I
    .locals 0

    iget p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N0:I

    return p0
.end method

.method public static bridge synthetic Q0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->X:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic R0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->W:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic S0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Lcom/transsion/widgetslib/widget/SearchBar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    return-object p0
.end method

.method public static bridge synthetic T0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    return-object p0
.end method

.method public static bridge synthetic U0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->q0:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic V0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->R:Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

    return-object p0
.end method

.method public static bridge synthetic W0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->r0:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic X0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->S:Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

    return-object p0
.end method

.method public static bridge synthetic Y0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;ZZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->L1(ZZZ)V

    return-void
.end method

.method public static bridge synthetic Z0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->M1(Landroid/widget/TextView;)V

    return-void
.end method

.method public static bridge synthetic a1(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->updateRecommend()V

    return-void
.end method

.method private d1(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private e1(Ljava/util/List;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->x0:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/onlinevideo/R$id;->empty_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->x0:Landroid/view/View;

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->x0:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz p1, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->o0:Landroid/view/View;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->updateRecommend()V

    return-void
.end method

.method private g1()V
    .locals 5

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_search_history:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->P:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/onlinevideo/adapter/OnlineSearchHistoryAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/OnlineSearchHistoryAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Q:Lcom/transsion/onlinevideo/adapter/OnlineSearchHistoryAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->P:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/transsion/playercommon/widgets/CustomFlexboxLayoutManager;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/widgets/CustomFlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->V:Lcom/transsion/playercommon/widgets/CustomFlexboxLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomFlexboxLayoutManager;->a0(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->V:Lcom/transsion/playercommon/widgets/CustomFlexboxLayoutManager;

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->R(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->V:Lcom/transsion/playercommon/widgets/CustomFlexboxLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->Q(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->P:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->V:Lcom/transsion/playercommon/widgets/CustomFlexboxLayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Q:Lcom/transsion/onlinevideo/adapter/OnlineSearchHistoryAdapter;

    new-instance v3, Lkj7;

    invoke-direct {v3, p0}, Lkj7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_hot_search:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->b0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$b;

    const/4 v4, 0x3

    invoke-direct {v3, p0, p0, v4}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$b;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->a0:Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;

    iget-object v3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->a0:Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;

    new-instance v3, Lmi7;

    invoke-direct {v3, p0}, Lmi7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->a0:Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setPreLoadNumber(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->a0:Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_words:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->f0:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->sv_words:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->e0:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->f0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->R:Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

    new-instance v0, Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->S:Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->f0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->R:Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->g0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->g0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->S:Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->R:Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

    new-instance v3, Lni7;

    invoke-direct {v3, p0}, Lni7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->S:Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

    new-instance v3, Loi7;

    invoke-direct {v3, p0}, Loi7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_videos:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->w0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$c;

    invoke-direct {v3, p0, p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity$c;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->s0:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    iget-object v3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->w0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->s0:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->E0:Landroidx/core/widget/NestedScrollView;

    new-instance v3, Lpi7;

    invoke-direct {v3, p0}, Lpi7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, v3}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_divider:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->G0:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_related_videos:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->c0:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_related:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->d0:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->btn_roll_back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->H0:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->btn_more:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->I0:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->btn_more_small:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->J0:Landroid/view/View;

    new-instance v0, Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->t0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    new-instance v0, Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->u0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->h0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->u0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->h0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->t0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->u0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    new-instance v3, Lqi7;

    invoke-direct {v3, p0}, Lqi7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->t0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    new-instance v3, Lri7;

    invoke-direct {v3, p0}, Lri7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O1(Z)V

    invoke-virtual {p0, v2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N1(Z)V

    return-void
.end method

.method private i1()V
    .locals 3

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->p()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lli7;

    invoke-direct {v1, p0}, Lli7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->k()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->m()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lwi7;

    invoke-direct {v1, p0}, Lwi7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->D0:I

    iget-object v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    const/16 v2, 0x14

    invoke-virtual {v1, p0, v0, v2}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->l(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->v()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Ldj7;

    invoke-direct {v1, p0}, Ldj7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->x()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lej7;

    invoke-direct {v1, p0}, Lej7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lfj7;

    invoke-direct {v1, p0}, Lfj7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lgj7;

    invoke-direct {v1, p0}, Lgj7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->q()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lhj7;

    invoke-direct {v1, p0}, Lhj7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->t()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lij7;

    invoke-direct {v1, p0}, Lij7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->n()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Ljj7;

    invoke-direct {v1, p0}, Ljj7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private j1()V
    .locals 1

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_expand_search_history:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_history_clear:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/onlinevideo/R$id;->rl_search_history:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->W:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->search_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->X:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->ll_video:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Y:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->result_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Z:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->sv_search:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->E0:Landroidx/core/widget/NestedScrollView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->F0:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_youtube_words:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->g0:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_youtube_videos:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->h0:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->result_youtube_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->i0:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->result_tip_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->j0:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->space:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->k0:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_visha_tab:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->l0:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_youtube_tab:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->m0:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->visha_words_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->A0:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->youtube_words_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->B0:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_hot_search_youtube:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->recommend_tip_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->o0:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->recommend_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->p0:Landroid/view/View;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_visha_recommend:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->q0:Landroid/widget/TextView;

    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_youtube_recommend:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->q0:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->F0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->m0:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->l0:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->v1(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->s1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->w1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->p1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->n1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->J1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->C1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->E1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic x0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->z1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic y0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->A1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic z0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->I1(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final synthetic A1(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->s0:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->s0:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->f1(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->s0:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->s0:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    :goto_0
    return-void
.end method

.method public final synthetic B1(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->a0:Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->a0:Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreFail()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->a0:Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreEnd()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->a0:Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->loadMoreComplete()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final synthetic C1(Ljava/util/List;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Q:Lcom/transsion/onlinevideo/adapter/OnlineSearchHistoryAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->T:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->P:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, p1, v4}, Lcom/transsion/onlinevideo/adapter/OnlineSearchHistoryAdapter;->b(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Q:Lcom/transsion/onlinevideo/adapter/OnlineSearchHistoryAdapter;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->W:Landroid/view/View;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final synthetic D1(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->a0:Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic H1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 8

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->v0:Lcom/transsion/onlinevideo/adapter/SearchRelatedAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getSerialList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getSerialList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getSerialList()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo$SerialListBean;->getSerialId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    :goto_0
    move-wide v4, p2

    goto :goto_1

    :cond_0
    const-wide/16 p2, 0x0

    goto :goto_0

    :goto_1
    new-instance p2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p2

    new-instance p3, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getVideoId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v1, v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;JLjava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->getVideoId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isShortVideo(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    const-string p2, "vd_ott_search_show"

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withMarkParam(Ljava/lang/String;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic I1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->c1(Z)V

    return-void
.end method

.method public final synthetic J1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->c1(Z)V

    return-void
.end method

.method public final synthetic K1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->c1(Z)V

    return-void
.end method

.method public final L1(ZZZ)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->W:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Q:Lcom/transsion/onlinevideo/adapter/OnlineSearchHistoryAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->X:Landroid/view/View;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Z:Landroid/view/View;

    if-eqz p2, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->j0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->k0:Landroid/view/View;

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lb06;->b:J

    goto :goto_4

    :cond_4
    sget-wide v3, Lb06;->b:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v7, Lb06;->b:J

    sub-long/2addr v3, v7

    sput-wide v5, Lb06;->b:J

    iget-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "vd_ott_search_result_duration"

    const-string v4, "keyword"

    const-string v5, "duration"

    invoke-static {v3, v4, p2, v5, v0}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    :goto_4
    iget-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->o0:Landroid/view/View;

    if-eqz p3, :cond_6

    move v0, v1

    goto :goto_5

    :cond_6
    move v0, v2

    :goto_5
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->p0:Landroid/view/View;

    if-eqz p3, :cond_7

    move v0, v1

    goto :goto_6

    :cond_7
    move v0, v2

    :goto_6
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_9

    iget p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N0:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_8

    goto :goto_7

    :cond_8
    move p3, v1

    :goto_7
    invoke-virtual {p0, p3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N1(Z)V

    :cond_9
    iget-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->e0:Landroid/view/View;

    if-eqz p1, :cond_a

    goto :goto_8

    :cond_a
    move v1, v2

    :goto_8
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->z0:Landroid/view/View;

    if-eqz p0, :cond_b

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method public final N1(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->b0:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->r0:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-static {p0}, Lvha;->o(Landroid/content/Context;)I

    move-result v1

    goto :goto_1

    :cond_2
    sget v1, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->q0:Landroid/widget/TextView;

    if-nez p1, :cond_3

    invoke-static {p0}, Lvha;->o(Landroid/content/Context;)I

    move-result v1

    goto :goto_2

    :cond_3
    sget v1, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Q0:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Q0:Z

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->w()V

    :cond_4
    return-void
.end method

.method public final O1(Z)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->r0:Landroid/widget/TextView;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->q0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    iget p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->i0:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Y:Landroid/view/View;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->m0:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-static {p0}, Lvha;->o(Landroid/content/Context;)I

    move-result v1

    goto :goto_3

    :cond_4
    sget v1, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->l0:Landroid/widget/TextView;

    if-nez v0, :cond_5

    invoke-static {p0}, Lvha;->o(Landroid/content/Context;)I

    move-result p0

    goto :goto_4

    :cond_5
    sget v0, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    :goto_4
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final P1(Ljava/util/List;)V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K0:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/onlinevideo/VideoInfo;->isTerm()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iget-object v4, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    iget-object v5, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->G0:Landroid/view/View;

    const/16 v6, 0x8

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    move v7, v3

    goto :goto_3

    :cond_4
    move v7, v6

    :goto_3
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->c0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_5

    move v7, v3

    goto :goto_4

    :cond_5
    move v7, v6

    :goto_4
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->d0:Landroid/view/View;

    if-eqz v4, :cond_6

    move v7, v3

    goto :goto_5

    :cond_6
    move v7, v6

    :goto_5
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->c0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x3

    invoke-direct {v7, v8, v9}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v5, Lcom/transsion/onlinevideo/adapter/SearchRelatedAdapter;

    invoke-direct {v5}, Lcom/transsion/onlinevideo/adapter/SearchRelatedAdapter;-><init>()V

    iput-object v5, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->v0:Lcom/transsion/onlinevideo/adapter/SearchRelatedAdapter;

    iget-object v7, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v5, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->v0:Lcom/transsion/onlinevideo/adapter/SearchRelatedAdapter;

    new-instance v7, Lzi7;

    invoke-direct {v7, p0}, Lzi7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v5, v7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v5, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->v0:Lcom/transsion/onlinevideo/adapter/SearchRelatedAdapter;

    iget-object v7, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K0:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget v8, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->L0:I

    if-le v7, v8, :cond_7

    iget-object v7, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K0:Ljava/util/List;

    invoke-interface {v7, v3, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    goto :goto_6

    :cond_7
    iget-object v7, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K0:Ljava/util/List;

    :goto_6
    invoke-virtual {v5, v7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v5, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->s0:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    invoke-virtual {v5, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0, v3, v2, v3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->L1(ZZZ)V

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->e1(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->w0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    move v3, v6

    :goto_7
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v4, :cond_9

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->I0:Landroid/view/View;

    new-instance v0, Laj7;

    invoke-direct {v0, p0}, Laj7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->J0:Landroid/view/View;

    new-instance v0, Lbj7;

    invoke-direct {v0, p0}, Lbj7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->H0:Landroid/view/View;

    new-instance v0, Lcj7;

    invoke-direct {v0, p0}, Lcj7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->b1()V

    :cond_9
    return-void
.end method

.method public final declared-synchronized Q1(ZLjava/util/List;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move v1, v0

    :goto_0
    const/16 v2, 0x8

    const/4 v3, 0x5

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->A0:Landroid/view/View;

    if-eqz v1, :cond_1

    move v2, v0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->R:Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    invoke-interface {p2, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    :cond_2
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->B0:Landroid/view/View;

    if-eqz v1, :cond_4

    move v2, v0

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->S:Lcom/transsion/onlinevideo/adapter/OnlineSearchWordAdapter;

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_5

    invoke-interface {p2, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    :cond_5
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final R1()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->t0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->t0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->R0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->p0:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->q0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->q0:Landroid/widget/TextView;

    sget v3, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->o0:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->o0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->p0:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final S1(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->t0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->L1(ZZZ)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->k1(Z)V

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Q0:Z

    if-nez p1, :cond_2

    iput-boolean v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Q0:Z

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->w()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->R1()V

    :goto_0
    return-void
.end method

.method public b1()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->I0:Landroid/view/View;

    iget v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->M0:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v5, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->L0:I

    if-le v1, v5, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->H0:Landroid/view/View;

    iget v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->M0:I

    if-le v1, v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->J0:Landroid/view/View;

    iget v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->M0:I

    if-le v1, v4, :cond_2

    iget-object v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->v0:Lcom/transsion/onlinevideo/adapter/SearchRelatedAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K0:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public c1(Z)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K0:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K0:Ljava/util/List;

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->M0:I

    iget v3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->L0:I

    mul-int v4, v2, v3

    if-le p1, v4, :cond_3

    add-int/2addr v2, v0

    iput v2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->M0:I

    mul-int/2addr v2, v3

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->v0:Lcom/transsion/onlinevideo/adapter/SearchRelatedAdapter;

    iget-object v3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K0:Ljava/util/List;

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-interface {v3, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->M0:I

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->v0:Lcom/transsion/onlinevideo/adapter/SearchRelatedAdapter;

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->L0:I

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K0:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->K0:Ljava/util/List;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->E0:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v1, v1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->b1()V

    return-void
.end method

.method public f1(Z)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->j0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->k0:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->z0:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/onlinevideo/R$id;->online_video_empty_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->z0:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->z0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->X:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->z0:Landroid/view/View;

    sget v3, Lcom/transsion/onlinevideo/R$id;->ll_loading_common:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->z0:Landroid/view/View;

    sget v4, Lcom/transsion/onlinevideo/R$id;->ll_no_wifi:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-nez p1, :cond_1

    sget v4, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->z0:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->tv_retry:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v1, Lsi7;

    invoke-direct {v1, p0, v3, v0}, Lsi7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final h1()V
    .locals 4

    sget v0, Lcom/transsion/magicvideo/R$id;->search_bar_file:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getLinearRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$color;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    const/16 v1, 0xea

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    new-instance v1, Lti7;

    invoke-direct {v1, p0}, Lti7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    new-instance v1, Lui7;

    invoke-direct {v1, p0}, Lui7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    sget v1, Lcom/transsion/onlinevideo/R$string;->ott_search_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$color;->os_text_tertiary_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    iget-object v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->S0:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->addTextWatcher(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lvi7;

    invoke-direct {v1, p0}, Lvi7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    new-instance v1, Lxi7;

    invoke-direct {v1, p0}, Lxi7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->setBackClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAutofill(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAutofill(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lyi7;

    invoke-direct {v1, p0}, Lyi7;-><init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public final k1(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->y0:Landroid/view/View;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/onlinevideo/R$id;->youtube_empty_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->y0:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->y0:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->o0:Landroid/view/View;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->R1()V

    return-void
.end method

.method public final synthetic l1(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N0:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O0:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    const/16 p3, 0x14

    invoke-virtual {p1, p0, p2, p3}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->r(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->P0:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->z(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final synthetic m1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->d1(Landroid/widget/TextView;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->C0:I

    iget p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N0:I

    if-nez p3, :cond_0

    iput-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O0:Ljava/lang/String;

    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    const/16 v0, 0x14

    invoke-virtual {p3, p1, p2, v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->r(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->P0:Ljava/lang/String;

    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {p3, p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->z(Ljava/lang/String;)V

    :goto_0
    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->r0:Landroid/widget/TextView;

    const/16 v0, 0x10

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->q0:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->s0:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    invoke-virtual {p3, p1}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->v(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->t0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    invoke-virtual {p3, p1}, Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;->d(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {p3, p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->i(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->f1(Z)V

    const-string p0, "vd_ott_search_history_cl"

    const-string p2, "search_history"

    invoke-static {p0, p2, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic n1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;

    new-instance p2, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p2

    new-instance p3, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->getVideoId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->getSourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/HotSearchBean;->getVideoId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->isShortVideo(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;->setShortVideo(Z)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withParam(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic o1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N0:I

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O1(Z)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->d1(Landroid/widget/TextView;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "suggest_title"

    const-string v0, "vd_ott_search_suggest_cl"

    const-string v1, "suggest_keyword"

    invoke-static {v0, v1, p2, p3, p1}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->C0:I

    iput-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O0:Ljava/lang/String;

    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    const/16 v0, 0x14

    invoke-virtual {p3, p1, p2, v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->r(Ljava/lang/String;II)V

    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->s0:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    invoke-virtual {p3, p1}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->v(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->t0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    invoke-virtual {p3, p1}, Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;->d(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {p3, p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->i(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->f1(Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/magicvideo/R$id;->search_bar_file:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackView()Landroid/view/View;

    move-result-object p0

    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_1

    :cond_1
    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_expand_search_history:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->V:Lcom/transsion/playercommon/widgets/CustomFlexboxLayoutManager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/CustomFlexboxLayoutManager;->a0(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->Q:Lcom/transsion/onlinevideo/adapter/OnlineSearchHistoryAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->T:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_history_clear:I

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->j()V

    const-string p0, "vd_ott_search_history_clear_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    sget v0, Lcom/transsion/onlinevideo/R$id;->iv_back:I

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->onBackPressed()V

    goto/16 :goto_1

    :cond_4
    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_visha_tab:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_7

    iput v2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N0:I

    invoke-virtual {p0, v2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O1(Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->updateRecommend()V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O0:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    iget v2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->C0:I

    const/16 v3, 0x14

    invoke-virtual {v0, p1, v2, v3}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->r(Ljava/lang/String;II)V

    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->f1(Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->updateRecommend()V

    goto :goto_1

    :cond_7
    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_youtube_tab:I

    if-ne p1, v0, :cond_a

    iput v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N0:I

    invoke-virtual {p0, v2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O1(Z)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->P0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->R1()V

    return-void

    :cond_8
    iput-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->P0:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->z(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->f1(Z)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->R1()V

    goto :goto_1

    :cond_a
    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_visha_recommend:I

    if-ne p1, v0, :cond_b

    invoke-virtual {p0, v2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N1(Z)V

    goto :goto_1

    :cond_b
    sget v0, Lcom/transsion/onlinevideo/R$id;->tv_youtube_recommend:I

    if-ne p1, v0, :cond_c

    invoke-virtual {p0, v1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N1(Z)V

    :cond_c
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/onlinevideo/OnlineBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/onlinevideo/R$layout;->activity_online_video_search:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->j1()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->g1()V

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->h1()V

    invoke-direct {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->i1()V

    const-string p0, "vd_ott_search_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 6

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onPause()V

    sget-wide v0, Lb06;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lb06;->b:J

    sub-long/2addr v0, v4

    sput-wide v2, Lb06;->b:J

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "vd_ott_search_result_duration"

    const-string v2, "keyword"

    const-string v3, "duration"

    invoke-static {v1, v2, p0, v3, v0}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {v0}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->s()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lb06;->b:J

    :cond_0
    return-void
.end method

.method public final synthetic p1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N0:I

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O1(Z)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->d1(Landroid/widget/TextView;)V

    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p3}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->P0:Ljava/lang/String;

    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {p3, p2}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->z(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->t0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    invoke-virtual {p3, p2}, Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;->d(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {p3, p2}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->i(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->k1(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->f1(Z)V

    return-void
.end method

.method public final synthetic q1(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->d1(Landroid/widget/TextView;)V

    return-void
.end method

.method public final synthetic r1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->u0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p3, p2}, Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;->c(Landroid/content/Context;IZ)V

    return-void
.end method

.method public final synthetic s1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->t0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p3, p2}, Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;->c(Landroid/content/Context;IZ)V

    return-void
.end method

.method public final synthetic t1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final synthetic u1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->M1(Landroid/widget/TextView;)V

    return-void
.end method

.method public final updateRecommend()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->s0:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->s0:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->a0:Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->a0:Lcom/transsion/onlinevideo/adapter/HotSearchAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->p0:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->q0:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->r0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->n0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->q0:Landroid/widget/TextView;

    sget v1, Lcom/transsion/onlinevideo/R$color;->os_text_primary_color:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->o0:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->o0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->p0:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final synthetic v1(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->e0:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final synthetic w1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->onBackPressed()V

    return-void
.end method

.method public final synthetic x1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x3

    const/4 p3, 0x0

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->d1(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    return p3

    :cond_0
    iget-object p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {p2, p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->i(Ljava/lang/String;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->C0:I

    iget v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N0:I

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O0:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, p2, v1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->r(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->P0:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N:Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/viewmodel/SearchViewModel;->z(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->s0:Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/adapter/OnlineSearchVideoAdapter;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->t0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->f1(Z)V

    :cond_2
    return p3
.end method

.method public final synthetic y1(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->R0:Z

    iget-object v1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->u0:Lcom/transsion/onlinevideo/adapter/YoutubeAdapter;

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget p1, p0, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->N0:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->R1()V

    :cond_1
    return-void
.end method

.method public final synthetic z1(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->S1(Ljava/util/List;)V

    return-void
.end method
