.class public Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$d;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoPlayListAddBucketView"


# instance fields
.field public b:Landroid/content/Context;

.field public c:Ljava/util/List;

.field public d:Ljava/util/ArrayList;

.field public e:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

.field public f:[Lcom/transsion/dbdata/beans/media/MediaItem;

.field public g:Landroid/widget/LinearLayout;

.field public h:Landroidx/recyclerview/widget/RecyclerView;

.field public i:Lcom/transsion/widgetslib/dialog/d;

.field public j:I

.field public k:Z

.field public l:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Ljava/util/List;IZ[Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/VideoPlayList;",
            ">;IZ[",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->i:Lcom/transsion/widgetslib/dialog/d;

    iput p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->j:I

    iput-object p5, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->f:[Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->c:Ljava/util/List;

    iput-boolean p4, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->k:Z

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->s(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic A(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoPlayListAddBucketView"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic D(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public static synthetic a(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->D(Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->x(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->A(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->C(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;Lcom/transsion/dbdata/database/VideoPlayList;[Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->w(Lcom/transsion/dbdata/database/VideoPlayList;[Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->v(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->B(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->y(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->u(Ljava/lang/String;Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->z(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->j:I

    return p0
.end method

.method public static bridge synthetic m(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;Lcom/transsion/dbdata/database/VideoPlayList;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->r(Lcom/transsion/dbdata/database/VideoPlayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->setButtonEnable(Z)V

    return-void
.end method

.method private r(Lcom/transsion/dbdata/database/VideoPlayList;)Ljava/lang/String;
    .locals 2

    iget v0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->mCategory:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object p0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->b:Landroid/content/Context;

    sget p1, Lcom/transsion/magicvideo/R$string;->favorites:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->b:Landroid/content/Context;

    sget p1, Lcom/transsion/magicvideo/R$string;->recent_add:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private s(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$layout;->add_playlist_bucket_list:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$id;->tv_create_new_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->g:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$a;

    invoke-direct {v2, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$a;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/magicvideo/R$id;->rv_video_play_filelist:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    invoke-direct {v0, p1}, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->e:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-direct {v1, p1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->e:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->h:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->c:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->c:Ljava/util/List;

    :cond_0
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->b:Landroid/content/Context;

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->l:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->g()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->b:Landroid/content/Context;

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    new-instance v1, Lxtb;

    invoke-direct {v1, p0}, Lxtb;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->E()V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->e:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method private setButtonEnable(Z)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->i:Lcom/transsion/widgetslib/dialog/d;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public static synthetic u(Ljava/lang/String;Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;)Ljava/lang/Long;
    .locals 0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    invoke-virtual {p1, p0}, Ltpb;->f(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltpb;->u(Z)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private synthetic z(Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->F(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final synthetic B(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->i:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/magicvideo/R$string;->empty_text:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    return-void
.end method

.method public final synthetic C(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->i:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->b:Landroid/content/Context;

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lmc7;->i(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->b:Landroid/content/Context;

    check-cast v1, Lxk5;

    invoke-interface {v1}, Lxk5;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lcub;

    invoke-direct {v1}, Lcub;-><init>()V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Ldub;

    invoke-direct {v1, p0}, Ldub;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;)V

    new-instance p0, Leub;

    invoke-direct {p0}, Leub;-><init>()V

    invoke-virtual {v0, v1, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final F(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->e:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method

.method public changeStyle(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->e:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;->d(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->e:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->b:Landroid/content/Context;

    check-cast v0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lfub;

    invoke-direct {v1, p1}, Lfub;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lgub;

    invoke-direct {v1, p0, p1}, Lgub;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->i:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->i:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/d;->g(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->l:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->g()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->b:Landroid/content/Context;

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->e:Lcom/transsion/magicvideo/adapter/VideoPlayListBucketAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->p(Lcom/transsion/dbdata/database/VideoPlayList;)V

    return-void
.end method

.method public final p(Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->b:Landroid/content/Context;

    check-cast v0, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->f:[Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->bindToLifecycle()Lyk5;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v1

    new-instance v2, Lbub;

    invoke-direct {v2, p0, p1}, Lbub;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;Lcom/transsion/dbdata/database/VideoPlayList;)V

    invoke-virtual {v1, v2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object v1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v1

    new-instance v2, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;

    invoke-direct {v2, p0, p1, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;Lcom/transsion/dbdata/database/VideoPlayList;Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;)V

    invoke-virtual {v1, v2}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/database/VideoPlayList;

    iget-object v0, v0, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/transsion/magicvideo/R$string;->playlists_has:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public setListener(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$d;)V
    .locals 0

    return-void
.end method

.method public showAddEditDialog()V
    .locals 6

    new-instance v0, Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/magicvideo/R$string;->new_playlist:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->A(I)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->Save:I

    new-instance v2, Lytb;

    invoke-direct {v2, p0}, Lytb;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->s(ILcom/transsion/widgetslib/dialog/InputDialog$g;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$string;->cancel:I

    new-instance v2, Lztb;

    invoke-direct {v2, p0}, Lztb;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->x(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->z(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->r(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/magicvideo/R$string;->search_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laub;

    invoke-direct {v3}, Laub;-><init>()V

    const-string v4, ""

    const/16 v5, 0x3d

    invoke-virtual {v0, v4, v2, v5, v3}, Lcom/transsion/widgetslib/dialog/InputDialog;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/transsion/widgetslib/dialog/InputDialog$f;)Lcom/transsion/widgetslib/dialog/InputDialog;

    new-instance v2, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$c;

    invoke-direct {v2, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$c;-><init>(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;)V

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->setTextWatcher(Landroid/text/TextWatcher;)V

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->m()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->i:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/dialog/d;->show()V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->w(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-direct {p0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->setButtonEnable(Z)V

    return-void
.end method

.method public final t(ILjava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z
    .locals 7

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    :try_start_0
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    iget-object p2, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ltpb;->T(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ltpb;->j(ZLcom/transsion/dbdata/beans/media/MediaItem;)Z

    return p0

    :cond_1
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object p4

    iget v1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {p4, p1, v1, p3, v0}, Ltpb;->A(IILcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object p4

    if-eqz p4, :cond_2

    return v0

    :cond_2
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v1

    int-to-long v3, p1

    const/4 v6, 0x0

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Ltpb;->Q(Ljava/lang/String;JLcom/transsion/dbdata/beans/media/MediaItem;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public final synthetic v(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new Playlist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayListAddBucketView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/VideoPlayList;-><init>()V

    iput-object p1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    iput p1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->p(Lcom/transsion/dbdata/database/VideoPlayList;)V

    return-void
.end method

.method public final synthetic w(Lcom/transsion/dbdata/database/VideoPlayList;[Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Boolean;
    .locals 10

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->f:[Lcom/transsion/dbdata/beans/media/MediaItem;

    array-length v0, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    array-length v0, p2

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v6, p2, v4

    iget v7, p1, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    iget-object v8, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    iget v9, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    if-ne v9, v1, :cond_0

    move v9, v3

    goto :goto_1

    :cond_0
    move v9, v2

    :goto_1
    invoke-virtual {p0, v7, v8, v6, v9}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->t(ILjava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result v6

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    iget-object v4, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    aget-object p2, p2, v2

    iget p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    if-ne p1, v1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0, v0, v4, p2, v2}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->t(ILjava/lang/String;Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result v5

    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic x(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playLists:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayListAddBucketView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->E()V

    return-void
.end method
