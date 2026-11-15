.class public Lcom/transsion/audio/activities/AudioFilterMainActivity;
.super Lcom/transsion/playercommon/activities/BasePermissionActivity;
.source "SourceFile"


# instance fields
.field public N:[Ljava/lang/String;

.field public O:[Ljava/lang/String;

.field public P:Lcom/transsion/audio/adapter/FilterItemAdapter;

.field public Q:Lcom/transsion/audio/databinding/DialogFilterAudioBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;-><init>()V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/audio/activities/AudioFilterMainActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioFilterMainActivity;->K0(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic C0(Lcom/transsion/audio/activities/AudioFilterMainActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioFilterMainActivity;->F0()V

    return-void
.end method

.method public static bridge synthetic D0(Lcom/transsion/audio/activities/AudioFilterMainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioFilterMainActivity;->G0(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic E0(Lcom/transsion/audio/activities/AudioFilterMainActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioFilterMainActivity;->H0()V

    return-void
.end method

.method private initData()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioFilterMainActivity;->J0()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity;->N:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioFilterMainActivity;->I0()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity;->O:[Ljava/lang/String;

    return-void
.end method

.method private initView()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity;->Q:Lcom/transsion/audio/databinding/DialogFilterAudioBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/DialogFilterAudioBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/audio/adapter/FilterItemAdapter;

    invoke-direct {v0}, Lcom/transsion/audio/adapter/FilterItemAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity;->P:Lcom/transsion/audio/adapter/FilterItemAdapter;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity;->Q:Lcom/transsion/audio/databinding/DialogFilterAudioBinding;

    iget-object v1, v1, Lcom/transsion/audio/databinding/DialogFilterAudioBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity;->Q:Lcom/transsion/audio/databinding/DialogFilterAudioBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/DialogFilterAudioBinding;->c:Landroid/widget/ImageView;

    new-instance v1, Ljp;

    invoke-direct {v1, p0}, Ljp;-><init>(Lcom/transsion/audio/activities/AudioFilterMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity;->P:Lcom/transsion/audio/adapter/FilterItemAdapter;

    new-instance v1, Lcom/transsion/audio/activities/AudioFilterMainActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/audio/activities/AudioFilterMainActivity$a;-><init>(Lcom/transsion/audio/activities/AudioFilterMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public final F0()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/audio/activities/FilterResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public final G0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/audio/activities/AudioFilterTypeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "filter_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public final H0()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/audio/activities/AudioFilterFolderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public final I0()[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    sget-object v3, Lcom/transsion/dbdata/utils/AudioFilterUtils;->h:[I

    aget v4, v3, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/audio/R$string;->audio_filter_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/audio/R$string;->audio_filter_duration:I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final J0()[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    sget-object v3, Lcom/transsion/dbdata/utils/AudioFilterUtils;->g:[I

    aget v4, v3, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/audio/R$string;->audio_filter_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/audio/R$string;->audio_filter_size:I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final synthetic K0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->finish()V

    return-void
.end method

.method public final L0()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;

    invoke-direct {v1}, Lcom/transsion/audio/adapter/FilterItemAdapter$a;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;->c:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$string;->audio_filter_file_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity;->N:[Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    const-string v4, "filter_size"

    invoke-virtual {v3, v4}, Lcom/tencent/mmkv/MMKV;->f(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;

    invoke-direct {v1}, Lcom/transsion/audio/adapter/FilterItemAdapter$a;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;->c:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$string;->audio_filter_file_duration:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity;->O:[Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    const-string v4, "filter_duration"

    invoke-virtual {v3, v4}, Lcom/tencent/mmkv/MMKV;->f(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;

    invoke-direct {v1}, Lcom/transsion/audio/adapter/FilterItemAdapter$a;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;->c:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$string;->folders:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$string;->audio_filter_bucket_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;

    invoke-direct {v1}, Lcom/transsion/audio/adapter/FilterItemAdapter$a;-><init>()V

    const/4 v2, 0x3

    iput v2, v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;->c:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$string;->audio_filter_view_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/audio/R$string;->audio_filter_view_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/audio/adapter/FilterItemAdapter$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity;->P:Lcom/transsion/audio/adapter/FilterItemAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/audio/databinding/DialogFilterAudioBinding;->c(Landroid/view/LayoutInflater;)Lcom/transsion/audio/databinding/DialogFilterAudioBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioFilterMainActivity;->Q:Lcom/transsion/audio/databinding/DialogFilterAudioBinding;

    invoke-virtual {p1}, Lcom/transsion/audio/databinding/DialogFilterAudioBinding;->b()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/audio/activities/AudioFilterMainActivity;->initData()V

    invoke-direct {p0}, Lcom/transsion/audio/activities/AudioFilterMainActivity;->initView()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onResume()V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioFilterMainActivity;->L0()V

    const-string p0, "vd_audio_filt_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method
