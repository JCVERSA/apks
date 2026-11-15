.class public final Lcom/transsion/mediationads/manager/MediaTionADMangerCore$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;


# direct methods
.method public constructor <init>(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$b;->b:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/retrofit/reponse/BaseResponse;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$b;->b:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    invoke-static {v0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->e(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNext Ad strategy config request successful: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/mediationads/beans/AdDisplayResponse;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$b;->b:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    invoke-static {p0, p1}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->f(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;Lcom/transsion/mediationads/beans/AdDisplayResponse;)V

    invoke-static {p0, p1}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->c(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;Lcom/transsion/mediationads/beans/AdDisplayResponse;)V

    invoke-static {p0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->e(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Ad strategy config cached successfully"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/retrofit/reponse/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNext Invalid response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$b;->b:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    invoke-static {p0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->e(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad strategy config request failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$b;->b:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    invoke-static {v0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->e(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$b;->b:Lcom/transsion/mediationads/manager/MediaTionADMangerCore;

    invoke-static {p0}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore;->g(Lcom/transsion/mediationads/manager/MediaTionADMangerCore;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/retrofit/reponse/BaseResponse;

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/manager/MediaTionADMangerCore$b;->a(Lcom/transsion/retrofit/reponse/BaseResponse;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    const-string p0, "d"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
