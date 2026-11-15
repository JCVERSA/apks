.class public Lkc3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/Switch;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

.field public d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

.field public e:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

.field public f:Lcom/transsion/widgets/InterceptLinearLayout;

.field public g:Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;

.field public h:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public i:Lcom/transsion/widgets/DisableDragLinearLayout;

.field public j:[S

.field public k:Landroid/content/Context;

.field public l:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    iput-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const/16 v0, 0xb

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lkc3;->j:[S

    new-instance v0, Lkc3$c;

    invoke-direct {v0, p0}, Lkc3$c;-><init>(Lkc3;)V

    iput-object v0, p0, Lkc3;->l:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0xas
        0x9s
        0x7s
        0x2s
        0x3s
        0x4s
        0x8s
        0x6s
        0x5s
    .end array-data
.end method

.method public static synthetic a(Lkc3;)V
    .locals 0

    invoke-virtual {p0}, Lkc3;->u()V

    return-void
.end method

.method public static synthetic b(I)V
    .locals 0

    invoke-static {p0}, Lkc3;->s(I)V

    return-void
.end method

.method public static synthetic c(Lkc3;)V
    .locals 0

    invoke-virtual {p0}, Lkc3;->t()V

    return-void
.end method

.method public static bridge synthetic d(Lkc3;)[S
    .locals 0

    iget-object p0, p0, Lkc3;->j:[S

    return-object p0
.end method

.method public static bridge synthetic e(Lkc3;)Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;
    .locals 0

    iget-object p0, p0, Lkc3;->g:Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;

    return-object p0
.end method

.method public static bridge synthetic f(Lkc3;)Lcom/transsion/playercommon/widgets/CustomOsSeekbar;
    .locals 0

    iget-object p0, p0, Lkc3;->e:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    return-object p0
.end method

.method public static bridge synthetic g(Lkc3;)Lcom/transsion/playercommon/widgets/CustomOsSeekbar;
    .locals 0

    iget-object p0, p0, Lkc3;->d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    return-object p0
.end method

.method public static bridge synthetic h(Lkc3;)[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;
    .locals 0

    iget-object p0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    return-object p0
.end method

.method public static bridge synthetic i(Lkc3;)V
    .locals 0

    invoke-virtual {p0}, Lkc3;->n()V

    return-void
.end method

.method public static bridge synthetic j(Lkc3;ZI)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkc3;->v(ZI)V

    return-void
.end method

.method public static bridge synthetic k(Lkc3;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lkc3;->x(Z)V

    return-void
.end method

.method public static bridge synthetic l(Lkc3;)V
    .locals 0

    invoke-virtual {p0}, Lkc3;->y()V

    return-void
.end method

.method public static synthetic s(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final m(S)I
    .locals 4

    iget-object p0, p0, Lkc3;->j:[S

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-short v3, p0, v1

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final n()V
    .locals 2

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object v0

    iget-boolean v0, v0, Lkrb;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkc3;->f:Lcom/transsion/widgets/InterceptLinearLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lkc3;->f:Lcom/transsion/widgets/InterceptLinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/InterceptLinearLayout;->setChildClickable(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkc3;->f:Lcom/transsion/widgets/InterceptLinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lkc3;->f:Lcom/transsion/widgets/InterceptLinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/InterceptLinearLayout;->setChildClickable(Z)V

    :goto_0
    return-void
.end method

.method public o(Landroid/view/View;)V
    .locals 0

    new-instance p0, Lhc3;

    invoke-direct {p0}, Lhc3;-><init>()V

    invoke-static {p1, p0}, Lcom/transsion/widgets/GestureUtil;->scrollGesture(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    return-void
.end method

.method public final p(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lkc3;->a:Landroid/widget/Switch;

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object v1

    iget-boolean v1, v1, Lkrb;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lkc3;->a:Landroid/widget/Switch;

    new-instance v1, Lkc3$a;

    invoke-direct {v1, p0}, Lkc3$a;-><init>(Lkc3;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/transsion/magicvideo/R$array;->preset_video_array:I

    sget v1, Lcom/transsion/magicvideo/R$layout;->os_video_spinner_item_layout:I

    invoke-static {p1, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lkc3;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lkc3;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lkc3;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$array;->band_video_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;

    invoke-direct {v1, p1}, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkc3;->g:Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;

    iget-object v3, p0, Lkc3;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lkc3;->g:Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object v0, p0, Lkc3;->g:Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;

    new-instance v1, Lkc3$b;

    invoke-direct {v1, p0, p1}, Lkc3$b;-><init>(Lkc3;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object p1, p0, Lkc3;->d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    iget-object v0, p0, Lkc3;->l:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setOnProgressChangedListener(Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;)V

    iget-object p1, p0, Lkc3;->e:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    iget-object v0, p0, Lkc3;->l:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setOnProgressChangedListener(Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;)V

    move p1, v2

    :goto_1
    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object v0

    iget-object v0, v0, Lkrb;->c:[S

    array-length v0, v0

    if-ge p1, v0, :cond_2

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object v0

    iget-object v0, v0, Lkrb;->c:[S

    aget-short v0, v0, p1

    invoke-virtual {p0, p1, v0}, Lkc3;->w(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    array-length v0, p1

    if-ge v2, v0, :cond_3

    aget-object p1, p1, v2

    iget-object v0, p0, Lkc3;->l:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setOnProgressChangedListener(Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lkc3;->y()V

    return-void
.end method

.method public q(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lkc3;->k:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lkc3;->r(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lkc3;->o(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lkc3;->p(Landroid/content/Context;)V

    return-object p2
.end method

.method public final r(Landroid/view/View;)V
    .locals 7

    sget v0, Lcom/transsion/magicvideo/R$id;->switch_open:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lkc3;->a:Landroid/widget/Switch;

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_cannot_drag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/DisableDragLinearLayout;

    iput-object v0, p0, Lkc3;->i:Lcom/transsion/widgets/DisableDragLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/DisableDragLinearLayout;->setCanDrag(Z)V

    sget v0, Lcom/transsion/magicvideo/R$id;->rv_style:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lkc3;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v2, Lcom/transsion/magicvideo/R$id;->seekbar1:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aput-object v2, v0, v1

    iget-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v2, Lcom/transsion/magicvideo/R$id;->seekbar2:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iget-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v2, Lcom/transsion/magicvideo/R$id;->seekbar3:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const/4 v4, 0x2

    aput-object v2, v0, v4

    iget-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v2, Lcom/transsion/magicvideo/R$id;->seekbar4:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const/4 v5, 0x3

    aput-object v2, v0, v5

    iget-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v2, Lcom/transsion/magicvideo/R$id;->seekbar5:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const/4 v6, 0x4

    aput-object v2, v0, v6

    sget v0, Lcom/transsion/magicvideo/R$id;->sb_bassboot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    iput-object v0, p0, Lkc3;->d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v0, Lcom/transsion/magicvideo/R$id;->sb_3d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    iput-object v0, p0, Lkc3;->e:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/InterceptLinearLayout;

    iput-object v0, p0, Lkc3;->f:Lcom/transsion/widgets/InterceptLinearLayout;

    iget-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v0, v0, v1

    const-string v2, "EQ_1"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v0, v0, v3

    const-string v2, "EQ_2"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v0, v0, v4

    const-string v2, "EQ_3"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v0, v0, v5

    const-string v2, "EQ_4"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v0, v0, v6

    const-string v2, "EQ_5"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lkc3;->d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const-string v2, "EQ_REVERB"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lkc3;->e:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const-string v2, "EQ_3D"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v0, v0, v1

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setThumbInsideColor(I)V

    iget-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setThumbInsideColor(I)V

    iget-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setThumbInsideColor(I)V

    iget-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setThumbInsideColor(I)V

    iget-object v0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v0, v0, v6

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setThumbInsideColor(I)V

    iget-object v0, p0, Lkc3;->d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setThumbInsideColor(I)V

    iget-object v0, p0, Lkc3;->e:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setThumbInsideColor(I)V

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_sger1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/magicvideo/R$id;->ll_sger2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v1, Lic3;

    invoke-direct {v1, p0}, Lic3;-><init>(Lkc3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljc3;

    invoke-direct {v0, p0}, Ljc3;-><init>(Lkc3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic t()V
    .locals 4

    iget-object v0, p0, Lkc3;->d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lkc3;->d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object p0, p0, Lkc3;->d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    filled-new-array {v1}, [Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic u()V
    .locals 4

    iget-object v0, p0, Lkc3;->e:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lkc3;->e:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object p0, p0, Lkc3;->e:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    filled-new-array {v1}, [Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public final v(ZI)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object p1

    const/4 v0, 0x0

    iput-short v0, p1, Lkrb;->b:S

    iget-object p1, p0, Lkc3;->g:Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;

    iget-object v1, p0, Lkc3;->j:[S

    aget-short v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;->r(I)V

    iget-object p1, p0, Lkc3;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :goto_0
    invoke-static {}, Ljrb;->d()S

    move-result p1

    if-ge v0, p1, :cond_0

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object p1

    iget-object p1, p1, Lkrb;->c:[S

    iget-object v1, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_0
    int-to-short p0, p2

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object p1

    iget-object p1, p1, Lkrb;->c:[S

    aget-short p1, p1, p2

    invoke-static {p0, p1}, Ljrb;->g(SS)V

    :cond_1
    return-void
.end method

.method public final w(II)V
    .locals 0

    iget-object p0, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object p0, p0, p1

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

    return-void
.end method

.method public final x(Z)V
    .locals 0

    invoke-static {p1}, Ljrb;->i(Z)V

    return-void
.end method

.method public final y()V
    .locals 4

    iget-object v0, p0, Lkc3;->d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object v1

    iget-short v1, v1, Lkrb;->e:S

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

    iget-object v0, p0, Lkc3;->e:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object v1

    iget-short v1, v1, Lkrb;->f:S

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object v1

    iget-object v1, v1, Lkrb;->c:[S

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lkc3;->c:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljrb;->b(S)S

    move-result v2

    invoke-static {v2}, Lkrb;->b(S)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkc3;->a:Landroid/widget/Switch;

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object v1

    iget-boolean v1, v1, Lkrb;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object v0

    iget-short v0, v0, Lkrb;->b:S

    invoke-virtual {p0, v0}, Lkc3;->m(S)I

    move-result v0

    iget-object v1, p0, Lkc3;->g:Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/magicvideo/adapter/VideoEqPresetAdapter;->r(I)V

    iget-object v1, p0, Lkc3;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lkc3;->k:Landroid/content/Context;

    const/high16 v3, 0x43160000    # 150.0f

    invoke-static {v2, v3}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    invoke-virtual {p0}, Lkc3;->n()V

    return-void
.end method
