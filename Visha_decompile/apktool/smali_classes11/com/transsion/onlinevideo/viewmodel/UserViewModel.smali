.class public Lcom/transsion/onlinevideo/viewmodel/UserViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public a:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visha_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/transsion/onlinevideo/viewmodel/UserViewModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/onlinevideo/viewmodel/UserViewModel;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/UserViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/onlinevideo/viewmodel/UserViewModel;Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/viewmodel/UserViewModel;->e(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;
    .locals 0

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/UserViewModel;->d(Landroid/content/Context;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;)Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;
    .locals 3

    invoke-static {}, Lcom/transsion/retrofit/cache/CacheManager;->getInstance()Lcom/transsion/retrofit/cache/CacheManager;

    move-result-object p0

    const-string v0, "user_info_cache_key"

    invoke-virtual {p0, v0}, Lcom/transsion/retrofit/cache/CacheManager;->getCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-static {p0, v0}, Lfi1;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;-><init>()V

    :cond_0
    sget-object v0, Lcom/transsion/onlinevideo/viewmodel/UserViewModel;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserInfoBean:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public c()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/UserViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final synthetic e(Lcom/transsion/dbdata/beans/onlinevideo/UserInfoBean;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/UserViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lgkb;

    invoke-direct {v0}, Lgkb;-><init>()V

    invoke-virtual {p1, v0}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lhkb;

    invoke-direct {v0, p0}, Lhkb;-><init>(Lcom/transsion/onlinevideo/viewmodel/UserViewModel;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method
