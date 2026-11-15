.class public Lcom/transsion/sniffer_load/WebBookmarkActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$b;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/transsion/widgetslib/widget/FootOperationBar$n;


# instance fields
.field public N:Landroidx/recyclerview/widget/RecyclerView;

.field public O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

.field public P:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

.field public final Q:Ljava/util/List;

.field public final R:Ljava/util/List;

.field public final S:Ljava/util/List;

.field public T:Landroid/view/View;

.field public U:Landroid/widget/ImageView;

.field public V:Landroid/widget/TextView;

.field public W:Landroid/widget/CheckBox;

.field public X:Z

.field public Y:I

.field public Z:Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;

.field public a0:Landroid/view/WindowManager$LayoutParams;

.field public b0:Landroid/widget/LinearLayout;

.field public c0:Z

.field public d0:Z

.field public e0:Ljava/lang/String;

.field public f0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Q:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->R:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->S:Ljava/util/List;

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->S0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B0(Lcom/transsion/sniffer_load/WebBookmarkActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->e0:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic C0(Lcom/transsion/sniffer_load/WebBookmarkActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->f0:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic D0(Lcom/transsion/sniffer_load/WebBookmarkActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->X:Z

    return p0
.end method

.method public static bridge synthetic E0(Lcom/transsion/sniffer_load/WebBookmarkActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->c0:Z

    return p0
.end method

.method public static bridge synthetic F0(Lcom/transsion/sniffer_load/WebBookmarkActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->d0:Z

    return p0
.end method

.method public static bridge synthetic G0(Lcom/transsion/sniffer_load/WebBookmarkActivity;)Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Z:Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;

    return-object p0
.end method

.method public static bridge synthetic H0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->c0:Z

    return-void
.end method

.method public static bridge synthetic I0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->d0:Z

    return-void
.end method

.method private L0()V
    .locals 0

    return-void
.end method

.method private Q0()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->a0:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->updateWebWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private synthetic W0(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->S:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->U:Landroid/widget/ImageView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->J0()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const-string p1, "dl_brower_rp_more_bm_show"

    const-string v0, "bookmark_num"

    invoke-static {p1, v0, p0}, Lp06;->n0(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic Z0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "dl_brower_rp_more_bm_multi_del_popup_cancel_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic a1(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "dl_brower_rp_more_bm_multi_edit_popup_cancel_cl"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->T0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->W0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic r0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Z0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->V0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->X0(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/sniffer_load/WebBookmarkActivity;ZLandroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->c1(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic v0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->a1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->R0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic x0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->U0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->b1(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z0(Lcom/transsion/sniffer_load/WebBookmarkActivity;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Y0(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final J0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Q:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->S:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Q:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->U:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->S:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->b0:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->X:Z

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->h1(Z)V

    return-void
.end method

.method public K0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->setOnSelectListener(Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$b;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    new-instance v1, Lxhc;

    invoke-direct {v1, p0}, Lxhc;-><init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    new-instance v1, Lyhc;

    invoke-direct {v1, p0}, Lyhc;-><init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    new-instance v1, Lzhc;

    invoke-direct {v1, p0}, Lzhc;-><init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method public M0()V
    .locals 2

    new-instance v0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public N0()V
    .locals 1

    sget v0, Lcom/transsion/sniffer_load/R$id;->no_bookmark_Layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->b0:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mActivityNavigationColor:I

    return-void
.end method

.method public O0()V
    .locals 2

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->T:Landroid/view/View;

    new-instance v1, Lvhc;

    invoke-direct {v1, p0}, Lvhc;-><init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->V:Landroid/widget/TextView;

    sget v1, Lcom/transsion/sniffer_load/R$string;->download_main_tab_bookmark:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_checkBox:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->W:Landroid/widget/CheckBox;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_bookmark_edit:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->U:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->U:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/sniffer_load/R$drawable;->ic_bookmark_edit:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->W:Landroid/widget/CheckBox;

    new-instance v1, Lwhc;

    invoke-direct {v1, p0}, Lwhc;-><init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public P0()V
    .locals 2

    const-class v0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->P:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->F()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Laic;

    invoke-direct {v1, p0}, Laic;-><init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->P:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lbic;

    invoke-direct {v1, p0}, Lbic;-><init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->P:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->H(Landroid/content/Context;I)V

    return-void
.end method

.method public final synthetic R0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Q:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    iget-boolean v1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->X:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->isLoadFromCode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->d1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "url"

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x4d8

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->onBackPressed()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic S0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Q:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    iget-boolean v1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->X:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->R:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v3}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->h1(Z)V

    const-string p1, "dl_brower_rp_more_bm_multi_lp"

    invoke-static {p1}, Lp06;->d0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    invoke-virtual {p0, v0, v3, p3}, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->i(Lcom/transsion/dbdata/beans/sniff/Bookmark;ZI)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->isLoadFromCode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->d1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :cond_2
    :goto_0
    return v3
.end method

.method public final synthetic T0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->X:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Q:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->isLoadFromCode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->d1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public final synthetic U0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->onBackPressed()V

    return-void
.end method

.method public final synthetic V0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->W:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->h(Z)V

    return-void
.end method

.method public final synthetic X0(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;->getPrefabricateBookmarkKeys()Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->R:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->getDataList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->J0()V

    return-void
.end method

.method public final synthetic Y0(Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    iget-object p3, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->P:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    iget-wide v0, p2, Lcom/transsion/dbdata/beans/sniff/Bookmark;->id:J

    invoke-virtual {p3, v0, v1, p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->E(JLcom/transsion/playercommon/activities/BaseActivity;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->h1(Z)V

    const-string p0, "dl_brower_rp_more_bm_multi_del_popup_ok_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->setTitle(I)V

    return-void
.end method

.method public final synthetic b1(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->setName(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->setUri(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->P:Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;

    invoke-virtual {p2, p1, p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->l0(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/playercommon/activities/BaseActivity;)V

    invoke-virtual {p4}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->h1(Z)V

    const-string p0, "dl_brower_rp_more_bm_multi_edit_popup_ok_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->S:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->setTitle(I)V

    return-void
.end method

.method public final synthetic c1(ZLandroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->h1(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public d1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V
    .locals 1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_bookmark_checkBox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    check-cast p1, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-ne p4, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->i(Lcom/transsion/dbdata/beans/sniff/Bookmark;ZI)V

    return-void
.end method

.method public final e1(Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    or-int/lit8 v0, v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/sniffer_load/WebBookmarkActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity$3;-><init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;Landroid/widget/EditText;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f1(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget v0, Lcom/transsion/sniffer_load/R$string;->download_bookmarks_remove_hint:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/sniffer_load/R$string;->download_bookmark_remove_hint:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$string;->remove:I

    new-instance v2, Lthc;

    invoke-direct {v2, p0, p1}, Lthc;-><init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/sniffer_load/R$string;->cancel:I

    new-instance v0, Luhc;

    invoke-direct {v0}, Luhc;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    const-string p0, "dl_brower_rp_more_bm_multi_del_popup_show"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public g1(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 9

    const-string v0, "dl_brower_rp_more_bm_multi_edit_popup_show"

    invoke-static {v0}, Lp06;->d0(Ljava/lang/String;)V

    sget v0, Lcom/transsion/sniffer_load/R$layout;->create_bookmark_dialog:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/transsion/sniffer_load/R$id;->et_name:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    sget v2, Lcom/transsion/sniffer_load/R$id;->et_url:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    new-instance v2, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/transsion/sniffer_load/R$string;->download_edit_bookmark:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v2, Lcom/transsion/sniffer_load/R$string;->Save:I

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$string;->cancel:I

    new-instance v2, Lcic;

    invoke-direct {v2}, Lcic;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v8

    invoke-virtual {v8}, Lcom/transsion/widgetslib/dialog/d;->show()V

    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v6}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v8, v6}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->e1(Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;)V

    invoke-virtual {v7}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v6}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->e0:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->f0:Ljava/lang/String;

    new-instance v1, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;

    invoke-direct {v1, p0, v6, v7, v0}, Lcom/transsion/sniffer_load/WebBookmarkActivity$b;-><init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Landroid/widget/Button;)V

    invoke-virtual {v6}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v7}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Ldic;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Ldic;-><init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/dialog/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public h1(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->X:Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->j(Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->U:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->W:Landroid/widget/CheckBox;

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->T:Landroid/view/View;

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    sget v3, Lcom/transsion/playercommon/R$string;->os_close:I

    goto :goto_3

    :cond_3
    sget v3, Lcom/transsion/playercommon/R$string;->os_back:I

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->T:Landroid/view/View;

    if-eqz p1, :cond_4

    sget v3, Lcom/transsion/playercommon/R$string;->talkback_close:I

    goto :goto_4

    :cond_4
    sget v3, Lcom/transsion/playercommon/R$string;->talkback_back:I

    :goto_4
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->T:Landroid/view/View;

    new-instance v3, Lshc;

    invoke-direct {v3, p0, p1}, Lshc;-><init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;Z)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->inflateOperationBar()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Z:Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    invoke-virtual {v0, v2}, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->h(Z)V

    :cond_7
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->V:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    sget v1, Lcom/transsion/magicvideo/R$string;->none_select:I

    goto :goto_5

    :cond_8
    sget v1, Lcom/transsion/sniffer_load/R$string;->download_main_tab_bookmark:I

    :goto_5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->resetNavigationBarColor(Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x2

    if-eqz p1, :cond_9

    sget p1, Lcom/transsion/sniffer_load/R$id;->bottom_bar:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_6

    :cond_9
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :goto_6
    iget-object p0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-void
.end method

.method public inflateOperationBar()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Z:Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/sniffer_load/R$id;->bottom_action_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Z:Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->setOnFootOptBarClickListener(Lcom/transsion/widgetslib/widget/FootOperationBar$n;)V

    :cond_0
    return-void
.end method

.method public loadSkin(Z)I
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    move-result p0

    return p0
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->X:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->h1(Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_bookmark_edit:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->h1(Z)V

    const-string p0, "dl_brower_rp_more_bm_multi_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Z:Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->X:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/sniffer_load/R$layout;->activity_web_bookmark:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lcom/transsion/sniffer_load/R$id;->rv_bookmark_list:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Q0()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->N0()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O0()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->M0()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->P0()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->K0()V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->L0()V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->resetNavigationBarColor(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->clearWindowDimFlag(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    iget-object p1, p1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/transsion/sniffer_load/WebBookmarkActivity$a;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/WebBookmarkActivity$a;-><init>(Lcom/transsion/sniffer_load/WebBookmarkActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Z:Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;

    return-void
.end method

.method public onItemClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->O:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->f1(Ljava/util/List;)V

    const-string p0, "dl_brower_rp_more_bm_multi_del_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebBookmarkActivity;->g1(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    const-string p0, "dl_brower_rp_more_bm_multi_edit_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onScreenTypeChange(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V

    const-string v0, "dl_brower_rp_more_bm_show"

    invoke-static {p1, v0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->a0:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->updateWebWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 4

    iput p1, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Y:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->V:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    sget v2, Lcom/transsion/magicvideo/R$string;->none_select:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    if-le p1, v1, :cond_1

    sget v2, Lcom/transsion/magicvideo/R$string;->items:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/transsion/magicvideo/R$string;->item:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->W:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->S:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne p1, v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Z:Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->setAllEnable(Z)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebBookmarkActivity;->Z:Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;

    if-ne p1, v1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    invoke-virtual {p0, v1}, Lcom/transsion/sniffer_load/widgets/BookmarkFootOperateBar;->setEditEnable(Z)V

    :cond_7
    return-void
.end method
