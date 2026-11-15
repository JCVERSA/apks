.class public Lcom/transsion/magicvideo/model/PlayListDataNew;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/transsion/magicvideo/model/PlayListDataNew;


# instance fields
.field private final mCurrentPlayList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/model/PlayListDataNew;->mCurrentPlayList:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static getInstance()Lcom/transsion/magicvideo/model/PlayListDataNew;
    .locals 1

    sget-object v0, Lcom/transsion/magicvideo/model/PlayListDataNew;->instance:Lcom/transsion/magicvideo/model/PlayListDataNew;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/magicvideo/model/PlayListDataNew;

    invoke-direct {v0}, Lcom/transsion/magicvideo/model/PlayListDataNew;-><init>()V

    sput-object v0, Lcom/transsion/magicvideo/model/PlayListDataNew;->instance:Lcom/transsion/magicvideo/model/PlayListDataNew;

    :cond_0
    sget-object v0, Lcom/transsion/magicvideo/model/PlayListDataNew;->instance:Lcom/transsion/magicvideo/model/PlayListDataNew;

    return-object v0
.end method


# virtual methods
.method public getPlayList()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/magicvideo/model/PlayListDataNew;->mCurrentPlayList:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public updatePlayList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/media/MediaItem;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/magicvideo/model/PlayListDataNew;->mCurrentPlayList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
