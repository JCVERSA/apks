.class public Lcom/transsion/playercommon/videomodel/PlayListModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/LiveData;

.field public b:Landroidx/lifecycle/LiveData;

.field public c:Landroidx/lifecycle/LiveData;

.field public d:Landroidx/lifecycle/LiveData;

.field public e:Landroidx/lifecycle/MutableLiveData;

.field public f:Landroidx/lifecycle/MutableLiveData;

.field public g:Landroidx/lifecycle/MutableLiveData;

.field public h:Landroidx/lifecycle/MutableLiveData;

.field public i:Landroidx/lifecycle/MutableLiveData;

.field public j:Landroidx/lifecycle/MutableLiveData;

.field public k:Landroidx/lifecycle/MutableLiveData;

.field public l:Landroidx/lifecycle/MutableLiveData;

.field public m:Landroidx/lifecycle/MutableLiveData;

.field public volatile n:Ljava/util/List;

.field public o:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->f:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->g:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->h:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->i:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->j:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->k:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->l:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->m:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/transsion/data/Repository;->INSTANCE:Lcom/transsion/data/Repository;

    iget-boolean v0, v0, Lcom/transsion/data/Repository;->isLrcMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->o:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->flushPlayList()V

    return-void
.end method

.method public static synthetic a(ILjava/lang/Integer;)Lcom/transsion/dbdata/beans/LyricData;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/videomodel/PlayListModel;->o(ILjava/lang/Integer;)Lcom/transsion/dbdata/beans/LyricData;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/playercommon/videomodel/PlayListModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static synthetic o(ILjava/lang/Integer;)Lcom/transsion/dbdata/beans/LyricData;
    .locals 0

    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    invoke-virtual {p1, p0}, Lao;->R(I)Lcom/transsion/dbdata/beans/LyricData;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/dbdata/beans/LyricData;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/LyricData;-><init>()V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public c(ILandroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    check-cast p2, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p2

    new-instance v0, Lh68;

    invoke-direct {v0, p1}, Lh68;-><init>(I)V

    invoke-virtual {p2, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lcom/transsion/playercommon/videomodel/PlayListModel$a;

    invoke-direct {p2, p0}, Lcom/transsion/playercommon/videomodel/PlayListModel$a;-><init>(Lcom/transsion/playercommon/videomodel/PlayListModel;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public d()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->e:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public e()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public f()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->h:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public flushPlayList()V
    .locals 7

    invoke-static {}, Loa1;->f()I

    move-result v0

    invoke-static {}, Lwe6;->e()Lwe6;

    move-result-object v1

    sget-object v2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v3, Lrl8$i;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5, v0}, Lrl8$i;-><init>(IZZI)V

    const-class v6, Lcom/transsion/dbdata/database/PlayListItem;

    invoke-static {v3, v6}, Lzj7;->c(Lrl8;Ljava/lang/Class;)Lsl8;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lwe6;->q(Lcom/transsion/dbdata/source/DataSourceScope;Lsl8;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->a:Landroidx/lifecycle/LiveData;

    invoke-static {}, Lwe6;->e()Lwe6;

    move-result-object v1

    new-instance v3, Lrl8$e;

    invoke-direct {v3, v5}, Lrl8$e;-><init>(Z)V

    const-class v6, Lcom/transsion/dbdata/database/MediaPlayCount;

    invoke-static {v3, v6}, Lzj7;->c(Lrl8;Ljava/lang/Class;)Lsl8;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lwe6;->q(Lcom/transsion/dbdata/source/DataSourceScope;Lsl8;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->b:Landroidx/lifecycle/LiveData;

    invoke-static {}, Lwe6;->e()Lwe6;

    move-result-object v1

    new-instance v3, Lrl8$c;

    invoke-direct {v3, v5, v0}, Lrl8$c;-><init>(ZI)V

    const-class v6, Lcom/transsion/dbdata/database/PlayListMediaItem;

    invoke-static {v3, v6}, Lzj7;->c(Lrl8;Ljava/lang/Class;)Lsl8;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lwe6;->q(Lcom/transsion/dbdata/source/DataSourceScope;Lsl8;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->c:Landroidx/lifecycle/LiveData;

    invoke-static {}, Lwe6;->e()Lwe6;

    move-result-object v1

    new-instance v3, Lrl8$f;

    invoke-direct {v3, v5, v4, v0}, Lrl8$f;-><init>(ZZI)V

    invoke-static {v3, v6}, Lzj7;->c(Lrl8;Ljava/lang/Class;)Lsl8;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lwe6;->q(Lcom/transsion/dbdata/source/DataSourceScope;Lsl8;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->d:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public g()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public h()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public i()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->d:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public j()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->j:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public k()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->b:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public l()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->c:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public m()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->a:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public n()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->n:Ljava/util/List;

    return-object p0
.end method

.method public p(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->h:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public q(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->j:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public r(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->k:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public s(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->h:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public t(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->f:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/PlayListModel;->n:Ljava/util/List;

    return-void
.end method
