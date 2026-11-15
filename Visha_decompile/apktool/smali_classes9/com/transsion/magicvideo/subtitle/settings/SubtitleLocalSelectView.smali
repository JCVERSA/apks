.class public Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroidx/recyclerview/widget/RecyclerView;

.field public g:Ljava/util/ArrayList;

.field public h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

.field public i:Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;

.field public j:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;

.field public k:I

.field public l:Landroid/view/View;

.field public m:Landroid/widget/ImageView;

.field public n:Lcom/transsion/utils/CustomLinearLayoutManager;

.field public o:Ljava/lang/String;

.field public p:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

.field public q:Ljava/util/ArrayList;

.field public r:Z

.field public s:Lcom/transsion/playercommon/utils/storage/MountPointManager;

.field public t:I

.field public u:I

.field public v:Z

.field public w:Ljava/util/ArrayList;

.field public final x:Landroidx/lifecycle/Observer;

.field public y:Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->g:Ljava/util/ArrayList;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->q:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 7
    iput p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->t:I

    .line 8
    iput p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->u:I

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->w:Ljava/util/ArrayList;

    .line 10
    new-instance p2, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$2;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->x:Landroidx/lifecycle/Observer;

    .line 11
    new-instance p2, Lb5a;

    invoke-direct {p2, p0}, Lb5a;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->y:Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;

    .line 12
    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->b:Landroid/content/Context;

    .line 13
    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->u()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->A(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->B(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;Ljava/lang/String;Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->y(Ljava/lang/String;Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->C(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->D(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->z(ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getSubtitleSwitchModeItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx5a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lx5a;

    iget-boolean v2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->v:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/magicvideo/R$string;->show_as_file:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Lx5a;-><init>(ZLjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lx5a;

    iget-boolean v2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->v:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/transsion/magicvideo/R$string;->show_all_subtitles:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0, v3}, Lx5a;-><init>(ZLjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->v:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Lcom/transsion/utils/CustomLinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->n:Lcom/transsion/utils/CustomLinearLayoutManager;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->k:I

    return p0
.end method

.method public static bridge synthetic m(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->c:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->v:Z

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->t(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->E(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->F()V

    return-void
.end method


# virtual methods
.method public final synthetic A(Landroid/view/View;)V
    .locals 8

    const-string p1, "vd_cp_subtitlepop_select_model"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->getSubtitleSwitchModeItems()Ljava/util/List;

    move-result-object p1

    new-instance v7, Lfm9;

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->m:Landroid/widget/ImageView;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v3, 0xa

    const/4 v4, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lfm9;-><init>(Landroid/content/Context;Landroid/view/View;IZII)V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->v:Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx5a;

    new-instance v1, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$a;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$a;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)V

    invoke-virtual {v7, p1, v0, v1}, Lfm9;->i(Ljava/util/List;Lgw4;Lcom/transsion/widgets/popup/ISelectCallback;)V

    return-void
.end method

.method public final synthetic B(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/data/FileInfo;

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileInfo;->getFile()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->r(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->p:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->refreshTab(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "vd_cp_subtitle_pop_addlocalsub_cl"

    invoke-static {p1}, Lhb0;->markDirect(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->c:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p1, p1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->firstCurData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->c:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p1, p1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->secondCurData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    sget p1, Lcom/transsion/magicvideo/R$id;->title_bar_back:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-direct {p3, p2}, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->j:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;

    iget v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->k:I

    invoke-interface {p2, p3, v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;->d(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;I)V

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->p:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->getItemViewCount()I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->t:I

    :cond_4
    return-void
.end method

.method public final synthetic C(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->r(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->p:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->getItemViewCount()I

    move-result v0

    :cond_0
    iget p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->t:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    const-string v1, "vd_cp_setting_sub_path_back"

    const-string v2, "tier"

    invoke-static {v1, v2, p1}, Lp06;->n0(Ljava/lang/String;Ljava/lang/String;I)V

    iput v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->t:I

    return-void
.end method

.method public final synthetic D(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->j:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;->b()V

    :cond_0
    return-void
.end method

.method public final E(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, p1, p2}, Lcc0;->c(Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;)V

    return-void
.end method

.method public final F()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->I()V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->G()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->H()V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->K()V

    return-void
.end method

.method public final G()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final H()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->i:Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final I()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->i:Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->i:Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->p:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->p:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->p:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public final J(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->u:I

    const-string v1, "/storage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->r:Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->q:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->w:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->r:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->f()Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->g()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;

    new-instance v1, Lcom/transsion/playercommon/data/FileInfo;

    iget-object v2, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/transsion/playercommon/data/FileInfo;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/playercommon/data/FileInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/transsion/playercommon/data/FileInfo;->setIsMountPoint(Z)V

    iget v0, v0, Lcom/transsion/playercommon/utils/storage/MountPointManager$b;->c:I

    iput v0, v1, Lcom/transsion/playercommon/data/FileInfo;->srcId:I

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_5

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ln7c;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, ".sub"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    const-string v6, ".idx"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->s(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->u:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->u:I

    iget-object v4, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->w:Ljava/util/ArrayList;

    new-instance v5, Lcom/transsion/playercommon/data/FileInfo;

    invoke-direct {v5, v2}, Lcom/transsion/playercommon/data/FileInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->u:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->u:I

    iget-object v4, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->w:Ljava/util/ArrayList;

    new-instance v5, Lcom/transsion/playercommon/data/FileInfo;

    invoke-direct {v5, v2}, Lcom/transsion/playercommon/data/FileInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->w:Ljava/util/ArrayList;

    new-instance v5, Lcom/transsion/playercommon/data/FileInfo;

    invoke-direct {v5, v2}, Lcom/transsion/playercommon/data/FileInfo;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v3
.end method

.method public K()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->e:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/magicvideo/R$id;->file_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->e:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->e:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->v:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->e:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->f:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->e:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_download:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc5a;

    invoke-direct {v1, p0}, Lc5a;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->c:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->getSystemSubtitlesLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->x:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final r(Ljava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPathItems "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleSelectView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->b:Landroid/content/Context;

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lz4a;

    invoke-direct {v1, p0, p1}, Lz4a;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, La5a;

    invoke-direct {v0, p0, p2}, La5a;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;Z)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final s(Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".sub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method public setCurrentPath(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->r(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->p:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->refreshTab(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->p:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    invoke-virtual {p1}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->getItemViewCount()I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->t:I

    return-void
.end method

.method public setSubtitleOperateListener(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->j:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;

    return-void
.end method

.method public setTrackValue(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->k:I

    return-void
.end method

.method public final t(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "position:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VishaTranPlaye"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->j:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->k:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lf16;->f(I)V

    iget-object p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->j:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;

    iget v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->k:I

    invoke-interface {p2, p1, v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;->d(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    invoke-virtual {p1, p3}, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;->r(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->l:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public final u()V
    .locals 4

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "select_subtitle_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->v:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/transsion/magicvideo/R$layout;->subtitle_local_select_layout:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->d:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->title_bar_back:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->l:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_switch_subtitle:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->m:Landroid/widget/ImageView;

    new-instance v2, Ld5a;

    invoke-direct {v2, p0}, Ld5a;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->d:Landroid/view/View;

    sget v2, Lcom/transsion/magicvideo/R$id;->bv_path_navigation:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->p:Lcom/transsion/playercommon/widgets/BreadcrumbsView;

    iget-object v2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->y:Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/widgets/BreadcrumbsView;->addItemClickListener(Lcom/transsion/playercommon/widgets/BreadcrumbsView$a;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->d:Landroid/view/View;

    sget v2, Lcom/transsion/magicvideo/R$id;->rv_subtitle_list:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->f()Lcom/transsion/playercommon/utils/storage/MountPointManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->s:Lcom/transsion/playercommon/utils/storage/MountPointManager;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/playercommon/utils/storage/MountPointManager;->k(Landroid/content/Context;)V

    new-instance v0, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    iget-object v3, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;->g(Z)V

    new-instance v0, Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;

    invoke-direct {v0}, Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->i:Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->n:Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->v()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->w()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->x()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->F()V

    return-void
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    new-instance v1, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$b;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$b;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    new-instance v1, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$c;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView$c;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->i:Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;

    new-instance v1, Le5a;

    invoke-direct {v1, p0}, Le5a;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public final x()V
    .locals 4

    const-string v0, "SubtitleSelectView"

    const-string v1, "initViewModel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->b:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->c:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->getSystemSubtitlesLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->b:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object v2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->x:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->c:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->b:Landroid/content/Context;

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->querySystemSubtitles(Lcom/transsion/playercommon/activities/BaseActivity;)V

    return-void
.end method

.method public final synthetic y(Ljava/lang/String;Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->J(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic z(ZLjava/lang/Boolean;)V
    .locals 1

    iget-object p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->w:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->q:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->i:Lcom/transsion/magicvideo/adapter/SubtitleListAdapter;

    invoke-virtual {p0, v0, p2}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->E(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->I()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->K()V

    const-string p2, "num"

    if-eqz p1, :cond_0

    const-string p1, "vd_cp_setting_sub_path_show_p"

    iget v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->u:I

    invoke-static {p1, p2, v0}, Lp06;->n0(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "vd_cp_subtitle_pop_addlocalsub_show"

    invoke-static {p1, p2, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
