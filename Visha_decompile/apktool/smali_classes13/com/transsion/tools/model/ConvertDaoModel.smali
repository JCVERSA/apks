.class public Lcom/transsion/tools/model/ConvertDaoModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"


# instance fields
.field public audioList:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/ConvertAudio;",
            ">;>;"
        }
    .end annotation
.end field

.field public convertingVideoList:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/ConvertingVideo;",
            ">;>;"
        }
    .end annotation
.end field

.field private listItemChanged:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


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

    iput-object p1, p0, Lcom/transsion/tools/model/ConvertDaoModel;->listItemChanged:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/transsion/tools/model/ConvertDaoModel;->flushPlayList()V

    return-void
.end method


# virtual methods
.method public flushPlayList()V
    .locals 4

    invoke-static {}, Lwe6;->e()Lwe6;

    move-result-object v0

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v2, Lrl8$a;

    invoke-static {}, Loa1;->e()I

    move-result v3

    invoke-direct {v2, v3}, Lrl8$a;-><init>(I)V

    const-class v3, Lcom/transsion/dbdata/database/ConvertAudio;

    invoke-static {v2, v3}, Lzj7;->c(Lrl8;Ljava/lang/Class;)Lsl8;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lwe6;->q(Lcom/transsion/dbdata/source/DataSourceScope;Lsl8;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/model/ConvertDaoModel;->audioList:Landroidx/lifecycle/LiveData;

    invoke-static {}, Lwe6;->e()Lwe6;

    move-result-object v0

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v2, Lrl8$j;

    invoke-static {}, Loa1;->e()I

    move-result v3

    invoke-direct {v2, v3}, Lrl8$j;-><init>(I)V

    const-class v3, Lcom/transsion/dbdata/database/ConvertingVideo;

    invoke-static {v2, v3}, Lzj7;->c(Lrl8;Ljava/lang/Class;)Lsl8;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lwe6;->q(Lcom/transsion/dbdata/source/DataSourceScope;Lsl8;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/model/ConvertDaoModel;->convertingVideoList:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public getConvertListData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/ConvertAudio;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/tools/model/ConvertDaoModel;->audioList:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public getConvertingVideoData()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/database/ConvertingVideo;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/tools/model/ConvertDaoModel;->convertingVideoList:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public getListItemChanged()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/tools/model/ConvertDaoModel;->listItemChanged:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public postListItemChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/model/ConvertDaoModel;->listItemChanged:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setListItemChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/model/ConvertDaoModel;->listItemChanged:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
