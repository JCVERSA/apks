.class Lcom/mbridge/msdk/advanced/manager/b$k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$ZipDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:I

.field final synthetic c:Lcom/mbridge/msdk/advanced/manager/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$k;->c:Lcom/mbridge/msdk/advanced/manager/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$k;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 4
    .line 5
    iput p3, p0, Lcom/mbridge/msdk/advanced/manager/b$k;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/advanced/manager/b;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "endcard \u4e0b\u8f7d\u5931\u8d25\uff1a "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$k;->c:Lcom/mbridge/msdk/advanced/manager/b;

    .line 26
    .line 27
    invoke-static {p2}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;)Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$k;->c:Lcom/mbridge/msdk/advanced/manager/b;

    .line 34
    .line 35
    invoke-static {p2}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;)Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->setEndCardReady(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const/4 v0, 0x2

    .line 48
    iput v0, p2, Landroid/os/Message;->what:I

    .line 49
    .line 50
    new-instance v1, Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/mbridge/msdk/advanced/manager/b$k;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 56
    .line 57
    const-string v3, "campaignex"

    .line 58
    .line 59
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 60
    .line 61
    .line 62
    const-string v2, "msg"

    .line 63
    .line 64
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p1, "type"

    .line 68
    .line 69
    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$k;->c:Lcom/mbridge/msdk/advanced/manager/b;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;)Landroid/os/Handler;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/advanced/manager/b;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "endcard \u4e0b\u8f7d\u6210\u529f\uff1a "

    .line 11
    .line 12
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$k;->c:Lcom/mbridge/msdk/advanced/manager/b;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;)Landroid/os/Handler;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 p2, 0x4

    .line 38
    iput p2, p1, Landroid/os/Message;->what:I

    .line 39
    .line 40
    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$k;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 41
    .line 42
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    .line 44
    iget p2, p0, Lcom/mbridge/msdk/advanced/manager/b$k;->b:I

    .line 45
    .line 46
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 47
    .line 48
    iget-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$k;->c:Lcom/mbridge/msdk/advanced/manager/b;

    .line 49
    .line 50
    invoke-static {p2}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;)Landroid/os/Handler;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method
