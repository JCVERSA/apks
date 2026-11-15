.class public Lcom/transsion/playercommon/videomodel/VideoPlayListModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/LiveData;

.field public final b:Landroidx/lifecycle/LiveData;

.field public final c:Landroidx/lifecycle/LiveData;

.field public d:Landroidx/lifecycle/MutableLiveData;

.field public final e:Landroidx/lifecycle/MutableLiveData;

.field public final f:Landroidx/lifecycle/Observer;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 7
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Lkvb;

    invoke-direct {p1, p0}, Lkvb;-><init>(Lcom/transsion/playercommon/videomodel/VideoPlayListModel;)V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->f:Landroidx/lifecycle/Observer;

    invoke-static {}, Loa1;->f()I

    move-result v0

    invoke-static {}, Lwe6;->e()Lwe6;

    move-result-object v1

    sget-object v2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v3, Lrl8$i;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6, v0}, Lrl8$i;-><init>(IZZI)V

    const-class v4, Lcom/transsion/dbdata/database/PlayListFolderItem;

    invoke-static {v3, v4}, Lzj7;->c(Lrl8;Ljava/lang/Class;)Lsl8;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lwe6;->q(Lcom/transsion/dbdata/source/DataSourceScope;Lsl8;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->c:Landroidx/lifecycle/LiveData;

    invoke-static {}, Lwe6;->e()Lwe6;

    move-result-object v3

    new-instance v4, Lrl8$e;

    invoke-direct {v4, v6}, Lrl8$e;-><init>(Z)V

    const-class v5, Lcom/transsion/dbdata/database/MediaPlayCount;

    invoke-static {v4, v5}, Lzj7;->c(Lrl8;Ljava/lang/Class;)Lsl8;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lwe6;->q(Lcom/transsion/dbdata/source/DataSourceScope;Lsl8;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->a:Landroidx/lifecycle/LiveData;

    invoke-static {}, Lwe6;->e()Lwe6;

    move-result-object v3

    new-instance v4, Lrl8$c;

    invoke-direct {v4, v6, v0}, Lrl8$c;-><init>(ZI)V

    const-class v0, Lcom/transsion/dbdata/database/PlayListMediaItem;

    invoke-static {v4, v0}, Lzj7;->c(Lrl8;Ljava/lang/Class;)Lsl8;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lwe6;->q(Lcom/transsion/dbdata/source/DataSourceScope;Lsl8;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->b:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/videomodel/VideoPlayListModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->l(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/videomodel/VideoPlayListModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->m(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/dbdata/database/PlayListFolderItem;)Lcom/transsion/dbdata/database/VideoPlayList;
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->k(Lcom/transsion/dbdata/database/PlayListFolderItem;)Lcom/transsion/dbdata/database/VideoPlayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/dbdata/database/PlayListFolderItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->j(Lcom/transsion/dbdata/database/PlayListFolderItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/transsion/dbdata/database/PlayListFolderItem;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getCategory()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic k(Lcom/transsion/dbdata/database/PlayListFolderItem;)Lcom/transsion/dbdata/database/VideoPlayList;
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/VideoPlayList;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getCount()I

    move-result p0

    iput p0, v0, Lcom/transsion/dbdata/database/VideoPlayList;->count:I

    return-object v0
.end method


# virtual methods
.method public e()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->b:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public f()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->d:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public g()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->c:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public h()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->e:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public i()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->a:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final synthetic l(Ljava/util/List;)V
    .locals 4

    const-string v0, "VideoPlayListModel"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lmvb;

    invoke-direct {v2}, Lmvb;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lnvb;

    invoke-direct {v2}, Lnvb;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query video play list result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "transform VideoPlayList error"

    invoke-static {v0, v2, p1}, Lvmb;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic m(Ljava/util/List;)V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->n()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Llvb;

    invoke-direct {v1, p0, p1}, Llvb;-><init>(Lcom/transsion/playercommon/videomodel/VideoPlayListModel;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public o(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onCleared()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->c:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->f:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    return-void
.end method
