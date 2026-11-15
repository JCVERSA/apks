.class public Lcom/transsion/sniffer_load/WebHistoryActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$c;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/transsion/widgetslib/widget/FootOperationBar$n;


# instance fields
.field public N:Landroidx/recyclerview/widget/RecyclerView;

.field public O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

.field public P:Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

.field public final Q:Ljava/util/List;

.field public R:Landroid/view/View;

.field public S:Landroid/widget/ImageView;

.field public T:Landroid/widget/ImageView;

.field public U:Landroid/widget/TextView;

.field public V:Landroid/widget/CheckBox;

.field public W:Z

.field public X:Lcom/transsion/sniffer_load/widgets/ReviewHistoryFootOperateBar;

.field public Y:I

.field public Z:Landroid/view/View;

.field public a0:Landroid/view/View;

.field public b0:Landroid/view/WindowManager$LayoutParams;

.field public c0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Q:Ljava/util/List;

    return-void
.end method

.method private H0()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->b0:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->updateWebWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->b0:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/sniffer_load/WebHistoryActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->K0()V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/sniffer_load/WebHistoryActivity;JLcom/transsion/sniffer_load/adapter/HistoryListAdapter$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/WebHistoryActivity;->J0(JLcom/transsion/sniffer_load/adapter/HistoryListAdapter$a;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/sniffer_load/WebHistoryActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->I0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic s0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->W:Z

    return p0
.end method

.method public static bridge synthetic t0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->V:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic u0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->S:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic v0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Q:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic w0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    return-object p0
.end method

.method public static bridge synthetic x0(Lcom/transsion/sniffer_load/WebHistoryActivity;)Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->P:Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

    return-object p0
.end method

.method public static bridge synthetic y0(Lcom/transsion/sniffer_load/WebHistoryActivity;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->M0(Z)V

    return-void
.end method


# virtual methods
.method public A0(Ljava/util/List;)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iput v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Y:I

    const-wide/16 v1, 0x0

    move v3, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/sniffer_load/data/ReviewHistory;

    invoke-virtual {v4}, Lcom/transsion/sniffer_load/data/ReviewHistory;->getDate()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Lb23;->s(JJ)Z

    move-result v5

    if-nez v5, :cond_0

    iget-wide v1, v4, Lcom/transsion/sniffer_load/data/ReviewHistory;->date:J

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Q:Ljava/util/List;

    new-instance v7, Lcom/transsion/sniffer_load/data/ReviewHistory;

    const/4 v8, 0x1

    invoke-direct {v7, v5, v1, v2, v8}, Lcom/transsion/sniffer_load/data/ReviewHistory;-><init>(Ljava/lang/String;JZ)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Y:I

    add-int/2addr v5, v8

    iput v5, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Y:I

    :cond_0
    iget-object v5, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Q:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Q:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->T:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->W:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/16 v0, 0x8

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->W:Z

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->P0(Z)V

    return-void
.end method

.method public B0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->setOnSelectListener(Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$c;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    new-instance v1, Lcom/transsion/sniffer_load/WebHistoryActivity$c;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/WebHistoryActivity$c;-><init>(Lcom/transsion/sniffer_load/WebHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    new-instance v1, Lcom/transsion/sniffer_load/WebHistoryActivity$d;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/WebHistoryActivity$d;-><init>(Lcom/transsion/sniffer_load/WebHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    new-instance v1, Lcom/transsion/sniffer_load/WebHistoryActivity$e;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/WebHistoryActivity$e;-><init>(Lcom/transsion/sniffer_load/WebHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method public C0(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->p:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Z:Landroid/view/View;

    if-nez v1, :cond_1

    sget v1, Lcom/transsion/sniffer_load/R$id;->empty_view:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Z:Landroid/view/View;

    :cond_1
    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Z:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public D0()V
    .locals 2

    new-instance v0, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public E0()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mActivityNavigationColor:I

    return-void
.end method

.method public F0()V
    .locals 3

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->R:Landroid/view/View;

    new-instance v1, Lgic;

    invoke-direct {v1, p0}, Lgic;-><init>(Lcom/transsion/sniffer_load/WebHistoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->U:Landroid/widget/TextView;

    sget v1, Lcom/transsion/sniffer_load/R$string;->review_history_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->title_bar_checkBox:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->V:Landroid/widget/CheckBox;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_bookmark_edit:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->S:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/sniffer_load/R$drawable;->ic_bookmark_edit:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->S:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->V:Landroid/widget/CheckBox;

    new-instance v2, Lcom/transsion/sniffer_load/WebHistoryActivity$a;

    invoke-direct {v2, p0}, Lcom/transsion/sniffer_load/WebHistoryActivity$a;-><init>(Lcom/transsion/sniffer_load/WebHistoryActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_history_clear:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public G0()V
    .locals 2

    const-class v0, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->P:Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    new-instance v1, Lfic;

    invoke-direct {v1, p0}, Lfic;-><init>(Lcom/transsion/sniffer_load/WebHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->A(Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$b;)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->P:Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->j()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/sniffer_load/WebHistoryActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/WebHistoryActivity$b;-><init>(Lcom/transsion/sniffer_load/WebHistoryActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final synthetic I0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->onBackPressed()V

    return-void
.end method

.method public final synthetic J0(JLcom/transsion/sniffer_load/adapter/HistoryListAdapter$a;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->P:Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Liic;

    invoke-direct {v1, p3}, Liic;-><init>(Lcom/transsion/sniffer_load/adapter/HistoryListAdapter$a;)V

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->r(JLcom/transsion/playercommon/activities/BaseActivity;Lzf1;)V

    return-void
.end method

.method public final synthetic K0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->X:Lcom/transsion/sniffer_load/widgets/ReviewHistoryFootOperateBar;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->W:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public L0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V
    .locals 1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/sniffer_load/data/ReviewHistory;

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_history_checkBox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    check-cast p1, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-ne p4, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p0, p2, p3}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->x(Lcom/transsion/sniffer_load/data/ReviewHistory;ZI)V

    return-void
.end method

.method public final M0(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->a0:Landroid/view/View;

    if-eqz p0, :cond_2

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->a0:Landroid/view/View;

    if-nez p1, :cond_1

    sget p1, Lcom/transsion/sniffer_load/R$id;->view_no_histroy:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->a0:Landroid/view/View;

    :cond_1
    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->a0:Landroid/view/View;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public N0(Ljava/util/List;Z)V
    .locals 4

    sget v0, Lcom/transsion/sniffer_load/R$string;->clear_history:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    sget v1, Lcom/transsion/sniffer_load/R$string;->clear:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    sget v0, Lcom/transsion/sniffer_load/R$string;->talkback_clear_history:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$string;->clear_empty:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    sget v0, Lcom/transsion/sniffer_load/R$string;->clear_histories_recorded:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    new-instance v2, Lcom/transsion/sniffer_load/WebHistoryActivity$h;

    invoke-direct {v2, p0, p2, p1}, Lcom/transsion/sniffer_load/WebHistoryActivity$h;-><init>(Lcom/transsion/sniffer_load/WebHistoryActivity;ZLjava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget p2, Lcom/transsion/sniffer_load/R$string;->cancel:I

    new-instance v0, Lcom/transsion/sniffer_load/WebHistoryActivity$g;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/WebHistoryActivity$g;-><init>(Lcom/transsion/sniffer_load/WebHistoryActivity;)V

    invoke-virtual {p1, p2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public O0(Z)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->N0(Ljava/util/List;Z)V

    return-void
.end method

.method public P0(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->W:Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->z(Z)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    invoke-virtual {v2}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->h()V

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->V:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    invoke-virtual {v2, v0}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->w(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    invoke-virtual {v2}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->k()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    invoke-virtual {v2, v1}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->w(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->c0:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    invoke-virtual {v2}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->v()V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->c0:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    invoke-virtual {v2}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->v()V

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->S:Landroid/widget/ImageView;

    const/16 v3, 0x8

    if-eqz p1, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->V:Landroid/widget/CheckBox;

    if-eqz p1, :cond_5

    move v4, v1

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->T:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    move v4, v3

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->R:Landroid/view/View;

    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_9

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    sget v4, Lcom/transsion/playercommon/R$string;->os_close:I

    goto :goto_4

    :cond_7
    sget v4, Lcom/transsion/playercommon/R$string;->os_back:I

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->R:Landroid/view/View;

    if-eqz p1, :cond_8

    sget v4, Lcom/transsion/playercommon/R$string;->talkback_close:I

    goto :goto_5

    :cond_8
    sget v4, Lcom/transsion/playercommon/R$string;->talkback_back:I

    :goto_5
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v2, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->R:Landroid/view/View;

    new-instance v4, Lcom/transsion/sniffer_load/WebHistoryActivity$f;

    invoke-direct {v4, p0, p1}, Lcom/transsion/sniffer_load/WebHistoryActivity$f;-><init>(Lcom/transsion/sniffer_load/WebHistoryActivity;Z)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_a

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lcom/transsion/common/R$attr;->foot_bar_background:I

    invoke-virtual {v4, v5, v2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mActivityNavigationColor:I

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->inflateOperationBar()V

    :cond_a
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->X:Lcom/transsion/sniffer_load/widgets/ReviewHistoryFootOperateBar;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_b

    move v3, v1

    :cond_b
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->U:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    sget v2, Lcom/transsion/magicvideo/R$string;->none_select:I

    goto :goto_6

    :cond_d
    sget v2, Lcom/transsion/sniffer_load/R$string;->review_history_title:I

    :goto_6
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->resetNavigationBarColor(Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x2

    if-eqz p1, :cond_e

    sget p1, Lcom/transsion/sniffer_load/R$id;->bottom_bar:I

    invoke-virtual {v0, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_7

    :cond_e
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :goto_7
    iget-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->z0()V

    iput-boolean v1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->c0:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->setTitle(I)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Q:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Y:I

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->setTitle(I)V

    return-void
.end method

.method public inflateOperationBar()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->X:Lcom/transsion/sniffer_load/widgets/ReviewHistoryFootOperateBar;

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/sniffer_load/R$id;->bottom_action_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$id;->bottom_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/sniffer_load/widgets/ReviewHistoryFootOperateBar;

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->X:Lcom/transsion/sniffer_load/widgets/ReviewHistoryFootOperateBar;

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

    iget-boolean v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->W:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->P0(Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_bookmark_edit:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->P0(Z)V

    const-string p0, "dl_brower_rp_more_history_multi_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/sniffer_load/R$id;->iv_history_clear:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/transsion/sniffer_load/WebHistoryActivity;->O0(Z)V

    const-string p0, "dl_brower_rp_more_history_cleanup_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    const-string p0, "dl_brower_rp_more_history_cleanup_popup_show"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->c0:Z

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->X:Lcom/transsion/sniffer_load/widgets/ReviewHistoryFootOperateBar;

    if-eqz p1, :cond_0

    new-instance v0, Lhic;

    invoke-direct {v0, p0}, Lhic;-><init>(Lcom/transsion/sniffer_load/WebHistoryActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/sniffer_load/R$layout;->activity_web_history:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lcom/transsion/sniffer_load/R$id;->rv_history_list:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->N:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->E0()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->F0()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->D0()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->G0()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->B0()V

    invoke-direct {p0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->H0()V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->clearWindowDimFlag(Z)V

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->resetNavigationBarColor(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->X:Lcom/transsion/sniffer_load/widgets/ReviewHistoryFootOperateBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->M0(Z)V

    return-void
.end method

.method public onItemClick(I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->O:Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/adapter/HistoryListAdapter;->k()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/sniffer_load/WebHistoryActivity;->N0(Ljava/util/List;Z)V

    const-string p0, "dl_brower_rp_more_history_multi_del_cl"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

    const-string p0, "dl_brower_rp_more_history_multi_del_popup_show"

    invoke-static {p0}, Lp06;->d0(Ljava/lang/String;)V

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

    const-string v0, "dl_brower_rp_more_history_show"

    invoke-static {p1, v0}, Lr06;->c(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->b0:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->updateWebWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->U:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->V:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Y:I

    sub-int/2addr v3, v4

    if-ne p1, v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->X:Lcom/transsion/sniffer_load/widgets/ReviewHistoryFootOperateBar;

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Lcom/transsion/sniffer_load/widgets/ReviewHistoryFootOperateBar;->setAllEnable(Z)V

    :cond_6
    return-void
.end method

.method public final z0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->T:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->W:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Q:Ljava/util/List;

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

    :cond_2
    iget-object v0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->S:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->W:Z

    if-nez v3, :cond_4

    iget-object p0, p0, Lcom/transsion/sniffer_load/WebHistoryActivity;->Q:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    return-void
.end method
