.class public Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/LiveData;

.field public b:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public c:Landroidx/lifecycle/MutableLiveData;

.field public d:Landroidx/lifecycle/MutableLiveData;

.field public e:Landroidx/lifecycle/MutableLiveData;

.field public f:Landroidx/lifecycle/MutableLiveData;


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

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->c:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel$1;-><init>(Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public c()Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public d(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->f(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->e(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/transsion/playercommon/utils/AudioCoverProcessorUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;->setCustomCoverPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lao;->U()Lao;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v1, v2, v0, p1}, Lao;->s0(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    invoke-virtual {p1}, Lao;->j0()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->a:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public f(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method

.method public g(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
