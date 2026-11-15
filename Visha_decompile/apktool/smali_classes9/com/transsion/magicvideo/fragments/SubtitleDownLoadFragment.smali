.class public Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"


# static fields
.field public static final G:Ljava/lang/String;


# instance fields
.field public A:Lcom/transsion/widgets/BadgeView;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/LinearLayout;

.field public E:I

.field public final F:Ljava/util/Map;

.field public l:Landroid/widget/ImageView;

.field public m:Lcom/transsion/widgetslib/widget/SearchBar;

.field public n:Landroidx/appcompat/widget/AppCompatTextView;

.field public o:Landroidx/appcompat/widget/AppCompatTextView;

.field public p:Landroid/widget/ImageView;

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public s:Landroid/view/View;

.field public t:Landroidx/recyclerview/widget/RecyclerView;

.field public u:Lcom/transsion/magicvideo/adapter/SearchSubtitleAdapter;

.field public v:Ljava/lang/String;

.field public w:Z

.field public x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

.field public y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Download/VishaSubtitles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->F:Ljava/util/Map;

    return-void
.end method

.method private D0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->isAutoSearch:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    new-instance v1, Lq3a;

    invoke-direct {v1, p0}, Lq3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->A0()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v1, v1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->selectLanguage:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->selectLanguage:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    new-instance v3, Lb4a;

    invoke-direct {v3, p0}, Lb4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "media_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->queryVideoSubtitles(ILcom/transsion/playercommon/activities/BaseActivity;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "video_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->deleteSubtitleHistory:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    new-instance v2, Li4a;

    invoke-direct {v2, p0}, Li4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->subtitleHistoryLiveLiveData:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    new-instance v2, Lj4a;

    invoke-direct {v2, p0}, Lj4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->subtitleListNet:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    new-instance v2, Lk4a;

    invoke-direct {v2, p0}, Lk4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/BaseViewModel;->netState:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    new-instance v2, Ll4a;

    invoke-direct {v2, p0}, Ll4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static synthetic G0(Ljava/lang/Throwable;)V
    .locals 1

    const-string p0, "add subtitle error"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "SubtitleDownActivity"

    invoke-static {v0, p0}, Lcom/transsion/core/log/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic M0(Lcom/transsion/dbdata/beans/SubtitleHistory;Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;)V
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getSubId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/SubtitleHistory;->subId:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->setSubtitleDownState(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->setPath(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic O0(Lcom/transsion/dbdata/beans/SubtitleHistory;)Z
    .locals 0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/SubtitleHistory;->subId:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic P(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;ILjava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->F0(ILjava/lang/Boolean;)V

    return-void
.end method

.method private synthetic P0(Landroid/view/View;)V
    .locals 1

    const-string p1, "vd_cp_subtitle_pop_downloadsub_fill"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->B:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public static synthetic Q(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic Q0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->w0(I)V

    return-void
.end method

.method public static synthetic R(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->Z0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic R0(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->selectLanguage:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->hideSoftPanel(Landroid/widget/TextView;)V

    new-instance v1, Lfm9;

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-direct {v1, v2, p1, v3, v4}, Lfm9;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->A0()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$a;

    invoke-direct {v2, p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V

    invoke-virtual {v1, p1, v0, v2}, Lfm9;->i(Ljava/util/List;Lgw4;Lcom/transsion/widgets/popup/ISelectCallback;)V

    return-void
.end method

.method public static synthetic S(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->G0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lcom/transsion/dbdata/beans/SubtitleHistory;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->N0(Lcom/transsion/dbdata/beans/SubtitleHistory;)V

    return-void
.end method

.method public static synthetic U(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lcom/transsion/NetState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->J0(Lcom/transsion/NetState;)V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->T0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic W(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->Q0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic X(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->V0(Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic Y(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->W0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->b1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic Z0(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "vd_cp_subtitle_downlodasub_cl_pop_track"

    const-string v1, "track"

    invoke-static {v0, v1, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->R0(Landroid/view/View;)V

    return-void
.end method

.method public static a1()Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-direct {v1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public static synthetic b0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->Y0(Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->I0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d0(Lcom/transsion/dbdata/beans/SubtitleHistory;Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->M0(Lcom/transsion/dbdata/beans/SubtitleHistory;Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;)V

    return-void
.end method

.method public static synthetic e0(Lcom/transsion/dbdata/beans/SubtitleHistory;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->O0(Lcom/transsion/dbdata/beans/SubtitleHistory;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->P0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->U0(Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->K0()V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->L0(Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->l:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_search_lang_one:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->n:Landroidx/appcompat/widget/AppCompatTextView;

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_search_lang_two:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->o:Landroidx/appcompat/widget/AppCompatTextView;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_pull_down:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->p:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/magicvideo/R$id;->rv_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->t:Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/magicvideo/R$id;->search_bar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_video_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->B:Landroid/widget/TextView;

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_search_hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->D:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/magicvideo/R$id;->tv_fill_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->C:Landroid/widget/TextView;

    new-instance v1, Lm4a;

    invoke-direct {v1, p0}, Lm4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    sget v1, Lcom/transsion/magicvideo/R$string;->subtitle_search_hint:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/SearchBar;->setHint(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getLinearRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$color;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    const/16 v1, 0xea

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget v0, Lcom/transsion/magicvideo/R$id;->bv_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgets/BadgeView;

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->A:Lcom/transsion/widgets/BadgeView;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_history:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ln4a;

    invoke-direct {v0, p0}, Ln4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->l:Landroid/widget/ImageView;

    new-instance v0, Lo4a;

    invoke-direct {v0, p0}, Lo4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->p:Landroid/widget/ImageView;

    new-instance v0, Lp4a;

    invoke-direct {v0, p0}, Lp4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/View;->setTextDirection(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAutofill(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAutofill(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lr3a;

    invoke-direct {v0, p0}, Lr3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->X0(Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->S0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lcom/transsion/dbdata/beans/SubtitleHistory;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->H0(Lcom/transsion/dbdata/beans/SubtitleHistory;)V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .locals 2

    const-string p1, "vd_cp_subtitle_downloadsub_historycl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->baseActivity()Lcom/transsion/playercommon/activities/BaseActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$id;->fragment_content:I

    invoke-static {}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->T0()Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-static {}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->T0()Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->A:Lcom/transsion/widgets/BadgeView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;ILjava/lang/String;Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->E0(ILjava/lang/String;Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    return-object p0
.end method

.method public static bridge synthetic o0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Lcom/transsion/magicvideo/adapter/SearchSubtitleAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->u:Lcom/transsion/magicvideo/adapter/SearchSubtitleAdapter;

    return-object p0
.end method

.method public static bridge synthetic p0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Lcom/transsion/widgets/BadgeView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->A:Lcom/transsion/widgets/BadgeView;

    return-object p0
.end method

.method public static bridge synthetic q0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    return-object p0
.end method

.method public static bridge synthetic r0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->z:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic s0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;)Lcom/transsion/dbdata/beans/SubtitleHistory;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x0(Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;)Lcom/transsion/dbdata/beans/SubtitleHistory;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic t0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lgu8;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->z0(Lgu8;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private u0(ILjava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lf4a;

    invoke-direct {v1, p0, p1, p2}, Lf4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p2

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    new-instance v0, Lg4a;

    invoke-direct {v0, p0, p1}, Lg4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;I)V

    new-instance p0, Lh4a;

    invoke-direct {p0}, Lh4a;-><init>()V

    invoke-virtual {p2, v0, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method private w0(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "track_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->w:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public final A0()Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$array;->language_entries:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$array;->language_values:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/transsion/magicvideo/R$array;->standard_language_values:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    new-instance v4, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;

    aget-object v5, v1, v3

    aget-object v6, v2, v3

    aget-object v7, p0, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Ls3a;

    invoke-direct {v0}, Ls3a;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lt3a;

    invoke-direct {v1}, Lt3a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final B0()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p0, p0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->selectLanguage:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;

    invoke-static {p0}, Lfc7;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->getLanguageStandardCode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final C0(ILandroid/view/View;)Landroid/view/View;
    .locals 0

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Landroid/view/ViewStub;

    if-eqz p1, :cond_2

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public final synthetic E0(ILjava/lang/String;Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Ljava/lang/Boolean;
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string p3, "media_id"

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    new-instance p3, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-direct {p3}, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;-><init>()V

    iput p1, p3, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->track:I

    iput-object p2, p3, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ltpb;->t(ILcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic F0(ILjava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->w0(I)V

    :cond_0
    return-void
.end method

.method public final synthetic H0(Lcom/transsion/dbdata/beans/SubtitleHistory;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->F:Ljava/util/Map;

    iget-object v0, p1, Lcom/transsion/dbdata/beans/SubtitleHistory;->subId:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic I0(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->F:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lu3a;

    invoke-direct {v0}, Lu3a;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lv3a;

    invoke-direct {v0, p0}, Lv3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic J0(Lcom/transsion/NetState;)V
    .locals 1

    sget-object v0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$e;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p1, p1, Lcom/transsion/BaseViewModel;->netException:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->g1(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->f1()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p1, p1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->subtitleListNet:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->e1(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->h1()V

    :goto_0
    return-void
.end method

.method public final synthetic K0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->showSoftPanel(Landroid/widget/TextView;)V

    return-void
.end method

.method public final synthetic L0(Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->d1(Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->isAutoSearch:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->v:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->B0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->c1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final synthetic N0(Lcom/transsion/dbdata/beans/SubtitleHistory;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSubtitle observe subtitleHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/SubtitleHistory;->subId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleDownActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->F:Ljava/util/Map;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/SubtitleHistory;->subId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->u:Lcom/transsion/magicvideo/adapter/SearchSubtitleAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->u:Lcom/transsion/magicvideo/adapter/SearchSubtitleAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, La4a;

    invoke-direct {v1, p1}, La4a;-><init>(Lcom/transsion/dbdata/beans/SubtitleHistory;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->b1(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final synthetic S0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->hideSoftPanel(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->v:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "video_name"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->v:Ljava/lang/String;

    const-string v0, "name"

    const-string v1, "vd_cp_subtitle_downladsub_keyword"

    const-string v2, "word"

    invoke-static {v1, v2, p3, v0, p2}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->B0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->c1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->D:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getDeleteAllIconView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic T0(Ljava/util/List;)V
    .locals 3

    const-string v0, "result"

    const-string v1, "vd_cp_subtitle_downloadsub_result"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->v0(Ljava/util/List;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->e1(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->f1()V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final synthetic U0(Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    sget p2, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez p2, :cond_0

    sget p0, Lcom/transsion/magicvideo/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_0
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p3

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_down_success:I

    const/4 v1, 0x1

    if-ne p3, v0, :cond_2

    const-string p1, "vd_cp_subtitle_downloadsub_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-static {}, Lpp3;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    const-string p3, "tracks_switch"

    const/4 p4, 0x0

    invoke-static {p1, p3, p4}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->i1(Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->w:Z

    iget p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->E:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->u0(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const-string p3, "vd_cp_subtitle_downloadsub_downloadcl"

    invoke-static {p3}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->setSubtitleDownState(I)V

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->u:Lcom/transsion/magicvideo/adapter/SearchSubtitleAdapter;

    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;

    new-instance p3, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;

    invoke-direct {p3, p0, p1, p4}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Ljava/util/List;I)V

    invoke-virtual {p0, p2, p3}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y0(Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;Lsz2;)V

    return-void
.end method

.method public final synthetic V0(Ljava/util/List;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getSubtitleState()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    const-string p2, "vd_cp_subtitle_downloadsub_cl"

    invoke-static {p2}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-static {}, Lpp3;->r()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    const-string p3, "tracks_switch"

    const/4 p4, 0x0

    invoke-static {p2, p3, p4}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->i1(Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->w:Z

    iget p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->E:I

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->u0(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic W0(Landroid/view/View;)V
    .locals 1

    const-string p1, "vd_cp_subtitle_downloadsub_retry"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->v:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->B0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->c1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic X0(Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "vd_cp_subtitle_downlodasub_cl_pop_track"

    const-string v0, "track"

    invoke-static {p3, v0, p2}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->w:Z

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->u0(ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic Y0(Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v0, "vd_cp_subtitle_downlodasub_cl_pop_track"

    const-string v1, "track"

    invoke-static {v0, v1, p3}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->w:Z

    const/4 p2, 0x0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->u0(ILjava/lang/String;)V

    return-void
.end method

.method public final b1(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    new-instance v1, Lw3a;

    invoke-direct {v1, p0, p1}, Lw3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->query(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d1(Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;)V
    .locals 3

    const/16 v0, 0x8

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->n:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->o:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->isGroupLanguage()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->n:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->n:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->getSubLanguages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->getLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->o:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->o:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->getSubLanguages()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->getLanguageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->n:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->n:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;->getLanguageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->o:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final e1(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->s:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->q:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->r:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->t:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->t:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/transsion/magicvideo/adapter/SearchSubtitleAdapter;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/transsion/magicvideo/adapter/SearchSubtitleAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->u:Lcom/transsion/magicvideo/adapter/SearchSubtitleAdapter;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/adapter/SearchSubtitleAdapter;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->t:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->u:Lcom/transsion/magicvideo/adapter/SearchSubtitleAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->t:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$b;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$b;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->u:Lcom/transsion/magicvideo/adapter/SearchSubtitleAdapter;

    new-instance v1, Lx3a;

    invoke-direct {v1, p0, p1}, Lx3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->u:Lcom/transsion/magicvideo/adapter/SearchSubtitleAdapter;

    new-instance v1, Ly3a;

    invoke-direct {v1, p0, p1}, Ly3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public final f1()V
    .locals 2

    sget v0, Lcom/transsion/magicvideo/R$id;->empty_layout:I

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->q:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->C0(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->q:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->s:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->r:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->t:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final g1(Ljava/lang/Throwable;)V
    .locals 6

    instance-of v0, p1, Lretrofit2/HttpException;

    const/4 v1, 0x0

    const/16 v2, 0x1f7

    if-eqz v0, :cond_0

    move-object v3, p1

    check-cast v3, Lretrofit2/HttpException;

    invoke-virtual {v3}, Lretrofit2/HttpException;->code()I

    move-result v3

    if-ne v3, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    sget v4, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showErrorLayout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/transsion/playercommon/core/MainApp;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubtitleDownActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->f1()V

    return-void

    :cond_1
    sget v3, Lcom/transsion/magicvideo/R$id;->error_layout:I

    iget-object v4, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->r:Landroid/view/View;

    invoke-virtual {p0, v3, v4}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->C0(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->r:Landroid/view/View;

    if-nez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->s:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->q:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->t:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->r:Landroid/view/View;

    sget v4, Lcom/transsion/magicvideo/R$id;->tv_error_message:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "result"

    const-string v5, "vd_cp_subtitle_downloadsub_result"

    if-eqz v0, :cond_6

    check-cast p1, Lretrofit2/HttpException;

    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result p1

    if-ne p1, v2, :cond_5

    sget p1, Lcom/transsion/magicvideo/R$string;->open_subtitle_service_error:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v5, v4, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v5, v4, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget p1, Lcom/transsion/magicvideo/R$string;->not_available_network:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_7

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v5, v4, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget p1, Lcom/transsion/magicvideo/R$string;->not_available_network:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nVersion:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nErrorMessage:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "errorMsg"

    invoke-static {v5, v4, v0, v2, p1}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    sget p1, Lcom/transsion/magicvideo/R$string;->not_available_network:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->r:Landroid/view/View;

    new-instance v0, Lz3a;

    invoke-direct {v0, p0}, Lz3a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final h1()V
    .locals 2

    sget v0, Lcom/transsion/magicvideo/R$id;->load_layout:I

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->s:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->C0(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->q:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->r:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->t:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final i1(Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->firstCurData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object v1, v1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->secondCurData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/magicvideo/R$string;->track_one:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/magicvideo/R$string;->null_subtitle:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/magicvideo/R$string;->track_two:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/magicvideo/R$string;->null_subtitle:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v3, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    invoke-direct {v1, v3}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/transsion/magicvideo/R$string;->select_subtitle_track:I

    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/dialog/d$a;->d(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    new-instance v3, Lc4a;

    invoke-direct {v3, p0, p1}, Lc4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;)V

    invoke-virtual {v1, v0, v3}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    new-instance v1, Ld4a;

    invoke-direct {v1, p0, p1}, Ld4a;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;)V

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/dialog/d$a;->p(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p1, Lcom/transsion/magicvideo/R$string;->cancel:I

    new-instance v0, Le4a;

    invoke-direct {v0}, Le4a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    const-string p0, "vd_cp_subtitle_downloadsub_cl_pop"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    iput-object p3, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    sget p0, Lcom/transsion/magicvideo/R$layout;->fragment_subtitle_download:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->onHiddenChanged(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m:Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Lbg5;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->showSoftPanel(Landroid/widget/TextView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->x:Lcom/transsion/magicvideo/activities/SubtitleManagerActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->z:Ljava/lang/String;

    :cond_0
    const-class p2, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->getViewModelByActivity(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p2

    check-cast p2, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iput-object p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->y:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "tracks_value"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->E:I

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->initView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->D0()V

    return-void
.end method

.method public final v0(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->F:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getSubId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/SubtitleHistory;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/transsion/dbdata/beans/SubtitleHistory;->subPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/transsion/dbdata/beans/SubtitleHistory;->subPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/transsion/dbdata/beans/SubtitleHistory;->subPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->setPath(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->setSubtitleDownState(I)V

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->setSubtitleDownState(I)V

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->setPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final x0(Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;)Lcom/transsion/dbdata/beans/SubtitleHistory;
    .locals 2

    new-instance p0, Lcom/transsion/dbdata/beans/SubtitleHistory;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/SubtitleHistory;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getSubId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/SubtitleHistory;->subId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getSubFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/SubtitleHistory;->subName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/SubtitleHistory;->subPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getLanguageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/SubtitleHistory;->subLanguage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/beans/SubtitleHistory;->subLanguageId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getSubSize()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/dbdata/beans/SubtitleHistory;->subSize:J

    return-object p0
.end method

.method public final y0(Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;Lsz2;)V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager;->getInstance()Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleServiceManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleService;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;->getSubDownloadLink()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/transsion/playercommon/vishaapis/opensubtitle/SubTitleService;->downloadFile(Ljava/lang/String;)Ljq0;

    move-result-object p1

    new-instance v0, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;

    invoke-direct {v0, p0, p2}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;-><init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lsz2;)V

    invoke-interface {p1, v0}, Ljq0;->enqueue(Ltq0;)V

    return-void
.end method

.method public final z0(Lgu8;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lgu8;->d()Lokhttp3/Headers;

    move-result-object p0

    const-string p1, "Content-Disposition"

    invoke-virtual {p0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, ""

    if-nez p1, :cond_0

    const-string p1, "attachment;filename="

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string p1, "filename*=utf-8"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string p1, "; "

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    aget-object p0, p0, v1

    const-string p1, "filename="

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method
