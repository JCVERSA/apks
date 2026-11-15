.class public Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;
.super Lcom/transsion/playercommon/activities/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public N:Landroid/widget/Switch;

.field public O:Landroid/widget/TextView;

.field public P:Landroid/widget/TextView;

.field public Q:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

.field public R:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

.field public S:Landroid/widget/SeekBar;

.field public T:Landroid/widget/SeekBar;

.field public U:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

.field public V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

.field public W:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

.field public X:Landroid/view/View;

.field public Y:Landroid/widget/TextView;

.field public Z:Landroid/view/View;

.field public final a0:Landroidx/lifecycle/Observer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BaseActivity;-><init>()V

    new-instance v0, Lb6a;

    invoke-direct {v0, p0}, Lb6a;-><init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->a0:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static bridge synthetic A0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->R0()V

    return-void
.end method

.method public static bridge synthetic B0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->T0()V

    return-void
.end method

.method public static bridge synthetic C0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->U0()V

    return-void
.end method

.method public static bridge synthetic D0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V0()V

    return-void
.end method

.method public static bridge synthetic E0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->W0()V

    return-void
.end method

.method public static bridge synthetic F0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->X0()V

    return-void
.end method

.method private G0()V
    .locals 2

    const-class v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->W:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->getSettingLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, La6a;

    invoke-direct {v1, p0}, La6a;-><init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->W:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->querySettingData(Lcom/transsion/playercommon/activities/BaseActivity;)V

    const-class v0, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/WindowInfoViewModel;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->a0:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private H0()V
    .locals 1

    sget v0, Lcom/transsion/magicvideo/R$id;->container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Z:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->switch_move:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->N:Landroid/widget/Switch;

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_location:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->O:Landroid/widget/TextView;

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_text_alignment:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->P:Landroid/widget/TextView;

    sget v0, Lcom/transsion/magicvideo/R$id;->seekbar_size:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Q:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    sget v0, Lcom/transsion/magicvideo/R$id;->seekbar_weight:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->R:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    sget v0, Lcom/transsion/magicvideo/R$id;->seekbar_text_color:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->S:Landroid/widget/SeekBar;

    sget v0, Lcom/transsion/magicvideo/R$id;->seekbar_background_color:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->T:Landroid/widget/SeekBar;

    sget v0, Lcom/transsion/magicvideo/R$id;->seekbar_opacity:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->U:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    sget v0, Lcom/transsion/magicvideo/R$id;->title_bar_back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->X:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_subtitle_preview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Y:Landroid/widget/TextView;

    sget v0, Lcom/transsion/magicvideo/R$id;->subtitle_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lz5a;

    invoke-direct {v0, p0}, Lz5a;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic J0(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit16 v1, v1, 0x216

    div-int/lit16 v1, v1, 0x438

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic K0(Lwoc;)V
    .locals 4

    iget v0, p1, Lwoc;->a:I

    iget-boolean v1, p1, Lwoc;->g:Z

    iget-boolean p1, p1, Lwoc;->c:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Z:Landroid/view/View;

    const/high16 v0, 0x42ba0000    # 93.0f

    invoke-static {p0, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {p1, v1, v2, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Z:Landroid/view/View;

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {p0, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {p1, v1, v2, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Z:Landroid/view/View;

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Z:Landroid/view/View;

    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method public static Q0(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/transsion/utils/BaseConstant;->d:I

    invoke-static {v0, v1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    return-void
.end method

.method public static synthetic p0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;Lwoc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->K0(Lwoc;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->O0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->P0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->N0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->M0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->L0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->J0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;Lcom/transsion/dbdata/beans/SubtitleSettingData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->I0(Lcom/transsion/dbdata/beans/SubtitleSettingData;)V

    return-void
.end method

.method public static bridge synthetic x0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->O:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic y0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)Lcom/transsion/dbdata/beans/SubtitleSettingData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    return-object p0
.end method

.method public static bridge synthetic z0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->P:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final synthetic I0(Lcom/transsion/dbdata/beans/SubtitleSettingData;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Y0()V

    return-void
.end method

.method public final synthetic L0(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)Ljava/lang/Boolean;
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->W:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->insertSettingDataSync(Lcom/transsion/dbdata/beans/SubtitleSettingData;Lcom/transsion/playercommon/activities/BaseActivity;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic M0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final synthetic N0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->N:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textDrag:I

    return-void
.end method

.method public final synthetic O0(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget v1, v0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->translateY:I

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    iget v0, v0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->location:I

    goto :goto_0

    :goto_1
    new-instance v4, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$a;

    invoke-direct {v4, p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$a;-><init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/magicvideo/R$array;->location_array:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lk6a;->l(ILandroid/view/View;Landroid/content/Context;Lk6a$d;Ljava/util/List;Z)V

    return-void
.end method

.method public final synthetic P0(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget v1, v0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textAlignment:I

    new-instance v4, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$b;

    invoke-direct {v4, p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$b;-><init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/magicvideo/R$array;->text_alignment_array:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lk6a;->l(ILandroid/view/View;Landroid/content/Context;Lk6a$d;Ljava/util/List;Z)V

    return-void
.end method

.method public final R0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Y:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget v1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->location:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lk6a;->d(Landroid/widget/RelativeLayout$LayoutParams;IZLwoc;Lcom/transsion/magicvideo/subtitle/widgets/SubtitleVideoView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Y:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final S0()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->R0()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->T0()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->X0()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->U0()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->W0()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V0()V

    return-void
.end method

.method public final T0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget v1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textAlignment:I

    invoke-static {v1}, Lk6a;->e(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextAlignment(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Y:Landroid/widget/TextView;

    sget v0, Lcom/transsion/magicvideo/R$string;->subtitle_setting_hint:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final U0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Y:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget p0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textStyle:I

    invoke-static {p0}, Lk6a;->f(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public final V0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Y:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget v2, v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundColor:I

    invoke-static {v2}, Lk6a;->c(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget p0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundOpacity:I

    mul-int/lit16 p0, p0, 0xff

    div-int/lit8 p0, p0, 0x64

    invoke-static {v1, p0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public final W0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget v2, v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textColor:I

    invoke-static {v2}, Lk6a;->c(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final X0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Y:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget p0, p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textSize:I

    invoke-static {p0}, Lk6a;->g(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final Y0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/dbdata/beans/SubtitleSettingData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/SubtitleSettingData;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->N:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/SubtitleSettingData;->canDrag()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->N:Landroid/widget/Switch;

    new-instance v1, Le6a;

    invoke-direct {v1, p0}, Le6a;-><init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget v0, v0, Lcom/transsion/dbdata/beans/SubtitleSettingData;->translateY:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->O:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$string;->subtitle_customize_location_customized:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->O:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$array;->location_array:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget v2, v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->location:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->O:Landroid/widget/TextView;

    new-instance v1, Lf6a;

    invoke-direct {v1, p0}, Lf6a;-><init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->P:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$array;->text_alignment_array:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget v2, v2, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textAlignment:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->P:Landroid/widget/TextView;

    new-instance v1, Lg6a;

    invoke-direct {v1, p0}, Lg6a;-><init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Q:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    new-instance v1, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$c;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$c;-><init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    invoke-static {v0, p0, v1}, Lk6a;->k(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Landroid/content/Context;Lk6a$d;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->Q:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget v1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textSize:I

    mul-int/lit8 v1, v1, 0x32

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->setProgress(F)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->R:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    new-instance v1, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$d;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$d;-><init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    invoke-static {v0, p0, v1}, Lk6a;->k(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;Landroid/content/Context;Lk6a$d;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->R:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget v1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textStyle:I

    mul-int/lit8 v1, v1, 0x32

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->setProgress(F)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->S:Landroid/widget/SeekBar;

    new-instance v1, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$e;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$e;-><init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    iget-boolean v2, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsScreenLandscape:Z

    invoke-static {v0, v1, v2, p0}, Lk6a;->i(Landroid/widget/SeekBar;Lk6a$d;ZLandroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->U:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    new-instance v1, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$f;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$f;-><init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    invoke-static {v0, p0, v1}, Lk6a;->j(Lcom/transsion/playercommon/widgets/TranOsSeekbar;Landroid/content/Context;Lk6a$d;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->T:Landroid/widget/SeekBar;

    new-instance v1, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$g;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity$g;-><init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    iget-boolean v2, p0, Lcom/transsion/playercommon/activities/BaseActivity;->mIsScreenLandscape:Z

    invoke-static {v0, v1, v2, p0}, Lk6a;->i(Landroid/widget/SeekBar;Lk6a$d;ZLandroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->S:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget v1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->T:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget v1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->U:Lcom/transsion/playercommon/widgets/TranOsSeekbar;

    iget-object v1, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget v1, v1, Lcom/transsion/dbdata/beans/SubtitleSettingData;->textBackgroundOpacity:I

    rsub-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/widgets/TranOsSeekbar;->setProgress(F)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->S0()V

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
    .locals 2

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->V:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    invoke-static {v0}, Lf16;->c(Lcom/transsion/dbdata/beans/SubtitleSettingData;)V

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lc6a;

    invoke-direct {v1, p0}, Lc6a;-><init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Ld6a;

    invoke-direct {v1, p0}, Ld6a;-><init>(Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/magicvideo/R$id;->title_bar_back:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/magicvideo/R$layout;->activity_subtitle_setting:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->H0()V

    invoke-direct {p0}, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->G0()V

    const-string p0, "vd_cp_subtitle_pop_customize_pop"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/magicvideo/activities/SubtitleSettingActivity;->a0:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method
