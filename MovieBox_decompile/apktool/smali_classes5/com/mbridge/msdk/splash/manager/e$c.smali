.class Lcom/mbridge/msdk/splash/manager/e$c;
.super Landroid/os/Handler;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/splash/manager/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/manager/e;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/manager/e;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/e$c;->a:Lcom/mbridge/msdk/splash/manager/e;

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
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    instance-of v0, p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 20
    .line 21
    if-eqz v0, :cond_5

    .line 22
    .line 23
    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/e$c;->a:Lcom/mbridge/msdk/splash/manager/e;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/mbridge/msdk/splash/manager/e;->e(Lcom/mbridge/msdk/splash/manager/e;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/splash/manager/e;->c(Lcom/mbridge/msdk/splash/manager/e;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    :try_start_0
    instance-of v0, p1, Landroid/os/Bundle;

    .line 39
    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    move-object v0, p1

    .line 43
    check-cast v0, Landroid/os/Bundle;

    .line 44
    .line 45
    const-string v3, "type"

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    move-object v3, p1

    .line 52
    check-cast v3, Landroid/os/Bundle;

    .line 53
    .line 54
    const-string v4, "msg"

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast p1, Landroid/os/Bundle;

    .line 61
    .line 62
    const-string v4, "campaignex"

    .line 63
    .line 64
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 69
    .line 70
    if-ne v0, v1, :cond_2

    .line 71
    .line 72
    const v0, 0xd6d84

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    if-ne v0, v2, :cond_3

    .line 77
    .line 78
    const v0, 0xd6d86

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    const v0, 0xd6d9b

    .line 83
    .line 84
    .line 85
    :goto_0
    new-instance v1, Lcom/mbridge/msdk/foundation/error/b;

    .line 86
    .line 87
    invoke-direct {v1, v0}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v3}, Lcom/mbridge/msdk/foundation/error/b;->c(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/e$c;->a:Lcom/mbridge/msdk/splash/manager/e;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iget-object v3, p0, Lcom/mbridge/msdk/splash/manager/e$c;->a:Lcom/mbridge/msdk/splash/manager/e;

    .line 100
    .line 101
    invoke-static {v3}, Lcom/mbridge/msdk/splash/manager/e;->e(Lcom/mbridge/msdk/splash/manager/e;)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-static {v0, v1, v2, v3, p1}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;Lcom/mbridge/msdk/foundation/error/b;Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catch_0
    move-exception p1

    .line 110
    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    .line 111
    .line 112
    const v1, 0xd6d98

    .line 113
    .line 114
    .line 115
    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/error/b;->a(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/e$c;->a:Lcom/mbridge/msdk/splash/manager/e;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/e$c;->a:Lcom/mbridge/msdk/splash/manager/e;

    .line 128
    .line 129
    invoke-static {v2}, Lcom/mbridge/msdk/splash/manager/e;->e(Lcom/mbridge/msdk/splash/manager/e;)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    const/4 v3, 0x0

    .line 134
    invoke-static {p1, v0, v1, v2, v3}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;Lcom/mbridge/msdk/foundation/error/b;Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    .line 140
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 141
    .line 142
    instance-of v1, v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 143
    .line 144
    if-eqz v1, :cond_5

    .line 145
    .line 146
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 147
    .line 148
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getH5ResAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/e$c;->a:Lcom/mbridge/msdk/splash/manager/e;

    .line 161
    .line 162
    invoke-static {v2, v1, v0, p1}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    .line 163
    .line 164
    .line 165
    :cond_5
    :goto_1
    return-void
.end method
