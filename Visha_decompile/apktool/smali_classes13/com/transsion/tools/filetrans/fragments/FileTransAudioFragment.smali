.class public final Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;
.super Lcom/transsion/audio/fragments/AudioBaseFragment;
.source "SourceFile"

# interfaces
.implements Lh27$b;
.implements Lcom/transsion/playercommon/convert/ConvertingTaskManager$b;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 Y2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001ZB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u000c0\u000bj\u0008\u0012\u0004\u0012\u00020\u000c`\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0005J\u000f\u0010\u0011\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0005J\'\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001cJ-\u0010#\u001a\u0004\u0018\u00010\u00062\u0006\u0010 \u001a\u00020\u001f2\u0008\u0010\"\u001a\u0004\u0018\u00010!2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010&\u001a\u00020%H\u0014\u00a2\u0006\u0004\u0008&\u0010\'J!\u0010(\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010*\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008*\u0010\nJ\u000f\u0010+\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008+\u0010\u0005J\u000f\u0010,\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008,\u0010\u0005J\u001f\u0010/\u001a\u00020\u00082\u0006\u0010-\u001a\u00020\u00152\u0006\u0010.\u001a\u00020\u0015H\u0015\u00a2\u0006\u0004\u0008/\u00100J\u0017\u00102\u001a\u00020\u00082\u0006\u00101\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u00084\u0010\u0005J\u000f\u00105\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u00085\u0010\u0005J\u000f\u00106\u001a\u00020%H\u0016\u00a2\u0006\u0004\u00086\u0010\'J\u0017\u00108\u001a\u00020\u00082\u0006\u00107\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u00088\u0010\nJ7\u0010=\u001a\u00020\u00082\u000e\u0010:\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003092\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010;\u001a\u00020%2\u0006\u0010<\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010?\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008?\u0010\u0005J\u0017\u0010A\u001a\u00020\u00082\u0006\u0010@\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008A\u00103J\u000f\u0010B\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008B\u0010\u0005J+\u0010G\u001a\u00020\u00082\u0006\u0010C\u001a\u00020%2\u0012\u0010F\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020E0D\"\u00020EH\u0016\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010I\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008I\u0010\u0005J\u0017\u0010K\u001a\u00020\u00082\u0006\u0010J\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008K\u0010LR\u0018\u0010P\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0018\u0010T\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\u0014\u0010X\u001a\u00020U8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008V\u0010W\u00a8\u0006["
    }
    d2 = {
        "Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;",
        "Lcom/transsion/audio/fragments/AudioBaseFragment;",
        "Lh27$b;",
        "Lcom/transsion/playercommon/convert/ConvertingTaskManager$b;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Lzfb;",
        "X1",
        "(Landroid/view/View;)V",
        "Ljava/util/ArrayList;",
        "Lcom/transsion/dbdata/beans/media/AudioItem;",
        "Lkotlin/collections/ArrayList;",
        "e2",
        "()Ljava/util/ArrayList;",
        "g2",
        "T1",
        "audioItem",
        "",
        "action",
        "",
        "needForcePlay",
        "f2",
        "(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "outState",
        "onSaveInstanceState",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "",
        "onLayoutId",
        "()I",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "initTitleBar",
        "onDestroyView",
        "onDestroy",
        "preload",
        "mediaChange",
        "loadData",
        "(ZZ)V",
        "isVideo",
        "t",
        "(Z)V",
        "N0",
        "updateShowUI",
        "getActivityMenuSwitchFlag",
        "v",
        "onClick",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "adapter",
        "position",
        "child",
        "y1",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V",
        "A1",
        "isVisibleToUser",
        "setUserVisibleHint",
        "initEvents",
        "eventId",
        "",
        "",
        "args",
        "didReceivedNotification",
        "(I[Ljava/lang/Object;)V",
        "scrollToTop",
        "count",
        "q",
        "(I)V",
        "Lcom/transsion/dbdata/beans/media/MediaBucket;",
        "V",
        "Lcom/transsion/dbdata/beans/media/MediaBucket;",
        "mMediaBucket",
        "Lcom/transsion/utils/CustomGridLayoutManager;",
        "W",
        "Lcom/transsion/utils/CustomGridLayoutManager;",
        "mGridLayoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "X",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "mOnScrollListener",
        "Y",
        "a",
        "tools_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Y:Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$a;


# instance fields
.field public V:Lcom/transsion/dbdata/beans/media/MediaBucket;

.field public W:Lcom/transsion/utils/CustomGridLayoutManager;

.field public final X:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->Y:Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;-><init>()V

    new-instance v0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$mOnScrollListener$1;

    invoke-direct {v0, p0}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$mOnScrollListener$1;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->X:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public static synthetic F1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->U1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic G1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->W1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic H1(Le74;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->b2(Le74;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I1(Le74;Ljava/lang/Object;)Lld7;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->Z1(Le74;Ljava/lang/Object;)Lld7;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->V1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic K1(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->d2(Le74;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic L1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lzfb;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->a2(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lzfb;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Ljava/util/ArrayList;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->c2(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Ljava/util/ArrayList;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)Lld7;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->Y1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)Lld7;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic O1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)Lcom/transsion/audio/adapter/AudioItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    return-object p0
.end method

.method public static final synthetic P1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic Q1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mIsDialogShowing:Z

    return p0
.end method

.method public static final synthetic R1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    return p0
.end method

.method public static final synthetic S1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->f2(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V

    return-void
.end method

.method private final T1()V
    .locals 2

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x62

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$b;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->v:Lif7;

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/adapter/AudioItemAdapter;->setOnSelectListener(Lcom/transsion/audio/adapter/AudioItemAdapter$c;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    new-instance v1, Lzr3;

    invoke-direct {v1, p0}, Lzr3;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    new-instance v1, Las3;

    invoke-direct {v1, p0}, Las3;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    new-instance v1, Lbs3;

    invoke-direct {v1, p0}, Lbs3;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemChildClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;)V

    :goto_0
    return-void
.end method

.method public static final U1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    const-string v0, "adapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :cond_1
    return-void
.end method

.method public static final V1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 3

    const-string v0, "adapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view1"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p3, v0, :cond_1

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem"

    invoke-static {v0, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isTimeItem:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :cond_1
    return v1
.end method

.method public static final W1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    const-string v0, "adapter"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method private final X1(Landroid/view/View;)V
    .locals 5

    new-instance v0, Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->R(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->X(Z)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v3, 0x62

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v1, v4

    :cond_0
    invoke-virtual {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->Q(Z)V

    sget v0, Lcom/transsion/tools/R$id;->rv_main_fragment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    sget v0, Lcom/transsion/tools/R$id;->rv_fast_scroller:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->I:Lcom/transsion/widgets/fastscroller/RecyclerViewFastScroller;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$initRecyclerView$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment$initRecyclerView$1;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->W:Lcom/transsion/utils/CustomGridLayoutManager;

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->X:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->W:Lcom/transsion/utils/CustomGridLayoutManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->W:Lcom/transsion/utils/CustomGridLayoutManager;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;->setType(Ljava/lang/String;)V

    return-void
.end method

.method public static final Y1(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)Lld7;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v0, 0x62

    if-ne p1, v0, :cond_0

    sget-object p1, Lts3;->a:Lts3;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    const-string v0, "mContext"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lts3;->e(Landroid/content/Context;)Lmc7;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public static final Z1(Le74;Ljava/lang/Object;)Lld7;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lld7;

    return-object p0
.end method

.method public static final a2(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Lzfb;)Ljava/util/ArrayList;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->e2()Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x62

    if-ne v0, v1, :cond_0

    sget-object v0, Lts3;->a:Lts3;

    invoke-virtual {v0, p1}, Lts3;->d(Ljava/lang/Iterable;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->G0(Ljava/util/List;)V

    return-object p1
.end method

.method public static final b2(Le74;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final c2(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;Ljava/util/ArrayList;)Lzfb;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mDataUpdated:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;

    invoke-virtual {p1}, Lcom/transsion/tools/filetrans/fragments/FileTransMainFragment;->j0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->g2()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mbFragmentShowCompleted:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->g2()V

    :cond_2
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static final d2(Le74;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final e2()Ljava/util/ArrayList;
    .locals 4

    iget v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    sget-object v0, Lao;->d:Lao$a;

    invoke-virtual {v0}, Lao$a;->a()Lao;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lao;->x(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->N:Ljava/lang/Long;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lao$a;->a()Lao;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ldu4$a;->b(Ldu4;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    check-cast p0, Ljava/lang/Iterable;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Li81;->F0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/transsion/dbdata/utils/SortUtil;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v1

    :cond_3
    const/16 p0, 0x62

    if-ne v0, p0, :cond_4

    sget-object p0, Lao;->d:Lao$a;

    invoke-virtual {p0}, Lao$a;->a()Lao;

    move-result-object p0

    sget-object v0, Lyx2;->l:Ljava/lang/String;

    const-string v1, "FILE_TRANS_FILE_RELATIVE_PATH"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lao;->M(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private final f2(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;Z)V
    .locals 7

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    const-string v1, "FileTransAudioFragment"

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    iput v2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    iget-object v2, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->folderName:Ljava/lang/String;

    iput-object p2, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->sourceAction:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sourceAction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needForcePlay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mListFlag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTitle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audioItem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, v2, v3, v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 p2, 0x24

    if-eq p1, p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object p0

    const-string p1, "launch_audio_player_activity_from_audio_list"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0, v0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->D1(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    goto :goto_1

    :cond_2
    const-string p0, "startOpenVideo: playAudioData is null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private final g2()V
    .locals 3

    const-string v0, "updateUI"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FileTransAudioFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    const-string v2, "null cannot be cast to non-null type java.util.ArrayList<com.transsion.dbdata.beans.media.AudioItem>"

    invoke-static {v1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->A1()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->isInEditMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/adapter/AudioItemAdapter;->O(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->H0()V

    iput-boolean v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mDataUpdated:Z

    return-void
.end method


# virtual methods
.method public A1()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->A1()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mMenuShowListener:Lcom/transsion/playercommon/fragments/BaseFragment$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    const-string v2, "mDataList"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment$d;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    if-eqz v0, :cond_2

    sget v1, Lcom/transsion/tools/R$id;->add_video_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    sget v1, Lcom/transsion/tools/R$id;->lottie_no_videos_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/transsion/common/R$drawable;->ic_audio_empty_illustration:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    sget v1, Lcom/transsion/tools/R$id;->text_no_videos:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    const/16 v2, 0x62

    if-ne v1, v2, :cond_1

    sget v1, Lcom/transsion/tools/R$string;->no_have_history:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget v1, Lcom/transsion/tools/R$string;->no_audio:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public N0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v1, Lcom/transsion/tools/R$id;->main_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewStub"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lraa;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->l:Landroid/view/View;

    sget v1, Lcom/transsion/tools/R$string;->file_empty:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->D1()V

    :cond_1
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 p2, 0x45e

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mDataUpdated:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->g2()V

    :cond_0
    return-void
.end method

.method public getActivityMenuSwitchFlag()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public initEvents()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->initEvents()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEvents:Ljava/util/List;

    const/16 v0, 0x45e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initTitleBar(Landroid/view/View;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Lcom/transsion/tools/R$id;->title_bar:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.view.ViewStub"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewStub;

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public loadData(ZZ)V
    .locals 2

    const-string p1, "FileTransAudioFragment"

    const-string p2, "onChangeFileTransAudioFragment"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x320

    :goto_0
    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lmc7;->i(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object p1

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxFragment;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance p2, Lcs3;

    invoke-direct {p2, p0}, Lcs3;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)V

    new-instance v0, Lds3;

    invoke-direct {v0, p2}, Lds3;-><init>(Le74;)V

    invoke-virtual {p1, v0}, Lmc7;->w(Lt74;)Lmc7;

    move-result-object p1

    new-instance p2, Les3;

    invoke-direct {p2, p0}, Les3;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)V

    new-instance v0, Lfs3;

    invoke-direct {v0, p2}, Lfs3;-><init>(Le74;)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lgs3;

    invoke-direct {p2, p0}, Lgs3;-><init>(Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;)V

    new-instance p0, Lhs3;

    invoke-direct {p0, p2}, Lhs3;-><init>(Le74;)V

    invoke-virtual {p1, p0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->ingoreClickEvent()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mFirstClickTime:J

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "list_flag"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    :goto_0
    iput v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaBucket;-><init>()V

    iput-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->V:Lcom/transsion/dbdata/beans/media/MediaBucket;

    if-eqz p1, :cond_1

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const-string v1, "bucket_fragment_buicket_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setBucketId(J)Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->V:Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const-string v1, "bucket_fragment_is_internet"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    const-string v0, "bucket_fragment_buicket_name"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->V:Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const-string v1, "bucket_fragment_buicket_isVirtual"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setVirtualFolder(Z)V

    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->V:Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const-string v1, "bucket_fragment_buicket_virtual_match_name"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setVirtualFolderMatchName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->V:Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    const-string v1, "bucket_fragment_buicket_path"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/MediaBucket;->setParentPath(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x45e

    invoke-virtual {p1, p0, v0}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->o:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onDestroy()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x45e

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->X:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/tools/R$layout;->medias_select_fragment:I

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "list_flag"

    iget p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->s:I

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$dimen;->convert_main_empty_imgView_marginBottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->mEmptyPaddingBottom:I

    invoke-direct {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->X1(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->T1()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->initTitleBar(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->loadData(Z)V

    invoke-super {p0, p1, p2}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onViewCreatedEnd(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public q(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public scrollToTop()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->scrollToTop()V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->H:Lcom/transsion/playercommon/widgets/VideoMainRecyclerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mIsVisibleToUser:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/PlayBaseFragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method public t(Z)V
    .locals 2

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    const-string v1, "null cannot be cast to non-null type java.util.ArrayList<com.transsion.dbdata.beans.media.AudioItem>"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/dbdata/utils/SortUtil;->u(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/AudioBaseFragment;->u:Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateShowUI()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->updateShowUI()V

    invoke-direct {p0}, Lcom/transsion/tools/filetrans/fragments/FileTransAudioFragment;->g2()V

    return-void
.end method

.method public y1(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;IZ)V
    .locals 1

    const-string p0, "adapter"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "view"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.AudioItem"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget v0, Lcom/transsion/tools/R$id;->iv_bucket_fragment_checkBox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-ne p4, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    check-cast p1, Lcom/transsion/audio/adapter/AudioItemAdapter;

    invoke-virtual {p1, p0, p2, p3}, Lcom/transsion/audio/adapter/AudioItemAdapter;->P(Lcom/transsion/dbdata/beans/media/AudioItem;ZI)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p2, 0x494

    invoke-virtual {p1, p2, p0}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method
