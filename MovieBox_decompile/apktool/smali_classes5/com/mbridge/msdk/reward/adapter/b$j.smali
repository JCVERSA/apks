.class final Lcom/mbridge/msdk/reward/adapter/b$j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/image/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/reward/adapter/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "j"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->a:Landroid/os/Handler;

    .line 5
    .line 6
    iput p2, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/adapter/b$j;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/reward/adapter/b$j;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget v0, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->b:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0xca

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0xcc

    .line 13
    .line 14
    :goto_0
    iput v0, p2, Landroid/os/Message;->what:I

    .line 15
    .line 16
    new-instance v0, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->c:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "unit_id"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->e:Ljava/lang/String;

    .line 36
    .line 37
    const-string v2, "request_id"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, "_"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->e:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v2, "key"

    .line 79
    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->a:Landroid/os/Handler;

    .line 87
    .line 88
    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .line 90
    .line 91
    new-instance p2, Lcom/mbridge/msdk/reward/adapter/b$j$a;

    .line 92
    .line 93
    invoke-direct {p2, p0, p1}, Lcom/mbridge/msdk/reward/adapter/b$j$a;-><init>(Lcom/mbridge/msdk/reward/adapter/b$j;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/d;->a()Lcom/mbridge/msdk/foundation/controller/d;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/d;->e()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_1

    .line 105
    .line 106
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 115
    .line 116
    .line 117
    :goto_1
    return-void
.end method

.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, p2, v0}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->setImageDownloadDone(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget p2, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->b:I

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    const/16 p2, 0x66

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 p2, 0x68

    .line 21
    .line 22
    :goto_0
    iput p2, p1, Landroid/os/Message;->what:I

    .line 23
    .line 24
    new-instance p2, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->c:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "unit_id"

    .line 32
    .line 33
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->e:Ljava/lang/String;

    .line 44
    .line 45
    const-string v1, "request_id"

    .line 46
    .line 47
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->c:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, "_"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->e:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "key"

    .line 87
    .line 88
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/b$j;->a:Landroid/os/Handler;

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    .line 98
    .line 99
    return-void
.end method
