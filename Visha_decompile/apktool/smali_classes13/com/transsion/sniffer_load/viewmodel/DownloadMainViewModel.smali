.class public Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/MutableLiveData;

.field public b:Landroidx/lifecycle/MutableLiveData;

.field public c:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->m(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;Landroid/content/Context;Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)Lcom/transsion/dbdata/beans/sniff/DownloadMain;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->k(Landroid/content/Context;Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->n(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;Lcom/transsion/dbdata/beans/sniff/DownloadMain;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->l(Lcom/transsion/dbdata/beans/sniff/DownloadMain;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;Lcom/transsion/dbdata/beans/sniff/DownloadMain;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->r(Lcom/transsion/dbdata/beans/sniff/DownloadMain;)V

    return-void
.end method


# virtual methods
.method public f(Landroid/content/Context;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lk03;

    invoke-direct {v1, p0, p1}, Lk03;-><init>(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Ll03;

    invoke-direct {v0, p0}, Ll03;-><init>(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public g(Landroid/content/Context;)V
    .locals 1

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    new-instance v0, Lm03;

    invoke-direct {v0, p0}, Lm03;-><init>(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)V

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

    new-instance v0, Ln03;

    invoke-direct {v0, p0}, Ln03;-><init>(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public h()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public i()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public j()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final synthetic k(Landroid/content/Context;Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)Lcom/transsion/dbdata/beans/sniff/DownloadMain;
    .locals 1

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p2

    const-string v0, "download_main_cache"

    invoke-virtual {p2, v0}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    invoke-static {p2, v0}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    if-nez p2, :cond_0

    new-instance p2, Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->q(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain;)V

    :cond_0
    return-object p2
.end method

.method public final synthetic l(Lcom/transsion/dbdata/beans/sniff/DownloadMain;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->r(Lcom/transsion/dbdata/beans/sniff/DownloadMain;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic m(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p1

    const-string v0, "download_mi_media_library_cache"

    invoke-virtual {p1, v0}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$3;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$3;-><init>(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p1, p0}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final synthetic n(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public o(Landroid/content/Context;)V
    .locals 0

    new-instance p1, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$a;

    invoke-direct {p1, p0}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$a;-><init>(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)V

    invoke-static {}, Lpy2;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lpy2;->d(Lzf1;Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 3

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;->getInstance()Lcom/transsion/playercommon/vishaapis/onlinevideo/OnlineVideoApiManager;

    move-result-object v0

    const-class v1, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    invoke-virtual {v0, v1}, Lcom/transsion/retrofit/factory/BaseAPIManager;->getApi(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lcom/transsion/playercommon/vishaapis/onlinevideo/IOnlineVideoApiService;->getMIDataList(II)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$b;

    invoke-direct {v1, p0}, Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel$b;-><init>(Lcom/transsion/sniffer_load/viewmodel/DownloadMainViewModel;)V

    invoke-virtual {v0, v1}, Lmc7;->subscribe(Lpd7;)V

    return-void
.end method

.method public q(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain;)V
    .locals 8

    if-nez p2, :cond_0

    new-instance p2, Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    invoke-direct {p2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain;-><init>()V

    :cond_0
    new-instance p0, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/sniffer_load/R$string;->empty_web_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->setCategory_name(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->setWebsite_type(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;->setData_list(Ljava/util/List;)V

    new-instance v1, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;-><init>()V

    const-string v2, "Instagram"

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->setWebsite_name(Ljava/lang/String;)V

    const-string v2, "https://m.instagram.com/"

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->setWebsite_link(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/sniffer_load/R$drawable;->instagram:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->setIcon(Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;

    invoke-direct {v2}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;-><init>()V

    const-string v5, "Tiktok"

    invoke-virtual {v2, v5}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->setWebsite_name(Ljava/lang/String;)V

    const-string v5, "https://m.tiktok.com"

    invoke-virtual {v2, v5}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->setWebsite_link(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/sniffer_load/R$drawable;->tiktok:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->setIcon(Ljava/lang/String;)V

    new-instance v5, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;

    invoke-direct {v5}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;-><init>()V

    const-string v6, "Tumblr"

    invoke-virtual {v5, v6}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->setWebsite_name(Ljava/lang/String;)V

    const-string v6, "https://www.tumblr.com/explore/video"

    invoke-virtual {v5, v6}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->setWebsite_link(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/sniffer_load/R$drawable;->tumblr:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain$ItemData;->setIcon(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    filled-new-array {p0}, [Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/dbdata/beans/sniff/DownloadMain;->setWebsite_category_list(Ljava/util/List;)V

    return-void
.end method

.method public final r(Lcom/transsion/dbdata/beans/sniff/DownloadMain;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/dbdata/beans/sniff/DownloadMain;

    invoke-direct {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/sniff/DownloadMain;->getWebsite_category_list()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lo03;

    invoke-direct {p1}, Lo03;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    :cond_1
    return-void
.end method
