.class public Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/LiveData;

.field public b:Ldv8;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->a:Landroidx/lifecycle/LiveData;

    invoke-static {p1}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->c(Landroid/content/Context;)Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->d()Ldv8;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->b:Ldv8;

    invoke-interface {p1}, Ldv8;->getAllByDESC()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->s()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->q()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lzf1;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->p(Lzf1;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;J)[B
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->o(J)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;Ljava/util/List;Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->m(Ljava/util/List;Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->n(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->l(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->k(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic n(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic p(Lzf1;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lzf1;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public h(Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lkr4;

    invoke-direct {v0, p0}, Lkr4;-><init>(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;)V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Llr4;

    invoke-direct {p1}, Llr4;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public i(Ljava/util/List;Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p2

    new-instance v0, Lir4;

    invoke-direct {v0, p0, p1}, Lir4;-><init>(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Ljr4;

    invoke-direct {p1}, Ljr4;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public j()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->a:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final synthetic k(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->b:Ldv8;

    invoke-interface {p0}, Ldv8;->deleteAll()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic m(Ljava/util/List;Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;)Ljava/lang/Boolean;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/sniffer_load/data/ReviewHistory;

    iget-object v0, p0, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->b:Ldv8;

    iget-wide v1, p2, Lcom/transsion/sniffer_load/data/ReviewHistory;->id:J

    invoke-interface {v0, v1, v2}, Ldv8;->deleteItem(J)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic o(J)[B
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->b:Ldv8;

    invoke-interface {p0, p1, p2}, Ldv8;->getBitmapById(J)[B

    move-result-object p0

    return-object p0
.end method

.method public final synthetic q()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;->b:Ldv8;

    invoke-interface {p0}, Ldv8;->trimExcessHistory()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public r(JLcom/transsion/playercommon/activities/BaseActivity;Lzf1;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lmr4;

    invoke-direct {v0, p0, p1, p2}, Lmr4;-><init>(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;J)V

    invoke-static {v0}, Lmc7;->D(Ljava/util/concurrent/Callable;)Lmc7;

    move-result-object p0

    invoke-virtual {p3}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lnr4;

    invoke-direct {p1, p4}, Lnr4;-><init>(Lzf1;)V

    invoke-virtual {p0, p4, p1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    :cond_1
    :goto_0
    return-void
.end method

.method public final s()V
    .locals 1

    new-instance v0, Lhr4;

    invoke-direct {v0, p0}, Lhr4;-><init>(Lcom/transsion/sniffer_load/viewmodel/HistoryViewModel;)V

    invoke-static {v0}, Lmc7;->D(Ljava/util/concurrent/Callable;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-virtual {p0}, Lmc7;->Y()Lrc2;

    return-void
.end method
