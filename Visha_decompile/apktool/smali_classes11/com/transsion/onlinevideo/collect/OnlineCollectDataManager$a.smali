.class public Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager$a;->b:Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 0

    return-void
.end method

.method public onComplete()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager$a;->b:Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    invoke-virtual {p0}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->g()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager$a;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
