.class public abstract Lcom/transsion/retrofit/callback/CallbackWithState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/retrofit/cache/CacheCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/retrofit/reponse/BaseResponse;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/retrofit/cache/CacheCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected mParam:Lcom/transsion/retrofit/callback/RequestCallback$Param;

.field protected timeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/retrofit/callback/RequestCallback$Param;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/retrofit/callback/CallbackWithState;->mParam:Lcom/transsion/retrofit/callback/RequestCallback$Param;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/retrofit/callback/RequestCallback$Param;J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/retrofit/callback/CallbackWithState;->mParam:Lcom/transsion/retrofit/callback/RequestCallback$Param;

    .line 5
    iput-wide p2, p0, Lcom/transsion/retrofit/callback/CallbackWithState;->timeStamp:J

    return-void
.end method


# virtual methods
.method public abstract onFailture(Lcom/transsion/retrofit/reponse/ResponseUtil$State;)V
.end method

.method public onFailure(Ljq0;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljq0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq0<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/transsion/retrofit/callback/CallbackWithState;->mParam:Lcom/transsion/retrofit/callback/RequestCallback$Param;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/retrofit/callback/RequestCallback$Param;->isDestroy()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/transsion/retrofit/reponse/ResponseUtil;->checkResult(Ljava/lang/Throwable;)Lcom/transsion/retrofit/reponse/ResponseUtil$State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/retrofit/callback/CallbackWithState;->onFailture(Lcom/transsion/retrofit/reponse/ResponseUtil$State;)V

    return-void
.end method

.method public onGetCache(Ljq0;Lgu8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq0<",
            "TT;>;",
            "Lgu8<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Ljq0;Lgu8;)V
    .locals 1
    .param p1    # Ljq0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lgu8;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljq0<",
            "TT;>;",
            "Lgu8<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/transsion/retrofit/callback/CallbackWithState;->mParam:Lcom/transsion/retrofit/callback/RequestCallback$Param;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/retrofit/callback/RequestCallback$Param;->isDestroy()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/transsion/retrofit/reponse/ResponseUtil;->checkResult(Lgu8;)Lcom/transsion/retrofit/reponse/ResponseUtil$State;

    move-result-object p1

    iget-boolean v0, p1, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->isSucess:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/transsion/retrofit/callback/CallbackWithState;->onSuccess(Lgu8;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/retrofit/callback/CallbackWithState;->onFailture(Lcom/transsion/retrofit/reponse/ResponseUtil$State;)V

    :goto_0
    return-void
.end method

.method public abstract onSuccess(Lgu8;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgu8<",
            "TT;>;)V"
        }
    .end annotation
.end method
