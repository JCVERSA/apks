.class public Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/LiveData;

.field public final b:Lig0;

.field public final c:Landroidx/lifecycle/MutableLiveData;

.field public d:Landroidx/lifecycle/LiveData;


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

    iput-object v0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->a:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->c(Landroid/content/Context;)Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->a()Lig0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->b:Lig0;

    invoke-interface {v0}, Lig0;->getAll()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->a:Landroidx/lifecycle/LiveData;

    invoke-static {p1}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->c(Landroid/content/Context;)Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->d()Ldv8;

    move-result-object v0

    invoke-interface {v0}, Ldv8;->getAllForLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->d:Landroidx/lifecycle/LiveData;

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->B(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic I(Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/sniffer_load/data/ReviewHistory;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->c(Landroid/content/Context;)Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->d()Ldv8;

    move-result-object p0

    invoke-interface {p0, p1}, Ldv8;->addReviewHistoryWithLimit(Lcom/transsion/sniffer_load/data/ReviewHistory;)J

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic J(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic L(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic N(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic P(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic R(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic S(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;
    .locals 1

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p0

    const-string v0, "bookmarks_cache"

    invoke-virtual {p0, v0}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;

    invoke-static {p0, v0}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static synthetic U(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->setLoadFromCode(Z)V

    return-void
.end method

.method public static synthetic V(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;Landroid/content/Context;)Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;
    .locals 2

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object v0

    const-string v1, "bookmarks_cache"

    invoke-virtual {v0, v1, p1}, Lcom/transsion/retrofit/cache/CacheManager;->setCache(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic W(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->c(Landroid/content/Context;)Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->a()Lig0;

    move-result-object p0

    invoke-static {p2}, Lb23;->i(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lig0;->updateBitmap(Ljava/lang/String;[B)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic X(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic Y(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->c(Landroid/content/Context;)Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->a()Lig0;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lig0;->updateImgUrl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic Z(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic a(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;Ljava/lang/String;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->O(Ljava/lang/String;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->c0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic c(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;Landroid/content/Context;ILcom/transsion/dbdata/beans/sniff/BookmarkRequest;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->T(Landroid/content/Context;ILcom/transsion/dbdata/beans/sniff/BookmarkRequest;)V

    return-void
.end method

.method public static synthetic c0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->c(Landroid/content/Context;)Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->d()Ldv8;

    move-result-object p0

    invoke-static {p2}, Lb23;->i(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ldv8;->updateBitmap(Ljava/lang/String;[B)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->M(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic e(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->S(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->c(Landroid/content/Context;)Lcom/transsion/sniffer_load/database/BookmarkDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/database/BookmarkDatabase;->d()Ldv8;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ldv8;->updateImgUrl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->Y(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public static synthetic g(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->Z(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic h(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->f0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->e0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->J(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static j0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Llg0;

    invoke-direct {v1, p0, p1, p2}, Llg0;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lmg0;

    invoke-direct {p1}, Lmg0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public static synthetic k(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->a0(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lch0;

    invoke-direct {v1, p0, p1, p2}, Lch0;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Ldh0;

    invoke-direct {p1}, Ldh0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public static synthetic l(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;JLcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->Q(JLcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->X(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static m0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lkg0;

    invoke-direct {v1, p0, p1, p2}, Lkg0;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lvg0;

    invoke-direct {p1}, Lvg0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public static synthetic n(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;Landroid/content/Context;)Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->V(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;Landroid/content/Context;)Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;

    move-result-object p0

    return-object p0
.end method

.method public static n0(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Leh0;

    invoke-direct {v1, p0, p1, p2}, Leh0;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lfh0;

    invoke-direct {p1}, Lfh0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public static synthetic o(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->P(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic p(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->K(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->L(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic r(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->d0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic s(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->N(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic t(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->b0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic u(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->R(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic v(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->W(Lcom/transsion/playercommon/activities/BaseActivity;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/transsion/playercommon/activities/BaseActivity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->U(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    return-void
.end method

.method public static synthetic x(Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/sniffer_load/data/ReviewHistory;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->I(Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/sniffer_load/data/ReviewHistory;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic y(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->g0(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;)V

    return-void
.end method


# virtual methods
.method public A(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p2

    new-instance v0, Lpg0;

    invoke-direct {v0, p0, p1}, Lpg0;-><init>(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

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

    new-instance p1, Lqg0;

    invoke-direct {p1}, Lqg0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public B(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "need_default_bookmark_6"

    invoke-static {p1, v1, v0}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p1

    new-instance v0, Lah0;

    invoke-direct {v0, p0}, Lah0;-><init>(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)V

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

    new-instance p1, Lbh0;

    invoke-direct {p1}, Lbh0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public C()Ljava/util/List;
    .locals 5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v1, "https://m.instagram.com/"

    sget v2, Lcom/transsion/sniffer_load/R$drawable;->instagram:I

    const-string v3, "Instagram"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->setLoadFromCode(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v2, "https://m.tiktok.com"

    sget v3, Lcom/transsion/sniffer_load/R$drawable;->tiktok:I

    const-string v4, "Tiktok"

    invoke-direct {v0, v4, v2, v3}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->setLoadFromCode(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v2, "https://www.tumblr.com/explore/video"

    sget v3, Lcom/transsion/sniffer_load/R$drawable;->tumblr:I

    const-string v4, "Tumblr"

    invoke-direct {v0, v4, v2, v3}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->setLoadFromCode(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v2, "https://gomovies.sx/home"

    sget v3, Lcom/transsion/sniffer_load/R$drawable;->gomovies:I

    const-string v4, "GOmovies"

    invoke-direct {v0, v4, v2, v3}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->setLoadFromCode(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v2, "https://www.vidio.com"

    sget v3, Lcom/transsion/sniffer_load/R$drawable;->vidio:I

    const-string v4, "Vidio"

    invoke-direct {v0, v4, v2, v3}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->setLoadFromCode(Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public D(Ljava/lang/String;Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p2

    new-instance v0, Lng0;

    invoke-direct {v0, p0, p1}, Lng0;-><init>(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;Ljava/lang/String;)V

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

    new-instance p1, Log0;

    invoke-direct {p1}, Log0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public E(JLcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p3}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p3

    invoke-virtual {v0, p3}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p3

    new-instance v0, Ltg0;

    invoke-direct {v0, p0, p1, p2}, Ltg0;-><init>(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;J)V

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

    new-instance p1, Lug0;

    invoke-direct {p1}, Lug0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public F()Landroidx/lifecycle/LiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->a:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public G()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public H(Landroid/content/Context;I)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lrg0;

    invoke-direct {v1}, Lrg0;-><init>()V

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

    new-instance v1, Lsg0;

    invoke-direct {v1, p0, p1, p2}, Lsg0;-><init>(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public final synthetic K(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->b:Lig0;

    invoke-interface {p0, p1}, Lig0;->insertItem(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic M(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;
    .locals 2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v1, "https://m.facebook.com"

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v1, "https://vimeo.com/watch"

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v1, "https://m.youtube.com"

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v1, "https://www.twitter.com"

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v1, "https://fmovies.hn/home"

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v1, "https://gomovies.sx/home"

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v1, "https://www.ted.com/talks"

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v1, "https://www.dailymotion.com"

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v1, "https://vimeo.com"

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v1, "https://www.ted.com"

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v1, "https://gomoviefree.sc/home/"

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    const-string v1, "https://fmovies.co/home"

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/sniff/Bookmark;

    iget-object v1, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->b:Lig0;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/Bookmark;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lig0;->deleteItem(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic O(Ljava/lang/String;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->b:Lig0;

    invoke-interface {p0, p1}, Lig0;->deleteItem(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic Q(JLcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->b:Lig0;

    invoke-interface {p0, p1, p2}, Lig0;->deleteItemById(J)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic T(Landroid/content/Context;ILcom/transsion/dbdata/beans/sniff/BookmarkRequest;)V
    .locals 0

    invoke-virtual {p0, p3}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->g0(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->h0(Landroid/content/Context;I)V

    return-void
.end method

.method public final synthetic a0(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->b:Lig0;

    invoke-interface {p0, p1}, Lig0;->updateItem(Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final g0(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;->getResolveEntryKeys()Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->getDataList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->C()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->setDataList(Ljava/util/List;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->setSort(I)V

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;->setResolveEntryKeys(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;)V

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;->getPrefabricateBookmarkKeys()Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->getDataList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lwg0;

    invoke-direct {v1}, Lwg0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->setSort(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->setDataList(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;->setPrefabricateBookmarkKeys(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;)V

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;->getPosterKeys()Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->getDataList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    new-instance v0, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->setDataList(Ljava/util/List;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;->setSort(I)V

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;->setPosterKeys(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest$EntryKeysBean;)V

    :cond_6
    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public h0(Landroid/content/Context;I)V
    .locals 3

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getDownloadMain(J)Lmc7;

    move-result-object p2

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p2

    new-instance v0, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel$a;

    invoke-direct {v0, p0, p1}, Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel$a;-><init>(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public i0(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;Landroid/content/Context;)V
    .locals 0

    invoke-static {p2}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p0

    new-instance p2, Lzg0;

    invoke-direct {p2, p1}, Lzg0;-><init>(Lcom/transsion/dbdata/beans/sniff/BookmarkRequest;)V

    invoke-virtual {p0, p2}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-virtual {p0}, Lmc7;->Y()Lrc2;

    return-void
.end method

.method public l0(Lcom/transsion/dbdata/beans/sniff/Bookmark;Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p2

    invoke-virtual {v0, p2}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p2

    new-instance v0, Lxg0;

    invoke-direct {v0, p0, p1}, Lxg0;-><init>(Lcom/transsion/sniffer_load/viewmodel/BookmarksViewModel;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V

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

    new-instance p1, Lyg0;

    invoke-direct {p1}, Lyg0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public z(Lcom/transsion/sniffer_load/data/ReviewHistory;Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 1

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p0

    invoke-virtual {p2}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p0

    new-instance v0, Lgh0;

    invoke-direct {v0, p2, p1}, Lgh0;-><init>(Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/sniffer_load/data/ReviewHistory;)V

    invoke-virtual {p0, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance p1, Lhh0;

    invoke-direct {p1}, Lhh0;-><init>()V

    invoke-virtual {p0, p1}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method
