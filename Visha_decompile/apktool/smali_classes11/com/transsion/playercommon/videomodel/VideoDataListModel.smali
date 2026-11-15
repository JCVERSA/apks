.class public Lcom/transsion/playercommon/videomodel/VideoDataListModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# instance fields
.field public final a:Lgd1;

.field public b:Landroidx/lifecycle/MutableLiveData;

.field public c:Landroidx/lifecycle/MutableLiveData;

.field public d:Landroidx/lifecycle/MutableLiveData;

.field public e:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    new-instance p1, Lgd1;

    invoke-direct {p1}, Lgd1;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->a:Lgd1;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->c:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->e:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/playercommon/videomodel/VideoDataListModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->h()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->i(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->j(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/Boolean;)V
    .locals 1

    const-string p0, "VideoDataListModel"

    const-string v0, "preloadAllVideoDataList end"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic j(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "VideoDataListModel"

    const-string v1, "preloadAllAudioDataList failed: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public e()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final synthetic h()Ljava/lang/Boolean;
    .locals 5

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lpp3;->e(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x1e

    if-eqz v0, :cond_0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v3

    invoke-virtual {v3, v2}, Ltpb;->r(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v3

    invoke-virtual {v3, v2}, Ltpb;->U(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-static {v1}, Lls1;->a(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->m(Ljava/util/List;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preloadAllVideoDataList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "VideoDataListModel"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    invoke-virtual {v0, v2}, Ltpb;->e0(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lls1;->a(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->l(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preloadAllShortVideoDataList "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Ltpb;->O(ZIZ)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->n(Ljava/util/List;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "preloadAllVideoHistoryStates "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public k()V
    .locals 3

    new-instance v0, Lupb;

    invoke-direct {v0, p0}, Lupb;-><init>(Lcom/transsion/playercommon/videomodel/VideoDataListModel;)V

    invoke-static {v0}, Lmc7;->D(Ljava/util/concurrent/Callable;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lvpb;

    invoke-direct {v1}, Lvpb;-><init>()V

    new-instance v2, Lwpb;

    invoke-direct {v2}, Lwpb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->a:Lgd1;

    invoke-virtual {p0, v0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public l(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public m(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public o(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->e:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onCleared()V
    .locals 2

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    const-string v0, "VideoDataListModel"

    const-string v1, "onCleared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/VideoDataListModel;->a:Lgd1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lgd1;->d()V

    :cond_0
    return-void
.end method
