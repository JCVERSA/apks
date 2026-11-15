.class Lcom/transsion/tools/model/SkinsViewModel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/model/SkinsViewModel;->getOnlineData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpd7;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/tools/model/SkinsViewModel;

.field final synthetic val$page:I

.field final synthetic val$pageSize:I


# direct methods
.method public constructor <init>(Lcom/transsion/tools/model/SkinsViewModel;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/tools/model/SkinsViewModel$2;->this$0:Lcom/transsion/tools/model/SkinsViewModel;

    iput p2, p0, Lcom/transsion/tools/model/SkinsViewModel$2;->val$page:I

    iput p3, p0, Lcom/transsion/tools/model/SkinsViewModel$2;->val$pageSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/model/SkinsViewModel$2;->this$0:Lcom/transsion/tools/model/SkinsViewModel;

    iget-object p0, p0, Lcom/transsion/tools/model/SkinsViewModel;->mLoadStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onNext(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/retrofit/reponse/BaseResponse<",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/SkinsMenu;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/transsion/tools/model/SkinsViewModel$2;->this$0:Lcom/transsion/tools/model/SkinsViewModel;

    invoke-static {v0}, Lcom/transsion/tools/model/SkinsViewModel;->d(Lcom/transsion/tools/model/SkinsViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getRecords()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    iget v3, p0, Lcom/transsion/tools/model/SkinsViewModel$2;->val$page:I

    if-ne v3, v2, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iget-object v3, p0, Lcom/transsion/tools/model/SkinsViewModel$2;->this$0:Lcom/transsion/tools/model/SkinsViewModel;

    invoke-virtual {v3, v1}, Lcom/transsion/tools/model/SkinsViewModel;->insertCache(Ljava/util/List;)V

    .line 9
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getTotal()I

    move-result p1

    int-to-float v1, p1

    .line 11
    iget v3, p0, Lcom/transsion/tools/model/SkinsViewModel$2;->val$pageSize:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 12
    iget v3, p0, Lcom/transsion/tools/model/SkinsViewModel$2;->val$page:I

    if-lt v3, v1, :cond_3

    if-ne v3, v1, :cond_2

    .line 13
    iget v1, p0, Lcom/transsion/tools/model/SkinsViewModel$2;->val$pageSize:I

    rem-int/2addr p1, v1

    if-lez p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/transsion/tools/model/SkinsViewModel$2;->this$0:Lcom/transsion/tools/model/SkinsViewModel;

    invoke-static {p1}, Lcom/transsion/tools/model/SkinsViewModel;->d(Lcom/transsion/tools/model/SkinsViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 15
    :cond_2
    iget-object p0, p0, Lcom/transsion/tools/model/SkinsViewModel$2;->this$0:Lcom/transsion/tools/model/SkinsViewModel;

    iget-object p0, p0, Lcom/transsion/tools/model/SkinsViewModel;->mLoadStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/transsion/tools/model/SkinsViewModel$2;->this$0:Lcom/transsion/tools/model/SkinsViewModel;

    invoke-static {p1}, Lcom/transsion/tools/model/SkinsViewModel;->d(Lcom/transsion/tools/model/SkinsViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 17
    iget-object p0, p0, Lcom/transsion/tools/model/SkinsViewModel$2;->this$0:Lcom/transsion/tools/model/SkinsViewModel;

    iget-object p0, p0, Lcom/transsion/tools/model/SkinsViewModel;->mLoadStatus:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_4
    iget-object p0, p0, Lcom/transsion/tools/model/SkinsViewModel$2;->this$0:Lcom/transsion/tools/model/SkinsViewModel;

    iget-object p0, p0, Lcom/transsion/tools/model/SkinsViewModel;->mLoadStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/tools/model/SkinsViewModel$2;->onNext(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
