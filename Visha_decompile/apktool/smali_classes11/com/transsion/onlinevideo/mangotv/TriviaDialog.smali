.class public Lcom/transsion/onlinevideo/mangotv/TriviaDialog;
.super Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/onlinevideo/mangotv/TriviaDialog$a;
    }
.end annotation


# instance fields
.field public n:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

.field public o:Landroidx/recyclerview/widget/RecyclerView;

.field public p:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

.field public q:Z

.field public r:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

.field public s:Lcom/transsion/onlinevideo/mangotv/TriviaDialog$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;-><init>()V

    return-void
.end method

.method public static synthetic D(Lcom/transsion/onlinevideo/mangotv/TriviaDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->G(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private F(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->n:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/transsion/onlinevideo/R$id;->rv_trivia_expand:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/widgets/CenterLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/transsion/widgets/CenterLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->n:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->n:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->q:Z

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->q:Z

    if-eqz p1, :cond_3

    new-instance p1, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p1, v1, v3, v2}, Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;-><init>(Landroid/content/Context;ZI)V

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->p:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->n:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->p:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->p:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    new-instance v1, Leab;

    invoke-direct {v1, p0}, Leab;-><init>(Lcom/transsion/onlinevideo/mangotv/TriviaDialog;)V

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :cond_3
    sget-wide v1, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    invoke-static {v1, v2}, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->getSerial(J)Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->r:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    :goto_2
    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->n:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_5

    sget-wide v1, Lcom/transsion/vishaplayersdk/data/PlayDetailDataManger;->sCurrentSerialId:J

    iget-object p1, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->n:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private static synthetic H(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void
.end method

.method public static I(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;Lcom/transsion/onlinevideo/mangotv/TriviaDialog$a;)Lcom/transsion/onlinevideo/mangotv/TriviaDialog;
    .locals 1

    new-instance v0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;

    invoke-direct {v0}, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;-><init>()V

    iput-object p0, v0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->n:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    iput-object p1, v0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->s:Lcom/transsion/onlinevideo/mangotv/TriviaDialog$a;

    return-object v0
.end method

.method public static synthetic w(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->H(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public E()I
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

.method public final synthetic G(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->J(I)V

    return-void
.end method

.method public J(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->p:Lcom/transsion/onlinevideo/adapter/VarietyShowAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->o:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->s:Lcom/transsion/onlinevideo/mangotv/TriviaDialog$a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->n:Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail;->getVideoSerialsNotIntact()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/onlinevideo/mangotv/TriviaDialog$a;->a(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/onlinevideo/R$layout;->layout_trivia:I

    return p0
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

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->E()I

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

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/BaseFullBottomSheetFragment;->l:Landroid/view/View;

    sget v1, Lcom/transsion/onlinevideo/R$id;->trivia_close:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    new-instance v1, Ldab;

    invoke-direct {v1, v0}, Ldab;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public v(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/onlinevideo/R$id;->root_trivia:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/transsion/onlinevideo/mangotv/TriviaDialog;->F(Landroid/view/View;)V

    return-void
.end method
