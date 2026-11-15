.class public Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/LiveData;

.field public final b:Lig0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->a:Landroidx/lifecycle/LiveData;

    invoke-static {p1}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->c(Landroid/content/Context;)Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->a()Lig0;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->b:Lig0;

    invoke-interface {p1}, Lig0;->getAll()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->a:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->j(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->o(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;JLcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->l(JLcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->n(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->k(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->m(Ljava/lang/Boolean;)V

    return-void
.end method

.method private static synthetic k(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method private static synthetic m(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method private static synthetic o(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public g(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p2

    new-instance v0, Lkh0;

    invoke-direct {v0, p0, p1}, Lkh0;-><init>(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

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

    new-instance p1, Llh0;

    invoke-direct {p1}, Llh0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public h(JLcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p3}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p3

    invoke-virtual {v0, p3}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p3

    new-instance v0, Lmh0;

    invoke-direct {v0, p0, p1, p2}, Lmh0;-><init>(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;J)V

    invoke-virtual {p3, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lnh0;

    invoke-direct {p1}, Lnh0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public i()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->a:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final synthetic j(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->b:Lig0;

    invoke-interface {p0, p1}, Lig0;->insertItem(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic l(JLcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->b:Lig0;

    invoke-interface {p0, p1, p2}, Lig0;->deleteItemById(J)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic n(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;->b:Lig0;

    invoke-interface {p0, p1}, Lig0;->updateItem(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public p(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p2

    new-instance v0, Lih0;

    invoke-direct {v0, p0, p1}, Lih0;-><init>(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModelNew;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

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

    new-instance p1, Ljh0;

    invoke-direct {p1}, Ljh0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method
