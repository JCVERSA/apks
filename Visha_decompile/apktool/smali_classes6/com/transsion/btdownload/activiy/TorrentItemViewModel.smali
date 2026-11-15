.class public Lcom/transsion/btdownload/activiy/TorrentItemViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/MutableLiveData;

.field public b:Landroidx/lifecycle/MutableLiveData;

.field public c:Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

.field public d:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

.field public e:Lrc2;

.field public f:Lrc2;

.field public g:Landroidx/lifecycle/MutableLiveData;

.field public h:Landroidx/lifecycle/MutableLiveData;

.field public i:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel$a;

    invoke-direct {v0, p0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel$a;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;)V

    iput-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->i:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->t(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->w(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;Ljava/lang/Long;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->y(Ljava/lang/Long;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;Landroidx/core/util/Pair;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->v(Landroidx/core/util/Pair;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->s(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->A(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->u(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->z(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;Ljava/lang/String;Ljava/lang/Long;)Landroidx/core/util/Pair;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->x(Ljava/lang/String;Ljava/lang/Long;)Landroidx/core/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;)Ljava/util/List;
    .locals 0

    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object p0

    invoke-virtual {p0}, Lpk0;->h()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic A(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final B(Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)Landroidx/core/util/Pair;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileList:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->filePriorities:[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    new-instance v4, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    invoke-direct {v4, v3}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;-><init>(Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/utils/TorrentContentFileTreeUtils;->a(Ljava/util/List;)Landroidx/core/util/Pair;

    move-result-object p2

    move v0, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;

    iget-object v3, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    invoke-virtual {v2}, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/BencodeFileItem;->getIndex()I

    move-result v2

    aget-object v2, v3, v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    invoke-virtual {v2, v3, v1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->setPriority(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object p2
.end method

.method public C(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public D(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public E()V
    .locals 1

    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->i:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    invoke-virtual {v0, p0}, Lpk0;->r(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public F(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->g:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public G(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public H(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->d:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    return-void
.end method

.method public I(Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->c:Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    return-void
.end method

.method public J()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->f:Lrc2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lrc2;->dispose()V

    :cond_0
    return-void
.end method

.method public K()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->e:Lrc2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lrc2;->dispose()V

    :cond_0
    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->f:Lrc2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrc2;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->f:Lrc2;

    invoke-interface {v0}, Lrc2;->dispose()V

    :cond_0
    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    const-wide/16 v0, 0x3e8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0, v1, v2}, Lmc7;->H(JJLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object v0

    new-instance v1, Lsta;

    invoke-direct {v1, p0, p1}, Lsta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Ltta;

    invoke-direct {v0, p0}, Ltta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;)V

    new-instance v1, Luta;

    invoke-direct {v1, p0}, Luta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;)V

    invoke-virtual {p1, v0, v1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->f:Lrc2;

    return-void
.end method

.method public M()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->e:Lrc2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrc2;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->e:Lrc2;

    invoke-interface {v0}, Lrc2;->dispose()V

    :cond_0
    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    const-wide/16 v0, 0x3e8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lmc7;->J(JLjava/util/concurrent/TimeUnit;)Lmc7;

    move-result-object v0

    new-instance v1, Lvta;

    invoke-direct {v1, p0}, Lvta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;)V

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

    new-instance v1, Lwta;

    invoke-direct {v1, p0}, Lwta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;)V

    new-instance v2, Lxta;

    invoke-direct {v2, p0}, Lxta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;)V

    invoke-virtual {v0, v1, v2}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public j()V
    .locals 1

    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->i:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    invoke-virtual {v0, p0}, Lpk0;->d(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public k()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->p()Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    move-result-object p0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;->torrentId:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;
    .locals 0

    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lpk0;->j(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    return-object p0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->h:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public o(Ljava/lang/String;)Landroidx/core/util/Pair;
    .locals 6

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->m(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getFilePriorities()[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    if-ge p1, v3, :cond_1

    aget-object v3, p0, p1

    sget-object v4, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    invoke-direct {v3, v4}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;-><init>(Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V

    aget-object v4, v0, p1

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->setPriority(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;Z)V

    aget-object v3, v0, p1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Landroidx/core/util/Pair;

    invoke-direct {p0, v1, v2}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public p()Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->d:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    return-object p0
.end method

.method public q()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public r(Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lyta;

    invoke-direct {v0}, Lyta;-><init>()V

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

    new-instance v0, Lzta;

    invoke-direct {v0, p0}, Lzta;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;)V

    new-instance v1, Laua;

    invoke-direct {v1, p0}, Laua;-><init>(Lcom/transsion/btdownload/activiy/TorrentItemViewModel;)V

    invoke-virtual {p1, v0, v1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public final synthetic t(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic u(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic v(Landroidx/core/util/Pair;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic w(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic x(Ljava/lang/String;Ljava/lang/Long;)Landroidx/core/util/Pair;
    .locals 5

    iget-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->hasObservers()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->f:Lrc2;

    invoke-interface {p0}, Lrc2;->dispose()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/core/util/Pair;

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->c:Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    iget-object v0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->d:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;

    invoke-virtual {p0, p2, v0}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->B(Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;)Landroidx/core/util/Pair;

    move-result-object p2

    :cond_1
    iget-object v0, p2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->m(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p0

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getFilesReceivedBytes()[J

    move-result-object p1

    invoke-interface {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;->getFilePriorities()[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    aget-wide v3, p1, v1

    invoke-virtual {v2, v3, v4}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->setReceivedBytes(J)V

    aget-object v2, v0, v1

    new-instance v3, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    aget-object v4, p0, v1

    invoke-direct {v3, v4}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;-><init>(Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/proninyaroslav/libretorrent/core/model/filetree/TorrentContentFileTree;->setPriority(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public final synthetic y(Ljava/lang/Long;)Ljava/util/List;
    .locals 0

    iget-object p1, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->hasObservers()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->e:Lrc2;

    invoke-interface {p0}, Lrc2;->dispose()V

    :cond_0
    invoke-static {}, Lpk0;->f()Lpk0;

    move-result-object p0

    invoke-virtual {p0}, Lpk0;->h()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic z(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/activiy/TorrentItemViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
