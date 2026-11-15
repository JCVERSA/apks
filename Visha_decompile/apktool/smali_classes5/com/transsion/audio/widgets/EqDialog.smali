.class public Lcom/transsion/audio/widgets/EqDialog;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# static fields
.field public static DIALOG_TAG_MORE:Ljava/lang/String; = "dialog_tag_eq"

.field private static final EQ_1:Ljava/lang/String; = "EQ_1"

.field private static final EQ_2:Ljava/lang/String; = "EQ_2"

.field private static final EQ_3:Ljava/lang/String; = "EQ_3"

.field private static final EQ_3D:Ljava/lang/String; = "EQ_3D"

.field private static final EQ_4:Ljava/lang/String; = "EQ_4"

.field private static final EQ_5:Ljava/lang/String; = "EQ_5"

.field private static final EQ_REVERB:Ljava/lang/String; = "EQ_REVERB"

.field private static final TAG:Ljava/lang/String; = "visha_EqDialog"


# instance fields
.field private eqPresetAdapter:Lcom/transsion/playercommon/adapter/EqPresetAdapter;

.field private ll_cannot_drag:Lcom/transsion/widgets/DisableDragLinearLayout;

.field private ll_content:Lcom/transsion/widgets/InterceptLinearLayout;

.field private onSeekBarChangeListener:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

.field private presetLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private rv_style:Landroidx/recyclerview/widget/RecyclerView;

.field private sb_3d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

.field private sb_bassboot:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

.field private seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

.field private strings:[Ljava/lang/String;

.field private switch_open:Landroid/widget/Switch;

.field private tv_reverb:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    iput-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    new-instance v0, Lcom/transsion/audio/widgets/EqDialog$3;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/EqDialog$3;-><init>(Lcom/transsion/audio/widgets/EqDialog;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->onSeekBarChangeListener:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/audio/widgets/EqDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/EqDialog;->lambda$initGesture$3(I)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/audio/widgets/EqDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/EqDialog;->lambda$initValue$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/audio/widgets/EqDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/EqDialog;->lambda$initView$0()V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/audio/widgets/EqDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/EqDialog;->lambda$initView$1()V

    return-void
.end method

.method private initClickable()V
    .locals 2

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object v0

    iget-boolean v0, v0, Lmc3;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->ll_content:Lcom/transsion/widgets/InterceptLinearLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog;->ll_content:Lcom/transsion/widgets/InterceptLinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/InterceptLinearLayout;->setChildClickable(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->ll_content:Lcom/transsion/widgets/InterceptLinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog;->ll_content:Lcom/transsion/widgets/InterceptLinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgets/InterceptLinearLayout;->setChildClickable(Z)V

    :goto_0
    return-void
.end method

.method private initValue(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->switch_open:Landroid/widget/Switch;

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object v1

    iget-boolean v1, v1, Lmc3;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->switch_open:Landroid/widget/Switch;

    new-instance v1, Lcom/transsion/audio/widgets/EqDialog$1;

    invoke-direct {v1, p0}, Lcom/transsion/audio/widgets/EqDialog$1;-><init>(Lcom/transsion/audio/widgets/EqDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->tv_reverb:Landroid/widget/TextView;

    new-instance v1, Lfc3;

    invoke-direct {v1, p0}, Lfc3;-><init>(Lcom/transsion/audio/widgets/EqDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/audio/R$array;->preset_array:I

    sget v1, Lcom/transsion/audio/R$layout;->os_spinner_item_layout:I

    invoke-static {p1, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->presetLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/audio/widgets/EqDialog;->rv_style:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$array;->band_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->strings:[Ljava/lang/String;

    new-instance v0, Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    invoke-direct {v0, p1}, Lcom/transsion/playercommon/adapter/EqPresetAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->eqPresetAdapter:Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog;->rv_style:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog;->eqPresetAdapter:Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->strings:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog;->eqPresetAdapter:Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    new-instance v0, Lcom/transsion/audio/widgets/EqDialog$2;

    invoke-direct {v0, p0}, Lcom/transsion/audio/widgets/EqDialog$2;-><init>(Lcom/transsion/audio/widgets/EqDialog;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_bassboot:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->onSeekBarChangeListener:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setOnProgressChangedListener(Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_3d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->onSeekBarChangeListener:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setOnProgressChangedListener(Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;)V

    move p1, v2

    :goto_1
    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object v0

    iget-object v0, v0, Lmc3;->c:[S

    array-length v0, v0

    if-ge p1, v0, :cond_2

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object v0

    iget-object v0, v0, Lmc3;->c:[S

    aget-short v0, v0, p1

    invoke-direct {p0, p1, v0}, Lcom/transsion/audio/widgets/EqDialog;->setBandProgress(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    array-length v0, p1

    if-ge v2, v0, :cond_3

    aget-object p1, p1, v2

    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->onSeekBarChangeListener:Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setOnProgressChangedListener(Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/transsion/audio/widgets/EqDialog;->setValues()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 7

    .line 7
    sget v0, Lcom/transsion/audio/R$id;->switch_open:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->switch_open:Landroid/widget/Switch;

    .line 8
    sget v0, Lcom/transsion/audio/R$id;->ll_cannot_drag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/DisableDragLinearLayout;

    iput-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->ll_cannot_drag:Lcom/transsion/widgets/DisableDragLinearLayout;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/transsion/widgets/DisableDragLinearLayout;->setCanDrag(Z)V

    .line 10
    sget v0, Lcom/transsion/audio/R$id;->rv_style:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->rv_style:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    sget v0, Lcom/transsion/audio/R$id;->tv_reverb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->tv_reverb:Landroid/widget/TextView;

    .line 12
    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v2, Lcom/transsion/audio/R$id;->seekbar1:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aput-object v2, v0, v1

    .line 13
    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v2, Lcom/transsion/audio/R$id;->seekbar2:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 14
    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v2, Lcom/transsion/audio/R$id;->seekbar3:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 15
    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v2, Lcom/transsion/audio/R$id;->seekbar4:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const/4 v5, 0x3

    aput-object v2, v0, v5

    .line 16
    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    sget v2, Lcom/transsion/audio/R$id;->seekbar5:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const/4 v6, 0x4

    aput-object v2, v0, v6

    .line 17
    sget v0, Lcom/transsion/audio/R$id;->sb_bassboot:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    iput-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_bassboot:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    .line 18
    sget v0, Lcom/transsion/audio/R$id;->sb_3d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    iput-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_3d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    .line 19
    sget v0, Lcom/transsion/audio/R$id;->ll_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/InterceptLinearLayout;

    iput-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->ll_content:Lcom/transsion/widgets/InterceptLinearLayout;

    .line 20
    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v0, v0, v1

    const-string v1, "EQ_1"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v0, v0, v3

    const-string v1, "EQ_2"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v0, v0, v4

    const-string v1, "EQ_3"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v0, v0, v5

    const-string v1, "EQ_4"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v0, v0, v6

    const-string v1, "EQ_5"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_bassboot:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const-string v1, "EQ_REVERB"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_3d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    const-string v1, "EQ_3D"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 27
    sget v0, Lcom/transsion/audio/R$id;->ll_sger1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 28
    sget v1, Lcom/transsion/audio/R$id;->ll_sger2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 29
    new-instance v1, Ldc3;

    invoke-direct {v1, p0}, Ldc3;-><init>(Lcom/transsion/audio/widgets/EqDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    new-instance v0, Lec3;

    invoke-direct {v0, p0}, Lec3;-><init>(Lcom/transsion/audio/widgets/EqDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static bridge synthetic j0(Lcom/transsion/audio/widgets/EqDialog;)Lcom/transsion/playercommon/adapter/EqPresetAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog;->eqPresetAdapter:Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    return-object p0
.end method

.method public static bridge synthetic k0(Lcom/transsion/audio/widgets/EqDialog;)Lcom/transsion/playercommon/widgets/CustomOsSeekbar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_3d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    return-object p0
.end method

.method public static bridge synthetic l0(Lcom/transsion/audio/widgets/EqDialog;)Lcom/transsion/playercommon/widgets/CustomOsSeekbar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_bassboot:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    return-object p0
.end method

.method private synthetic lambda$initGesture$3(I)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/widgets/EqDialog;->animateDismiss()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initValue$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/EqDialog;->showListDialog()V

    invoke-static {}, Lry5;->e()V

    return-void
.end method

.method private synthetic lambda$initView$0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_bassboot:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_bassboot:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_bassboot:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

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

.method private synthetic lambda$initView$1()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_3d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_3d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_3d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

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

.method public static bridge synthetic m0(Lcom/transsion/audio/widgets/EqDialog;)[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    return-object p0
.end method

.method public static bridge synthetic n0(Lcom/transsion/audio/widgets/EqDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog;->tv_reverb:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic o0(Lcom/transsion/audio/widgets/EqDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/EqDialog;->initClickable()V

    return-void
.end method

.method public static bridge synthetic p0(Lcom/transsion/audio/widgets/EqDialog;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/audio/widgets/EqDialog;->resetEqTag(ZI)V

    return-void
.end method

.method public static bridge synthetic q0(Lcom/transsion/audio/widgets/EqDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/EqDialog;->setEnable(Z)V

    return-void
.end method

.method public static bridge synthetic r0(Lcom/transsion/audio/widgets/EqDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/widgets/EqDialog;->setValues()V

    return-void
.end method

.method private resetEqTag(ZI)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object p1

    const/4 v0, 0x0

    iput-short v0, p1, Lmc3;->b:S

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog;->eqPresetAdapter:Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    invoke-virtual {p1}, Lcom/transsion/playercommon/adapter/EqPresetAdapter;->g()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog;->eqPresetAdapter:Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/adapter/EqPresetAdapter;->r(I)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog;->rv_style:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    :goto_0
    invoke-static {}, Llc3;->e()S

    move-result p1

    if-ge v0, p1, :cond_1

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object p1

    iget-object p1, p1, Lmc3;->c:[S

    iget-object v1, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "resetEqTag index:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_EqDialog"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private setBandProgress(II)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object p0, p0, p1

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

    return-void
.end method

.method private setEnable(Z)V
    .locals 0

    invoke-static {p1}, Llc3;->m(Z)V

    return-void
.end method

.method private setValues()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_bassboot:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object v1

    iget-short v1, v1, Lmc3;->e:S

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->sb_3d:Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object v1

    iget-short v1, v1, Lmc3;->f:S

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object v1

    iget-object v1, v1, Lmc3;->c:[S

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/widgets/EqDialog;->seekbars:[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    aget-object v1, v1, v0

    invoke-static {v0}, Llc3;->b(S)S

    move-result v2

    invoke-static {v2}, Lmc3;->b(S)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->tv_reverb:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$array;->preset_array:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object v2

    iget-short v2, v2, Lmc3;->d:S

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->switch_open:Landroid/widget/Switch;

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object v1

    iget-boolean v1, v1, Lmc3;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->eqPresetAdapter:Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object v1

    iget-short v1, v1, Lmc3;->b:S

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/adapter/EqPresetAdapter;->r(I)V

    iget-object v0, p0, Lcom/transsion/audio/widgets/EqDialog;->presetLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object v1

    iget-short v1, v1, Lmc3;->b:S

    const/high16 v2, 0x43160000    # 150.0f

    invoke-static {p0, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    invoke-direct {p0}, Lcom/transsion/audio/widgets/EqDialog;->initClickable()V

    return-void
.end method

.method public static showEqDialog(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/transsion/audio/widgets/EqDialog;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showListDialog()V
    .locals 5

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object v0

    iget-short v0, v0, Lmc3;->d:S

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$array;->preset_array:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/transsion/widgetslib/dialog/d$a;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v3, Lcom/transsion/audio/R$string;->eq_reverb:I

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v2

    new-instance v3, Lcom/transsion/audio/widgets/EqDialog$5;

    invoke-direct {v3, p0, v1}, Lcom/transsion/audio/widgets/EqDialog$5;-><init>(Lcom/transsion/audio/widgets/EqDialog;[Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/transsion/widgetslib/dialog/d$a;->z([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$string;->apply:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$string;->cancel:I

    new-instance v4, Lcom/transsion/audio/widgets/EqDialog$4;

    invoke-direct {v4, p0, v1, v0}, Lcom/transsion/audio/widgets/EqDialog$4;-><init>(Lcom/transsion/audio/widgets/EqDialog;[Ljava/lang/CharSequence;S)V

    invoke-virtual {v2, v3, v4}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic afterGpdrPermission()V
    .locals 0

    invoke-super {p0}, Lqv4;->afterGpdrPermission()V

    return-void
.end method

.method public animateDismiss()V
    .locals 6

    invoke-super {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object p0

    invoke-static {p0}, Lmc3;->c(Lmc3;)V

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lmc3;->a:Z

    iget-short v1, p0, Lmc3;->b:S

    iget-object v2, p0, Lmc3;->c:[S

    iget-short v3, p0, Lmc3;->e:S

    iget-short v4, p0, Lmc3;->f:S

    iget-short v5, p0, Lmc3;->d:S

    invoke-static/range {v0 .. v5}, Lry5;->b(ZI[SIII)V

    :cond_0
    return-void
.end method

.method public initGesture(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lgc3;

    invoke-direct {v0, p0}, Lgc3;-><init>(Lcom/transsion/audio/widgets/EqDialog;)V

    invoke-static {p1, v0}, Lcom/transsion/widgets/GestureUtil;->scrollGesture(Landroid/view/View;Lcom/transsion/widgets/GestureUtil$ScorllToListener;)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$layout;->audio_eq_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(Ljava/lang/String;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->showTitle(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    .line 4
    invoke-direct {p0, v0}, Lcom/transsion/audio/widgets/EqDialog;->initView(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/transsion/audio/widgets/EqDialog;->initGesture(Landroid/view/View;)V

    .line 6
    invoke-direct {p0, p0}, Lcom/transsion/audio/widgets/EqDialog;->initValue(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onStart()V

    return-void
.end method

.method public bridge synthetic requestFilePermission()V
    .locals 0

    invoke-super {p0}, Lqv4;->requestFilePermission()V

    return-void
.end method
