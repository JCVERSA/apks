.class public final Lcom/snaptube/premium/files/downloading/DownloadingViewModel;
.super Lo/mx8;

# interfaces
.implements Lo/jw1;
.implements Lo/ki5;


# instance fields
.field public final a:Lcom/snaptube/premium/files/DownloadTaskRepository;

.field public final b:Lo/n01;

.field public final c:Lo/lu7;

.field public d:Lo/wu7;

.field public final e:Ljava/util/Set;

.field public final f:Lo/y05;

.field public final g:Landroidx/lifecycle/LiveData;

.field public final h:Lo/y05;

.field public final i:Landroidx/lifecycle/LiveData;

.field public final j:Lo/y05;

.field public final k:Landroidx/lifecycle/LiveData;

.field public final l:Lo/ex1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lo/mx8;-><init>()V

    new-instance v0, Lcom/snaptube/premium/files/DownloadTaskRepository;

    invoke-direct {v0}, Lcom/snaptube/premium/files/DownloadTaskRepository;-><init>()V

    iput-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->a:Lcom/snaptube/premium/files/DownloadTaskRepository;

    new-instance v0, Lo/n01;

    invoke-direct {v0}, Lo/n01;-><init>()V

    iput-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->b:Lo/n01;

    new-instance v0, Lo/o67;

    invoke-static {}, Lrx/subjects/PublishSubject;->Y0()Lrx/subjects/PublishSubject;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/o67;-><init>(Lo/lu7;)V

    iput-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->c:Lo/lu7;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->e:Ljava/util/Set;

    new-instance v0, Lo/y05;

    invoke-direct {v0}, Lo/y05;-><init>()V

    iput-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->f:Lo/y05;

    iput-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->g:Landroidx/lifecycle/LiveData;

    new-instance v0, Lo/y05;

    invoke-direct {v0}, Lo/y05;-><init>()V

    iput-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->h:Lo/y05;

    iput-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->i:Landroidx/lifecycle/LiveData;

    new-instance v0, Lo/y05;

    invoke-direct {v0}, Lo/y05;-><init>()V

    iput-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->j:Lo/y05;

    iput-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->k:Landroidx/lifecycle/LiveData;

    new-instance v0, Lo/ex1;

    invoke-direct {v0, p0}, Lo/ex1;-><init>(Lo/jw1;)V

    iput-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->l:Lo/ex1;

    invoke-direct {p0}, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->c0()V

    invoke-direct {p0}, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->d0()V

    return-void
.end method

.method public static final synthetic B(Lcom/snaptube/premium/files/downloading/DownloadingViewModel;)Lo/wu7;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->d:Lo/wu7;

    return-object p0
.end method

.method public static final synthetic M(Lcom/snaptube/premium/files/downloading/DownloadingViewModel;)Lo/y05;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->h:Lo/y05;

    return-object p0
.end method

.method private final a0()V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->K()Lcom/snaptube/taskManager/TaskMessageCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->l:Lo/ex1;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/TaskMessageCenter;->y(Lcom/snaptube/taskManager/TaskMessageCenter$d;)V

    return-void
.end method

.method private final c0()V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->K()Lcom/snaptube/taskManager/TaskMessageCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->l:Lo/ex1;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/TaskMessageCenter;->x(Lcom/snaptube/taskManager/TaskMessageCenter$d;)V

    return-void
.end method

.method private final d0()V
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->b:Lo/n01;

    sget-object v1, Lcom/snaptube/premium/files/downloading/DownloadingHelper;->a:Lcom/snaptube/premium/files/downloading/DownloadingHelper;

    invoke-virtual {v1, p0}, Lcom/snaptube/premium/files/downloading/DownloadingHelper;->q(Lo/jw1;)Lo/wu7;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/n01;->a(Lo/wu7;)V

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->b:Lo/n01;

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v1

    const/16 v2, 0x2711

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v1

    const-wide/16 v2, 0x12c

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lrx/c;->o0(JLjava/util/concurrent/TimeUnit;)Lrx/c;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->c:Lo/lu7;

    invoke-virtual {v1, v2}, Lrx/c;->w0(Lo/jf5;)Lo/wu7;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/n01;->a(Lo/wu7;)V

    return-void
.end method

.method public static final f0(Lo/dx2;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/dx2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public static final g0(Lo/dx2;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/dx2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic s(Lo/dx2;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->g0(Lo/dx2;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lo/dx2;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->f0(Lo/dx2;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final R()Lo/pq2;
    .locals 2

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->a:Lcom/snaptube/premium/files/DownloadTaskRepository;

    invoke-virtual {v0}, Lcom/snaptube/premium/files/DownloadTaskRepository;->p()Lo/pq2;

    move-result-object v0

    invoke-static {}, Lo/dp1;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-static {v0, v1}, Lo/tq2;->I(Lo/pq2;Lkotlin/coroutines/CoroutineContext;)Lo/pq2;

    move-result-object v0

    return-object v0
.end method

.method public final T()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->i:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final U()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->k:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final V()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->g:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final W()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final Y(J)V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->e:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->j:Lo/y05;

    iget-object p2, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->e:Ljava/util/Set;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lo/kd8;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/y05;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/snaptube/premium/files/pojo/DownloadData;)V
    .locals 2

    const-string v0, "download"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/snaptube/premium/files/pojo/DownloadData;->f()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->Y(J)V

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->f:Lo/y05;

    new-instance v1, Lo/su1$d;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lo/su1$d;-><init>(Z)V

    invoke-virtual {v0, v1}, Lo/y05;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public final e0()V
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->d:Lo/wu7;

    invoke-static {v0}, Lo/fv7;->a(Lo/wu7;)V

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->c:Lo/lu7;

    sget-object v1, Lcom/snaptube/premium/files/downloading/DownloadingViewModel$subscriptionRefresh$1;->INSTANCE:Lcom/snaptube/premium/files/downloading/DownloadingViewModel$subscriptionRefresh$1;

    new-instance v2, Lo/ix1;

    invoke-direct {v2, v1}, Lo/ix1;-><init>(Lo/dx2;)V

    invoke-virtual {v0, v2}, Lrx/c;->E(Lo/xw2;)Lrx/c;

    move-result-object v0

    sget-object v1, Lo/a58;->b:Lrx/d;

    invoke-virtual {v0, v1}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object v0

    sget-object v1, Lcom/snaptube/premium/files/downloading/DownloadingViewModel$subscriptionRefresh$2;->INSTANCE:Lcom/snaptube/premium/files/downloading/DownloadingViewModel$subscriptionRefresh$2;

    new-instance v2, Lo/jx1;

    invoke-direct {v2, v1}, Lo/jx1;-><init>(Lo/dx2;)V

    invoke-virtual {v0, v2}, Lrx/c;->U(Lo/xw2;)Lrx/c;

    move-result-object v0

    invoke-virtual {v0}, Lrx/c;->d0()Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object v0

    const-string v1, "observeOn(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/snaptube/premium/files/downloading/DownloadingViewModel$subscriptionRefresh$3;

    invoke-direct {v1, p0}, Lcom/snaptube/premium/files/downloading/DownloadingViewModel$subscriptionRefresh$3;-><init>(Lcom/snaptube/premium/files/downloading/DownloadingViewModel;)V

    invoke-static {v0, v1}, Lcom/snaptube/base/ktx/ObservableKt;->i(Lrx/c;Lo/dx2;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->d:Lo/wu7;

    return-void
.end method

.method public f(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const-string v0, "pathList"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idList"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->f:Lo/y05;

    new-instance v1, Lo/su1$a;

    invoke-direct {v1, p1, p2}, Lo/su1$a;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lo/y05;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public h(Lcom/snaptube/premium/files/pojo/DownloadData;)V
    .locals 3

    const-string v0, "download"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/snaptube/premium/reyclerbin/DeleteHelper;->a:Lcom/snaptube/premium/reyclerbin/DeleteHelper;

    invoke-virtual {v0}, Lcom/snaptube/premium/reyclerbin/DeleteHelper;->b()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/premium/files/pojo/DownloadData;->f()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->f:Lo/y05;

    new-instance v1, Lo/su1$b;

    invoke-direct {v1, p1}, Lo/su1$b;-><init>(Lcom/snaptube/premium/files/pojo/DownloadData;)V

    invoke-virtual {v0, v1}, Lo/y05;->p(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public i(Lcom/snaptube/premium/files/pojo/DownloadData;)V
    .locals 2

    const-string v0, "download"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->f:Lo/y05;

    new-instance v1, Lo/su1$c;

    invoke-direct {v1, p1}, Lo/su1$c;-><init>(Lcom/snaptube/premium/files/pojo/DownloadData;)V

    invoke-virtual {v0, v1}, Lo/y05;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public n(Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 2

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->Y(J)V

    return-void
.end method

.method public o(Ljava/util/List;)V
    .locals 2

    const-string v0, "taskId"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->j:Lo/y05;

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->e:Ljava/util/Set;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/kd8;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/y05;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public onCleared()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->b:Lo/n01;

    invoke-virtual {v0}, Lo/n01;->b()V

    invoke-direct {p0}, Lcom/snaptube/premium/files/downloading/DownloadingViewModel;->a0()V

    invoke-super {p0}, Lo/mx8;->onCleared()V

    return-void
.end method
