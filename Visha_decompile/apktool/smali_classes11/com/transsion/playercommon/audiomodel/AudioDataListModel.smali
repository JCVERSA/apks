.class public Lcom/transsion/playercommon/audiomodel/AudioDataListModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# instance fields
.field public final a:Lgd1;

.field public b:Landroidx/lifecycle/MutableLiveData;


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

    iput-object p1, p0, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->a:Lgd1;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->b:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->g(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/playercommon/audiomodel/AudioDataListModel;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->e()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->f(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/Boolean;)V
    .locals 1

    const-string p0, "AudioDataListModel"

    const-string v0, "preloadAllAudioDataList end"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic g(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "AudioDataListModel"

    const-string v1, "preloadAllAudioDataList failed: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final synthetic e()Ljava/lang/Boolean;
    .locals 2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0}, Lao;->k0()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->i(Ljava/util/List;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public h()V
    .locals 3

    new-instance v0, Lbo;

    invoke-direct {v0, p0}, Lbo;-><init>(Lcom/transsion/playercommon/audiomodel/AudioDataListModel;)V

    invoke-static {v0}, Lmc7;->D(Ljava/util/concurrent/Callable;)Lmc7;

    move-result-object v0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object v0

    new-instance v1, Lco;

    invoke-direct {v1}, Lco;-><init>()V

    new-instance v2, Leo;

    invoke-direct {v2}, Leo;-><init>()V

    invoke-virtual {v0, v1, v2}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->a:Lgd1;

    invoke-virtual {p0, v0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public i(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onCleared()V
    .locals 0

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    iget-object p0, p0, Lcom/transsion/playercommon/audiomodel/AudioDataListModel;->a:Lgd1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lgd1;->d()V

    :cond_0
    return-void
.end method
