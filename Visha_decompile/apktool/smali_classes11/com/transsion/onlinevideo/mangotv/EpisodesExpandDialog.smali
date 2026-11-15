.class public Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;
.super Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog$a;
    }
.end annotation


# instance fields
.field public n:I

.field public o:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

.field public p:Landroidx/recyclerview/widget/RecyclerView;

.field public q:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

.field public r:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

.field public s:Z

.field public t:Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog$a;

.field public u:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->n:I

    return-void
.end method

.method public static synthetic D(Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->H(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic E(Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->J(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V

    return-void
.end method

.method private G(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->o:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_episodes_numbers:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->p:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->p:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/widgets/CenterLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, v0}, Lcom/transsion/widgets/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->o:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getSerialCover()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->s:Z

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->o:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerials()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->u:Ljava/util/List;

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->s:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->p:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/transsion/widgets/CenterLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/transsion/widgets/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->o:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoInfo()Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoInfoBean;->getCategory()I

    move-result v3

    invoke-direct {p1, v2, v1, v3}, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;-><init>(Landroid/content/Context;ZI)V

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->q:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->u:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->p:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->q:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->q:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    new-instance v1, Lsb3;

    invoke-direct {v1, p0}, Lsb3;-><init>(Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;)V

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->r:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->u:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->p:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->p:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->r:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->r:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    new-instance v1, Ltb3;

    invoke-direct {v1, p0}, Ltb3;-><init>(Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;)V

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :goto_1
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->u:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    sget-wide v1, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->u:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->p:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic H(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->L(I)V

    return-void
.end method

.method private synthetic I(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->L(I)V

    return-void
.end method

.method public static K(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog$a;)Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;
    .locals 1

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;-><init>()V

    iput-object p0, v0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->o:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    iput-object p1, v0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->t:Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog$a;

    return-object v0
.end method

.method public static synthetic w(Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->I(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public F()I
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {p0, v1}, Loc2;->a(Landroid/content/Context;F)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final synthetic J(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V
    .locals 0

    invoke-static {}, Lwz5;->j()V

    iget p2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->n:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->n:I

    const-string p0, "back"

    invoke-static {p0, p2}, Lwz5;->s(Ljava/lang/String;I)V

    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void
.end method

.method public L(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->t:Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->u:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog$a;->a(Ljava/util/List;I)V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->q:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->p:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->r:Lcom/transsion/onlinevideo/adapter/EpisodesAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/onlinevideo/R$layout;->layout_episodes:I

    return p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-static {}, Lwz5;->j()V

    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/transsion/onlinevideo/R$id;->design_bottom_sheet:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->F()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;->l:Landroid/view/View;

    sget v2, Lcom/transsion/onlinevideo/R$id;->episode_close:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lrb3;

    invoke-direct {v2, p0, v0}, Lrb3;-><init>(Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public v(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/onlinevideo/R$id;->root_episodes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/EpisodesExpandDialog;->G(Landroid/view/View;)V

    return-void
.end method
