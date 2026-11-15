.class Lcom/mbridge/msdk/advanced/manager/a$b;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/advanced/manager/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/advanced/manager/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/manager/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a$b;->a:Lcom/mbridge/msdk/advanced/manager/a;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "OMSDK"

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    .line 5
    .line 6
    iget p1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a$b;->a:Lcom/mbridge/msdk/advanced/manager/a;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isActiveOm()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a$b;->a:Lcom/mbridge/msdk/advanced/manager/a;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/mbridge/msdk/advanced/manager/a;->c:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->getAdvancedNativeWebview()Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;->getAdSession()Lcom/iab/omid/library/mmadbridge/adsession/b;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-static {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->a(Lcom/iab/omid/library/mmadbridge/adsession/b;)Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->c()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->b()V

    .line 51
    .line 52
    .line 53
    const-string v1, "adSession.impressionOccurred()"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a$b;->a:Lcom/mbridge/msdk/advanced/manager/a;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a$b;->a:Lcom/mbridge/msdk/advanced/manager/a;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/a$b;->a:Lcom/mbridge/msdk/advanced/manager/a;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/mbridge/msdk/advanced/manager/a;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    new-instance v2, Lcom/mbridge/msdk/foundation/same/report/h;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {v2, p1}, Lcom/mbridge/msdk/foundation/same/report/h;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/a$b;->a:Lcom/mbridge/msdk/advanced/manager/a;

    .line 103
    .line 104
    iget-object v6, p1, Lcom/mbridge/msdk/advanced/manager/a;->j:Ljava/lang/String;

    .line 105
    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v0, "fetch OM failed, exception"

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-virtual/range {v2 .. v7}, Lcom/mbridge/msdk/foundation/same/report/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_1
    :goto_0
    return-void
.end method
