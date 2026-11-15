.class public Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/transsion/magicvideo/player/VideoPlayManager$d;


# instance fields
.field public A:I

.field public B:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

.field public C:Ljava/lang/String;

.field public D:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field public E:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

.field public F:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

.field public G:Z

.field public H:Z

.field public I:J

.field public final J:Lcom/transsion/magicvideo/player/VideoPlayManager$d;

.field public final K:Lze7;

.field public final L:Lbf7;

.field public b:Lcom/transsion/magicvideo/player/VideoPlayManager;

.field public c:Lcom/transsion/dbdata/beans/media/PlayListData;

.field public d:Z

.field public e:Landroid/view/View;

.field public f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

.field public g:Lcom/transsion/playercommon/adapter/PlayListAdapter;

.field public h:Lcom/transsion/widgets/RtlViewPager;

.field public i:Lcom/transsion/playercommon/adapter/RtlViewPageAdapter;

.field public j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Landroidx/recyclerview/widget/RecyclerView;

.field public n:Z

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public u:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/TextView;

.field public x:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public y:Lcom/transsion/widgetslib/widget/OSIconTextView;

.field public z:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->n:Z

    .line 6
    const-string p3, "unknown"

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->C:Ljava/lang/String;

    .line 7
    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->G:Z

    .line 8
    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->H:Z

    .line 9
    new-instance p2, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$a;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$a;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->J:Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    .line 10
    new-instance p2, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$c;

    invoke-direct {p2, p0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$c;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->K:Lze7;

    .line 11
    new-instance p2, Lowb;

    invoke-direct {p2, p0}, Lowb;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->L:Lbf7;

    .line 12
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->u(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Lo7a;Lo7a;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->z(Lo7a;Lo7a;I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->y(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->G(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->F(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Lq7a;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->A(Lq7a;I)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->C(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->D(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->H(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->x(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->E(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->B(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->s(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->C:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->G:Z

    return p0
.end method

.method public static bridge synthetic o(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->I:J

    return-wide v0
.end method

.method public static bridge synthetic p(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->H:Z

    return-void
.end method

.method public static bridge synthetic q(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->I:J

    return-void
.end method

.method public static bridge synthetic r(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;ZLjava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->t(ZLjava/util/ArrayList;)V

    return-void
.end method

.method private setPlaylistRepeatImg(I)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-nez p0, :cond_0

    const-string p0, "PlayListDialog"

    const-string p1, "ivLoop is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget p1, Lcom/transsion/magicvideo/R$string;->os_play:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    sget p1, Lcom/transsion/magicvideo/R$string;->os_single_loop:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    sget p1, Lcom/transsion/magicvideo/R$string;->os_List_loop:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    sget p1, Lcom/transsion/magicvideo/R$string;->os_shuffle:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic x(Lcom/transsion/dbdata/beans/media/MediaItem;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic A(Lq7a;I)V
    .locals 0

    invoke-virtual {p1}, Lq7a;->a()V

    invoke-virtual {p0, p2}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->I(I)V

    return-void
.end method

.method public final synthetic B(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic C(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->K()V

    return-void
.end method

.method public final synthetic D(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->s(Landroid/view/View;)V

    return-void
.end method

.method public final synthetic E(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/transsion/magicvideo/R$id;->remove:I

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->I(I)V

    :cond_0
    return-void
.end method

.method public final synthetic F(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    iget-boolean p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->G:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->G:Z

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->C:Ljava/lang/String;

    invoke-static {p2}, Lj06;->e(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p1, "#1D000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "#00ffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->G:Z

    if-eqz p1, :cond_4

    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->G:Z

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->H:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    if-eqz p1, :cond_4

    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->H:Z

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/beans/media/PlayListData;->updatePlayListOrder(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/transsion/magicvideo/model/PlayListDataNew;->getInstance()Lcom/transsion/magicvideo/model/PlayListDataNew;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/magicvideo/model/PlayListDataNew;->updatePlayList(Ljava/util/List;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final synthetic G(Ljava/lang/Integer;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->t(ZLjava/util/ArrayList;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->s:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "\uff08%d\uff09"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final synthetic H(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result p1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v1(IZZ)V

    return-void
.end method

.method public final I(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayListData;->clearCurrentPlayList()V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->i1(Z)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->z:Landroidx/appcompat/app/AppCompatActivity;

    instance-of v1, p1, Lcom/transsion/magicvideo/activities/VideoPlayListSheetDialogActivity;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/transsion/magicvideo/activities/VideoPlayListSheetDialogActivity;

    invoke-virtual {p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v1, 0x47d

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lh27;->e(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object p1

    new-instance v1, Lvwb;

    invoke-direct {v1, p0}, Lvwb;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->removeMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/PlayListData$RemoveListener;)Lcom/transsion/dbdata/beans/media/PlayListData;

    :goto_1
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->C:Ljava/lang/String;

    invoke-static {p0}, Lj06;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final J()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->r:Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->s:Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->v:Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->w:Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->A:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public final K()V
    .locals 4

    invoke-static {}, Lhsb;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->setPlaylistRepeatImg(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->z:Landroidx/appcompat/app/AppCompatActivity;

    const-string v2, "play_repeat_mode"

    invoke-static {v1, v2, v0}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/transsion/dbdata/beans/media/PlayListData;->setRepeat(Z)Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-static {}, Lhsb;->b()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->updateShuffleList()V

    :cond_1
    invoke-static {v0}, Lhsb;->e(I)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v3, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0, v2, v1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->t(ZLjava/util/ArrayList;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->J1()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->C:Ljava/lang/String;

    invoke-static {v0, p0}, Lj06;->f(ILjava/lang/String;)V

    invoke-static {v0}, Lp06;->H(I)V

    return-void
.end method

.method public adaptFoldState(Z)Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->e:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/transsion/magicvideo/R$dimen;->playlist_top:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public fixedPagerHeight(I)Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->h:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->h:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic forceExit()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->forceExit()V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->w(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$layout;->view_video_play_list_current:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->l:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->v:Landroid/widget/TextView;

    sget v1, Lcom/transsion/magicvideo/R$string;->last_playlist:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->l:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->num:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->w:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->l:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->add_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->y:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->l:Landroid/view/View;

    sget v2, Lcom/transsion/magicvideo/R$id;->iv_repeat_mode:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->x:Lcom/transsion/widgetslib/widget/OSIconTextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->l:Landroid/view/View;

    sget v2, Lcom/transsion/magicvideo/R$id;->list:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/playercommon/adapter/PlayListAdapter;

    sget v2, Lcom/transsion/magicvideo/R$layout;->item_play_filelist:I

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3}, Lcom/transsion/playercommon/adapter/PlayListAdapter;-><init>(ILandroid/content/Context;Z)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->g:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->m:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->m:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-direct {v4, p1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->g:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->g:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$d;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$d;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->F:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lha1;

    new-instance v4, Lkwb;

    invoke-direct {v4, p0}, Lkwb;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V

    invoke-direct {v1, v4}, Lha1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->selectedPlayMediaItem()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0, v3, v0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->t(ZLjava/util/ArrayList;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/PlayListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/transsion/dbdata/beans/media/PlayListData;->queryIndex(Lcom/transsion/dbdata/beans/media/MediaItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayListData;->getLastPlayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->showLast()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->n:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    new-instance v1, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$e;

    const/16 v4, 0xc8

    invoke-direct {v1, p0, v4, v2}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$e;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;IZ)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    new-instance v1, Lnwb;

    invoke-direct {v1, p0}, Lnwb;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->n:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayListData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayListData;->getLastPlayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->g:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v3, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    invoke-virtual {p0, v2, v1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->t(ZLjava/util/ArrayList;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->g:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    new-instance v3, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;

    invoke-direct {v3, p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$f;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->l:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->k:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->k:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->h:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v1, v3}, Lcom/transsion/widgets/RtlViewPager;->setScrollEnable(Z)V

    :goto_1
    new-instance v1, Lcom/transsion/playercommon/adapter/RtlViewPageAdapter;

    invoke-direct {v1, v0}, Lcom/transsion/playercommon/adapter/RtlViewPageAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->i:Lcom/transsion/playercommon/adapter/RtlViewPageAdapter;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->h:Lcom/transsion/widgets/RtlViewPager;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->h:Lcom/transsion/widgets/RtlViewPager;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->i:Lcom/transsion/playercommon/adapter/RtlViewPageAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    new-instance v0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$g;

    invoke-direct {v0, p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$g;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->D:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->h:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {v1, v0}, Lcom/transsion/widgets/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->h:Lcom/transsion/widgets/RtlViewPager;

    invoke-static {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/viewpager/widget/ViewPager;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->h:Lcom/transsion/widgets/RtlViewPager;

    iget-boolean v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->n:Z

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->setCurrentItem(I)V

    invoke-virtual {p0, p1, v2}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->updateUI(Landroid/content/Context;Z)V

    :cond_3
    return-void
.end method

.method public bridge synthetic loadMiMediaVideData(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->loadMiMediaVideData(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;Z)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "video_play_list_change"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->z:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v2, Lpwb;

    invoke-direct {v2, p0}, Lpwb;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->z:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->B:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/magicvideo/R$id;->play_list_title:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->K()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v2(Lcom/transsion/magicvideo/player/VideoPlayManager$d;)V

    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    const-string v1, "video_play_list_change"

    invoke-virtual {v0, v1}, Lcom/transsion/eventbus/LiveEventBus;->d(Ljava/lang/String;)Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/eventbus/LiveEventBus$MyMutableLiveData;->c()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->h:Lcom/transsion/widgets/RtlViewPager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->D:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/RtlViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->E:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->m:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->F:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onInfo(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onInfo(II)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onLoadingOnlineVideo(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onLoadingOnlineVideo(ZZ)V

    return-void
.end method

.method public bridge synthetic onMusicPlayerProgressUpdate(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onMusicPlayerProgressUpdate(II)V

    return-void
.end method

.method public bridge synthetic onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onPlayItemChanged(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-void
.end method

.method public bridge synthetic onPlayListLoadFinished(Ljava/util/ArrayList;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onPlayListLoadFinished(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic onPlayerStateUpdate(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onPlayerStateUpdate(I)V

    return-void
.end method

.method public bridge synthetic onShowError(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onShowError(II)V

    return-void
.end method

.method public bridge synthetic onStartChangedPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onStartChangedPlayItem(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    return-void
.end method

.method public bridge synthetic onUpdateAll(Lcom/transsion/magicvideo/player/VideoPlayManager;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onUpdateAll(Lcom/transsion/magicvideo/player/VideoPlayManager;)V

    return-void
.end method

.method public bridge synthetic onUpdateNotification(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onUpdateNotification(I)V

    return-void
.end method

.method public bridge synthetic onVideoSizeChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onVideoSizeChanged(II)V

    return-void
.end method

.method public bridge synthetic onVolumeChange(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->onVolumeChange(I)V

    return-void
.end method

.method public refresh(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->z:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lw6c;->a(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->setPlaylistRepeatImg(I)V

    :cond_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->d:Z

    invoke-virtual {p1, p2, v0}, Lcom/transsion/playercommon/adapter/PlayListAdapter;->B(Landroid/content/Context;Z)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->g:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->d:Z

    invoke-virtual {p1, p2, p0}, Lcom/transsion/playercommon/adapter/PlayListAdapter;->B(Landroid/content/Context;Z)V

    :cond_2
    return-void
.end method

.method public final s(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->n:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->h:Lcom/transsion/widgets/RtlViewPager;

    invoke-virtual {p1}, Lcom/transsion/widgets/RtlViewPager;->getCurrentItem()I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->g:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lmwb;

    invoke-direct {v3}, Lmwb;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "data_list_ids"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "media_type"

    sget-object v3, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->B:Lcom/transsion/playercommon/videomodel/VideoPlayListModel;

    invoke-virtual {v2}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->h()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lvg9;->g(Ljava/util/ArrayList;)V

    :cond_2
    invoke-static {p1}, Lvg9;->h(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->z:Landroidx/appcompat/app/AppCompatActivity;

    const-class v2, Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->z:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz v0, :cond_3

    const-string p0, "vd_audio_playqueue_lastplay_addtoplaylist"

    goto :goto_1

    :cond_3
    const-string p0, "vd_audio_playqueue_addtoplaylist"

    :goto_1
    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public scrollToPlayIndex()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->c:Lcom/transsion/dbdata/beans/media/PlayListData;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayListData;->playIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic seekTo(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->seekTo(I)V

    return-void
.end method

.method public setBottomMargin(I)Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->e:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public setCallFrom(Ljava/lang/String;)Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->C:Ljava/lang/String;

    return-object p0
.end method

.method public setDayNightType(Z)Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->d:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->v()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->refresh(ZZ)V

    return-object p0
.end method

.method public setTopMargin(I)Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->e:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public showLast()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final t(ZLjava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p2, :cond_1

    iget-boolean v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;

    invoke-virtual {v1, p2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaDataUtils$Companion;->isMiMediaVideo(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    move p2, v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIsSupportAddToList isLast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",showAdd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoPlayListView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->y:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final u(Landroid/content/Context;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->z:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$layout;->dialog_video_play_filelist:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Llwb;

    invoke-direct {v0, p0}, Llwb;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    sget p1, Lcom/transsion/magicvideo/R$id;->pager:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/RtlViewPager;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->h:Lcom/transsion/widgets/RtlViewPager;

    sget p1, Lcom/transsion/magicvideo/R$id;->spot_1:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->p:Landroid/view/View;

    sget p1, Lcom/transsion/magicvideo/R$id;->spot:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->o:Landroid/view/View;

    sget p1, Lcom/transsion/magicvideo/R$id;->spot_2:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->q:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->initView(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->J:Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    invoke-virtual {p1, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->D1(Lcom/transsion/magicvideo/player/VideoPlayManager$d;)V

    return-void
.end method

.method public updateUI(Landroid/content/Context;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor",
            "ClickableViewAccessibility",
            "DefaultLocale"
        }
    .end annotation

    const-string p1, "\uff08%d\uff09"

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->g:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->o:Landroid/view/View;

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->n:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->p:Landroid/view/View;

    if-eqz p2, :cond_2

    sget v0, Lcom/transsion/magicvideo/R$drawable;->ic_page_dot_unselected:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/transsion/magicvideo/R$drawable;->ic_page_dot_selected:I

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->q:Landroid/view/View;

    if-eqz p2, :cond_3

    sget v0, Lcom/transsion/magicvideo/R$drawable;->ic_page_dot_selected:I

    goto :goto_3

    :cond_3
    sget v0, Lcom/transsion/magicvideo/R$drawable;->ic_page_dot_unselected:I

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->m:Landroidx/recyclerview/widget/RecyclerView;

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    :cond_4
    return-void
.end method

.method public final v()V
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$attr;->os_platform_basic_color:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->z:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->d:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/magicvideo/R$color;->white:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/magicvideo/R$color;->os_text_primary_color:I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->A:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->J()V

    return-void
.end method

.method public bridge synthetic videoPlayOrPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager$d;->videoPlayOrPause()V

    return-void
.end method

.method public final w(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/magicvideo/R$layout;->view_video_play_list_current:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->k:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->k:Landroid/view/View;

    sget v1, Lcom/transsion/magicvideo/R$id;->add_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->u:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->k:Landroid/view/View;

    sget v2, Lcom/transsion/magicvideo/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->k:Landroid/view/View;

    sget v2, Lcom/transsion/magicvideo/R$id;->num:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    new-instance v2, Lqwb;

    invoke-direct {v2, p0}, Lqwb;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setSwipeMenuCreator(Lr7a;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    new-instance v2, Lrwb;

    invoke-direct {v2, p0}, Lrwb;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setOnItemMenuClickListener(Lye7;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setLongPressDragEnabled(Z)V

    new-instance v0, Lcom/transsion/playercommon/adapter/PlayListAdapter;

    sget v3, Lcom/transsion/magicvideo/R$layout;->item_play_filelist:I

    invoke-direct {v0, v3, p1, v2}, Lcom/transsion/playercommon/adapter/PlayListAdapter;-><init>(ILandroid/content/Context;Z)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    new-instance v2, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-direct {v2, p1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->bindToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->K:Lze7;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setOnItemMoveListener(Lze7;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->L:Lbf7;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setOnItemStateChangedListener(Lbf7;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->f:Lcom/transsion/playercommon/adapter/PlayListAdapter;

    new-instance v0, Lswb;

    invoke-direct {v0, p0}, Lswb;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/adapter/PlayListAdapter;->setOnTouchListener(Lcom/transsion/playercommon/adapter/PlayListAdapter$a;)V

    new-instance p1, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;

    invoke-direct {p1, p0}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView$b;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->E:Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->j:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->k:Landroid/view/View;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_repeat_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/widget/OSIconTextView;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->z:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lw6c;->a(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->setPlaylistRepeatImg(I)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->t:Lcom/transsion/widgetslib/widget/OSIconTextView;

    new-instance v0, Ltwb;

    invoke-direct {v0, p0}, Ltwb;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->k:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lha1;

    new-instance v1, Luwb;

    invoke-direct {v1, p0}, Luwb;-><init>(Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;)V

    invoke-direct {v0, v1}, Lha1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final synthetic y(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->b:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->J:Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    invoke-virtual {p1, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v2(Lcom/transsion/magicvideo/player/VideoPlayManager$d;)V

    :cond_0
    return-void
.end method

.method public final synthetic z(Lo7a;Lo7a;I)V
    .locals 2

    new-instance p3, Lt7a;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->z:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {p3, v0}, Lt7a;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->z:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lcom/transsion/magicvideo/R$color;->playlist_delete_red:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Lt7a;->k(I)Lt7a;

    move-result-object p3

    sget v0, Lcom/transsion/magicvideo/R$drawable;->ic_delete_swiper:I

    invoke-virtual {p3, v0}, Lt7a;->m(I)Lt7a;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/VideoPlayListView;->z:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/magicvideo/R$dimen;->swipe_delete_dp:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p3, p0}, Lt7a;->o(I)Lt7a;

    move-result-object p0

    const/4 p3, -0x1

    invoke-virtual {p0, p3}, Lt7a;->l(I)Lt7a;

    move-result-object p0

    invoke-static {}, Lav3;->z()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p0}, Lo7a;->a(Lt7a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0}, Lo7a;->a(Lt7a;)V

    :goto_0
    return-void
.end method
