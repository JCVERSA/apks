.class public Lcom/transsion/retrofit/reponse/BaseResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private code:I

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private records:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private size:I

.field private sub_code:I

.field private sub_message:Ljava/lang/String;

.field private success:Z

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    iget p0, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->code:I

    return p0
.end method

.method public getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public getRecords()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->records:Ljava/lang/Object;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->size:I

    return p0
.end method

.method public getSub_code()I
    .locals 0

    iget p0, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->sub_code:I

    return p0
.end method

.method public getSub_message()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->sub_message:Ljava/lang/String;

    return-object p0
.end method

.method public getTotal()I
    .locals 0

    iget p0, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->total:I

    return p0
.end method

.method public isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->success:Z

    return p0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->code:I

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->data:Ljava/lang/Object;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->msg:Ljava/lang/String;

    return-void
.end method

.method public setRecords(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->records:Ljava/lang/Object;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->size:I

    return-void
.end method

.method public setSub_code(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->sub_code:I

    return-void
.end method

.method public setSub_message(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->sub_message:Ljava/lang/String;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->total:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseResponse{code=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", msg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->msg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", records="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/retrofit/reponse/BaseResponse;->records:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
