.class Lcom/mbridge/msdk/reward/adapter/b$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/adapter/b;->a(Landroid/content/Context;ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Lcom/mbridge/msdk/reward/adapter/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/adapter/b;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->h:Lcom/mbridge/msdk/reward/adapter/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->b:Landroid/content/Context;

    .line 6
    .line 7
    iput p4, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->c:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->e:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->f:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->g:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->b:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/foundation/entity/m;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "m_download_end"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->j(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->b:Landroid/content/Context;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->c(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    iget v1, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->c:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->d(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    const-string v1, "url"

    .line 83
    .line 84
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->d:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->d:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->t(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->e:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->m(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->f:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->u(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->g:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_3

    .line 111
    .line 112
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->g:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->q(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    const/4 v1, 0x1

    .line 118
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/entity/m;->e(I)V

    .line 119
    .line 120
    .line 121
    const-string v1, "scenes"

    .line 122
    .line 123
    const-string v2, "1"

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 133
    .line 134
    invoke-virtual {v1, v0, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Lcom/mbridge/msdk/foundation/entity/m;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :goto_1
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 139
    .line 140
    if-eqz v1, :cond_4

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v1, "RewardCampaignsResourceManager"

    .line 147
    .line 148
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    :goto_2
    return-void
.end method
