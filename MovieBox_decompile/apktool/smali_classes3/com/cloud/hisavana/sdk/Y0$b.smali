.class Lcom/cloud/hisavana/sdk/Y0$b;
.super Lcom/cloud/hisavana/net/impl/StringCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/Y0;->m(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Lcom/cloud/hisavana/sdk/manager/g$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/cloud/hisavana/sdk/manager/g$c;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic f:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;


# direct methods
.method constructor <init>(ZLcom/cloud/hisavana/sdk/manager/g$c;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/Y0$b;->c:Lcom/cloud/hisavana/sdk/manager/g$c;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/Y0$b;->d:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/Y0$b;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/cloud/hisavana/sdk/Y0$b;->f:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/net/impl/StringCallback;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public x(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/Y0$b;->c:Lcom/cloud/hisavana/sdk/manager/g$c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0xc8

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/Y0$b;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/cloud/hisavana/sdk/manager/g$c;->b(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/Y0$b;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/manager/g$c;->a(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/Y0$b;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/Y0$b;->f:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/Y0$b;->d:Ljava/lang/String;

    .line 25
    .line 26
    move v5, p1

    .line 27
    move-object v6, p2

    .line 28
    move-object v7, p3

    .line 29
    invoke-static/range {v2 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->i0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "sendRequestToServer --> onFailure --> statusCode = "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, ",url "

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/Y0$b;->d:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, ",throwable "

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p3, "ssp_track"

    .line 72
    .line 73
    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public y(ILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/Y0$b;->c:Lcom/cloud/hisavana/sdk/manager/g$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/Y0$b;->d:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/manager/g$c;->a(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/Y0$b;->e:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/Y0$b;->f:Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/Y0$b;->d:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    move v5, p1

    .line 18
    move-object v6, p2

    .line 19
    invoke-static/range {v2 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->i0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "sendRequestToServer - onSuccess - statusCode = "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " url "

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/Y0$b;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "ssp_track"

    .line 54
    .line 55
    invoke-virtual {p2, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
