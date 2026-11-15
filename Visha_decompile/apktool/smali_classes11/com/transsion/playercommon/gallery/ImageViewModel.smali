.class public Lcom/transsion/playercommon/gallery/ImageViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/MutableLiveData;

.field public b:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/gallery/ImageViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/gallery/ImageViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/gallery/ImageViewModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/gallery/ImageViewModel;->j(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/gallery/ImageViewModel;Lne6;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/gallery/ImageViewModel;->h(Lne6;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;JZLcom/transsion/playercommon/gallery/ImageViewModel;)Lne6;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/playercommon/gallery/ImageViewModel;->g(Landroid/content/Context;JZLcom/transsion/playercommon/gallery/ImageViewModel;)Lne6;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;Lcom/transsion/playercommon/gallery/ImageViewModel;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/gallery/ImageViewModel;->i(Landroid/content/Context;Lcom/transsion/playercommon/gallery/ImageViewModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/content/Context;JZLcom/transsion/playercommon/gallery/ImageViewModel;)Lne6;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lad4;->k(Landroid/content/Context;JZ)Lne6;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroid/content/Context;Lcom/transsion/playercommon/gallery/ImageViewModel;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lad4;->j(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/gallery/ImageViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public f()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/gallery/ImageViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final synthetic h(Lne6;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/gallery/ImageViewModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic j(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/gallery/ImageViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public k(Landroid/content/Context;JZ)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lhy4;

    invoke-direct {v1, p1, p2, p3, p4}, Lhy4;-><init>(Landroid/content/Context;JZ)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Liy4;

    invoke-direct {p2, p0}, Liy4;-><init>(Lcom/transsion/playercommon/gallery/ImageViewModel;)V

    invoke-virtual {p1, p2}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public l(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v1}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Ljy4;

    invoke-direct {v1, p1}, Ljy4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance v0, Lky4;

    invoke-direct {v0, p0}, Lky4;-><init>(Lcom/transsion/playercommon/gallery/ImageViewModel;)V

    invoke-virtual {p1, v0}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method
