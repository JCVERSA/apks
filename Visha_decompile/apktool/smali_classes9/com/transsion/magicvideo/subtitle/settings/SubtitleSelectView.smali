.class public Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;
    }
.end annotation


# static fields
.field public static final UNSELECTED_ITEM_TAG:Ljava/lang/String; = "UNSELECTED_ITEM_TAG"


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

.field public d:Landroidx/lifecycle/MutableLiveData;

.field public e:Landroid/view/View;

.field public f:Landroidx/recyclerview/widget/RecyclerView;

.field public g:Ljava/util/ArrayList;

.field public h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

.field public i:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;

.field public j:I

.field public k:Landroid/widget/ImageView;

.field public l:Lcom/transsion/utils/CustomLinearLayoutManager;

.field public final m:Landroidx/lifecycle/Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->g:Ljava/util/ArrayList;

    const/4 p2, -0x1

    .line 6
    iput p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->j:I

    .line 7
    new-instance p2, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$1;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->m:Landroidx/lifecycle/Observer;

    .line 8
    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->b:Landroid/content/Context;

    .line 9
    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->n()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->q(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Lcom/transsion/utils/CustomLinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->l:Lcom/transsion/utils/CustomLinearLayoutManager;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->j:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->c:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->k(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->l()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->m()V

    return-void
.end method


# virtual methods
.method public final k(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->i:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;

    if-eqz p1, :cond_3

    iget p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->j:I

    invoke-interface {p1, p2}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;->a(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget-boolean p2, p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->showArrow:Z

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->i:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->j:I

    invoke-interface {p1, p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;->c(I)V

    :cond_1
    return-void

    :cond_2
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

    iget-object p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->i:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->j:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lf16;->f(I)V

    iget-object p2, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->i:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;

    iget v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->j:I

    invoke-interface {p2, p1, v0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;->d(Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;I)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    invoke-virtual {p1, p3}, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;->r(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->k:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public final l()V
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;-><init>()V

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$string;->local_subtitle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    const-string v1, "UNSELECTED_ITEM_TAG"

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;->showArrow:Z

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final m()V
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;-><init>()V

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$string;->subtitle_unselected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->path:Ljava/lang/String;

    const-string v1, "UNSELECTED_ITEM_TAG"

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaFileInfo;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$layout;->subtitle_select_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->e:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_title_bar_back:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->k:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/magicvideo/R$id;->ll_local_subtitle:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ly5a;

    invoke-direct {v1, p0}, Ly5a;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->o()V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->p()V

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->e:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->rv_subtitle_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;->d(Z)V

    new-instance v0, Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->l:Lcom/transsion/utils/CustomLinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    new-instance v1, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$a;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$a;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->h:Lcom/transsion/magicvideo/adapter/SubtitleItemAdapter;

    new-instance v1, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$b;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$b;-><init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->c:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->getSystemSubtitlesLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->m:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final p()V
    .locals 4

    iget v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->b:Landroid/content/Context;

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->c:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initViewModel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubtitleSelectView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->j:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->c:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->getFirstTrackData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->c:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->getSecondTrackData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->d:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->b:Landroid/content/Context;

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    iget-object p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->m:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final synthetic q(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->i:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->j:I

    invoke-interface {p1, p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;->c(I)V

    :cond_0
    return-void
.end method

.method public setCurrentPath(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSubtitleOperateListener(Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->i:Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView$c;

    return-void
.end method

.method public setTrackValue(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->j:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleSelectView;->p()V

    return-void
.end method
