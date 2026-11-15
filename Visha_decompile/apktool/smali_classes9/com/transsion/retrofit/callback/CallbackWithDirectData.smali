.class public Lcom/transsion/retrofit/callback/CallbackWithDirectData;
.super Lcom/transsion/retrofit/callback/CallbackWithState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/transsion/retrofit/reponse/BaseResponse;",
        ">",
        "Lcom/transsion/retrofit/callback/CallbackWithState<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;


# direct methods
.method public constructor <init>(Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/retrofit/callback/CallbackWithState;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/retrofit/callback/CallbackWithDirectData;->mListener:Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;Lcom/transsion/retrofit/callback/RequestCallback$Param;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/transsion/retrofit/callback/CallbackWithState;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/transsion/retrofit/callback/CallbackWithDirectData;->mListener:Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;

    .line 5
    iput-object p2, p0, Lcom/transsion/retrofit/callback/CallbackWithState;->mParam:Lcom/transsion/retrofit/callback/RequestCallback$Param;

    return-void
.end method


# virtual methods
.method public onFailture(Lcom/transsion/retrofit/reponse/ResponseUtil$State;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/retrofit/callback/CallbackWithDirectData;->mListener:Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;

    if-eqz p0, :cond_0

    iget-object v0, p1, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->code:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/retrofit/reponse/ResponseUtil$State;->toastMsg:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;->returnDataFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lgu8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgu8<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/retrofit/callback/CallbackWithDirectData;->mListener:Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lgu8;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/retrofit/callback/RequestCallback$OnRequestDataListener;->returnDataSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
