.class public Lcom/cloud/hisavana/sdk/k1$b;
.super Lcom/cloud/hisavana/net/impl/StringCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/k1;->m(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/manager/b$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/cloud/hisavana/sdk/manager/b$c;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic f:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;


# direct methods
.method public constructor <init>(ZLcom/cloud/hisavana/sdk/manager/b$c;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 0

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/k1$b;->c:Lcom/cloud/hisavana/sdk/manager/b$c;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/k1$b;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/k1$b;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/k1$b;->f:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/net/impl/StringCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public x(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k1$b;->c:Lcom/cloud/hisavana/sdk/manager/b$c;

    if-eqz v0, :cond_1

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k1$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/cloud/hisavana/sdk/manager/b$c;->b(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k1$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/manager/b$c;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/k1$b;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/k1$b;->f:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/k1$b;->d:Ljava/lang/String;

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->o0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRequestToServer --> onFailure --> statusCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",url "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/k1$b;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",throwable "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ssp_track"

    invoke-virtual {p2, p1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public y(ILjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k1$b;->c:Lcom/cloud/hisavana/sdk/manager/b$c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k1$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/manager/b$c;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/k1$b;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/k1$b;->f:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/k1$b;->d:Ljava/lang/String;

    const/4 v7, 0x0

    move v5, p1

    move-object v6, p2

    invoke-static/range {v2 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->o0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRequestToServer - onSuccess - statusCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " url "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/k1$b;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "ssp_track"

    invoke-virtual {p2, p1, p0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
