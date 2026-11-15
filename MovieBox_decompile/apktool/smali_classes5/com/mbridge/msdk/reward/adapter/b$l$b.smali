.class Lcom/mbridge/msdk/reward/adapter/b$l$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/adapter/b$l;->a(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/mbridge/msdk/reward/adapter/b$l;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/adapter/b$l;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->f:Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 2
    .line 3
    iput p2, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->a:I

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->b:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->e:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->f:Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/mbridge/msdk/reward/adapter/b$l;->a(Lcom/mbridge/msdk/reward/adapter/b$l;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    new-instance v1, Lcom/mbridge/msdk/foundation/entity/m;

    .line 13
    .line 14
    const-string v3, "m_download_end"

    .line 15
    .line 16
    iget v4, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->a:I

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-wide v5, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->b:J

    .line 24
    .line 25
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v5, ""

    .line 29
    .line 30
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->c:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->f:Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$l;->a(Lcom/mbridge/msdk/reward/adapter/b$l;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->f:Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$l;->c(Lcom/mbridge/msdk/reward/adapter/b$l;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    iget-object v9, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->d:Ljava/lang/String;

    .line 56
    .line 57
    const-string v10, "1"

    .line 58
    .line 59
    move-object v2, v1

    .line 60
    invoke-direct/range {v2 .. v10}, Lcom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->f:Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$l;->a(Lcom/mbridge/msdk/reward/adapter/b$l;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->f:Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 77
    .line 78
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$l;->a(Lcom/mbridge/msdk/reward/adapter/b$l;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->f:Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 90
    .line 91
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$l;->a(Lcom/mbridge/msdk/reward/adapter/b$l;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->f:Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 103
    .line 104
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$l;->a(Lcom/mbridge/msdk/reward/adapter/b$l;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->f:Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 116
    .line 117
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$l;->a(Lcom/mbridge/msdk/reward/adapter/b$l;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->a(I)V

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->e:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->q(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v2, "scenes"

    .line 134
    .line 135
    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->f:Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 139
    .line 140
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$l;->a(Lcom/mbridge/msdk/reward/adapter/b$l;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    const/16 v3, 0x11f

    .line 149
    .line 150
    if-ne v2, v3, :cond_1

    .line 151
    .line 152
    const-string v0, "3"

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/entity/m;->a(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    goto :goto_1

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->f:Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 161
    .line 162
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$l;->a(Lcom/mbridge/msdk/reward/adapter/b$l;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    const/16 v3, 0x5e

    .line 171
    .line 172
    if-ne v2, v3, :cond_2

    .line 173
    .line 174
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/entity/m;->a(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_2
    :goto_0
    const-string v0, "url"

    .line 178
    .line 179
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->c:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v1, v0, v2}, Lcom/mbridge/msdk/foundation/entity/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const/4 v0, 0x3

    .line 185
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/entity/m;->e(I)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->f:Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 189
    .line 190
    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/b$l;->a(Lcom/mbridge/msdk/reward/adapter/b$l;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v1, v0}, Lcom/mbridge/msdk/reward/adapter/b;->a(Lcom/mbridge/msdk/foundation/entity/m;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->f:Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 198
    .line 199
    invoke-static {v0}, Lcom/mbridge/msdk/reward/adapter/b$l;->c(Lcom/mbridge/msdk/reward/adapter/b$l;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$l$b;->f:Lcom/mbridge/msdk/reward/adapter/b$l;

    .line 204
    .line 205
    invoke-static {v2}, Lcom/mbridge/msdk/reward/adapter/b$l;->a(Lcom/mbridge/msdk/reward/adapter/b$l;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-static {v1, v0, v2}, Lcom/mbridge/msdk/foundation/same/report/g;->a(Lcom/mbridge/msdk/foundation/entity/m;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :goto_1
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 214
    .line 215
    if-eqz v1, :cond_3

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const-string v1, "RewardCampaignsResourceManager"

    .line 222
    .line 223
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_3
    :goto_2
    return-void
.end method
