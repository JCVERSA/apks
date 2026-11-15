.class Lcom/mbridge/msdk/advanced/manager/b$g;
.super Lcom/mbridge/msdk/advanced/request/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/advanced/manager/b;->a(Ljava/lang/String;I)Lcom/mbridge/msdk/advanced/request/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lcom/mbridge/msdk/advanced/manager/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/manager/b;ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->e:Ljava/lang/String;

    .line 4
    .line 5
    iput p4, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->f:I

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/advanced/request/b;-><init>(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/advanced/manager/b;->h(Lcom/mbridge/msdk/advanced/manager/b;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->e:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, p1, p2, v1, v2}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/b;->getRequestId()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-static {}, Lcom/mbridge/msdk/advanced/manager/b;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/mbridge/msdk/advanced/manager/b;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "onLoadCompaginSuccess \u6570\u636e\u521a\u8bf7\u6c42\u5931\u8d25"

    .line 48
    .line 49
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;)Landroid/os/Handler;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;)Landroid/os/Handler;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v2, Lcom/mbridge/msdk/advanced/manager/b$g$a;

    .line 67
    .line 68
    invoke-direct {v2, p0, v0, p2, p1}, Lcom/mbridge/msdk/advanced/manager/b$g$a;-><init>(Lcom/mbridge/msdk/advanced/manager/b$g;Ljava/lang/Exception;ILcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->c(Lcom/mbridge/msdk/advanced/manager/b;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/advanced/manager/b;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/mbridge/msdk/advanced/manager/b;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "onLoadCompaginFailed load failed errorCode:"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " msg:"

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;)Landroid/os/Handler;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;)Landroid/os/Handler;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v0, Lcom/mbridge/msdk/advanced/manager/b$g$b;

    .line 55
    .line 56
    invoke-direct {v0, p0, p2}, Lcom/mbridge/msdk/advanced/manager/b$g$b;-><init>(Lcom/mbridge/msdk/advanced/manager/b$g;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->c(Lcom/mbridge/msdk/advanced/manager/b;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
