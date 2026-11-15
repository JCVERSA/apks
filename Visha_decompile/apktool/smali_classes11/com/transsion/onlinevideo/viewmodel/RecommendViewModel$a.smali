.class public Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->b(Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel$a;->a:Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult;->getSimpleMediaBean()Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;

    move-result-object p1

    iget-object v0, p1, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;->resultState:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    sget-object v1, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;->ERROR:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request mango recommend data error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_RecommendViewModel"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel$a;->a:Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->a(Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel$a;->a:Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->a(Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;->data:Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request mango recommend data failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "visha_RecommendViewModel"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel$a;->a:Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;

    invoke-static {p0}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;->a(Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSucess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/viewmodel/RecommendViewModel$a;->a(Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean$MangoResult;)V

    return-void
.end method
