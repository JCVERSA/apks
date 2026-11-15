.class Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager;->postRecommendContent(Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;Ljava/lang/String;Lcom/transsion/dbdata/beans/onlinevideo/RecommendBean;Ljava/lang/Class;Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;)V
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
.field final synthetic val$callback:Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$1;->val$callback:Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;

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

    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$1;->val$callback:Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;->onFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onNext(Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$1;->val$callback:Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$ResultCallBack;->onSucess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/vishaapis/onlinevideo/RecommendManager$1;->onNext(Lcom/transsion/dbdata/beans/onlinevideo/RecommendResultBean;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
