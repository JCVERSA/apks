.class public Lcom/transsion/audio/activities/AudioFilterTypeActivity;
.super Lcom/transsion/playercommon/activities/BasePermissionActivity;
.source "SourceFile"


# static fields
.field public static final U:Ljava/lang/String; = "AudioFilterTypeActivity"


# instance fields
.field public N:Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

.field public O:Ljava/util/List;

.field public P:Ljava/util/List;

.field public Q:Ljava/lang/String;

.field public R:Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

.field public S:Lcom/transsion/audio/adapter/AudioItemAdapter;

.field public T:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;-><init>()V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->O0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->K0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic D0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;Lcom/transsion/audio/activities/AudioFilterTypeActivity;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->P0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic E0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;)Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->R:Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

    return-object p0
.end method

.method public static bridge synthetic F0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->Q:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic G0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->Q0(I)V

    return-void
.end method

.method public static bridge synthetic H0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->R0(I)V

    return-void
.end method

.method private N0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->N:Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->g:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->title_bar_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmp;

    invoke-direct {v1, p0}, Lmp;-><init>(Lcom/transsion/audio/activities/AudioFilterTypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "filter_size"

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/audio/R$string;->audio_filter_file_size:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/audio/R$string;->audio_filter_file_duration:I

    :goto_0
    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->N:Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    iget-object p0, p0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->g:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->title_bar_title:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private initData()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->M0()V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->L0()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "filter_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->Q:Ljava/lang/String;

    const-string v1, "filter_size"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "filter_duration"

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->U:Ljava/lang/String;

    const-string v1, "filterType is error"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->finish()V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->N:Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->Q:Ljava/lang/String;

    const-string v1, "filter_size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vd_audio_filt_size_show"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

    iget-object v2, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->O:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->R:Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mmkv/MMKV;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;->r(I)V

    goto :goto_0

    :cond_0
    const-string v0, "vd_audio_filt_time_show"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->P:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->R:Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "filter_duration"

    invoke-virtual {v1, v2}, Lcom/tencent/mmkv/MMKV;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;->r(I)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->N:Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->R:Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->S:Lcom/transsion/audio/adapter/AudioItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->X(Z)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->N:Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->S:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->N:Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->R:Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

    new-instance v1, Lcom/transsion/audio/activities/AudioFilterTypeActivity$a;

    const/16 v2, 0xc8

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/transsion/audio/activities/AudioFilterTypeActivity$a;-><init>(Lcom/transsion/audio/activities/AudioFilterTypeActivity;IZ)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->R:Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

    invoke-virtual {v0}, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->Q0(I)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->R:Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

    invoke-virtual {v0}, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->R0(I)V

    return-void
.end method


# virtual methods
.method public final I0(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Lcom/transsion/audio/R$attr;->os_platform_basic_color:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->data:I

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p0, 0x21

    invoke-virtual {v0, v1, p1, p2, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public final J0(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    const-string p0, "filter_size"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0}, Lao;->P()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lao;->U()Lao;

    move-result-object p0

    invoke-virtual {p0}, Lao;->O()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final K0(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->S:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->S0()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->T0()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final L0()V
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->P:Ljava/util/List;

    return-void
.end method

.method public final M0()V
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->O:Ljava/util/List;

    return-void
.end method

.method public final synthetic O0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->finish()V

    return-void
.end method

.method public final synthetic P0(Lcom/transsion/audio/activities/AudioFilterTypeActivity;)Ljava/util/List;
    .locals 0

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->Q:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->J0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final Q0(I)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->T0()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->Q:Ljava/lang/String;

    const-string v0, "filter_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->R:Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mmkv/MMKV;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;->r(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->R:Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "filter_duration"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/audio/adapter/AudioFilterSingleChoiceAdapter;->r(I)V

    :goto_0
    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lkp;

    invoke-direct {v0, p0}, Lkp;-><init>(Lcom/transsion/audio/activities/AudioFilterTypeActivity;)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Llp;

    invoke-direct {v0, p0}, Llp;-><init>(Lcom/transsion/audio/activities/AudioFilterTypeActivity;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final R0(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->Q:Ljava/lang/String;

    const-string v1, "filter_size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->g:[I

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/transsion/audio/R$string;->audio_file_hide_if_size_smaller:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->I0(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->N:Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    iget-object p0, p0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->Q:Ljava/lang/String;

    const-string v1, "filter_duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->h:[I

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/transsion/audio/R$string;->audio_file_hide_if_time_smaller:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->I0(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->N:Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    iget-object p0, p0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final S0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->N:Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->N:Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->T:Landroid/view/View;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final T0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->N:Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->e:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->N:Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->T:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->N:Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    iget-object v0, v0, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->d:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->T:Landroid/view/View;

    sget v1, Lcom/transsion/audio/R$id;->text_no_audios:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/audio/R$string;->visha_not_file_hide_by_filter:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->T:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->c(Landroid/view/LayoutInflater;)Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->N:Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;

    invoke-virtual {p1}, Lcom/transsion/audio/databinding/ActivityAudioFilterTypeBinding;->b()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->initData()V

    invoke-direct {p0}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->N0()V

    invoke-direct {p0}, Lcom/transsion/audio/activities/AudioFilterTypeActivity;->initView()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onDestroy()V

    return-void
.end method
