.class Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 5
    .line 6
    iput p2, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    const-string v0, "MBridgeBaseView"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 8
    .line 9
    if-eqz v2, :cond_5

    .line 10
    .line 11
    :try_start_0
    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->d(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, "insertEndCardReadyState hasInsertLoadEndCardReport true return"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-static {v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->b(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;Z)Z

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    const-string v2, "1"

    .line 45
    .line 46
    const-string v3, "2"

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    :try_start_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v4, ".zip"

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    move-object v12, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move-object v12, v3

    .line 69
    :goto_0
    const-string v11, "ready timeout"

    .line 70
    .line 71
    new-instance v1, Lcom/mbridge/msdk/foundation/entity/m;

    .line 72
    .line 73
    const-string v5, "m_download_end"

    .line 74
    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    iget v6, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->b:I

    .line 81
    .line 82
    mul-int/lit16 v6, v6, 0x3e8

    .line 83
    .line 84
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v6, ""

    .line 88
    .line 89
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 97
    .line 98
    iget-object v4, v4, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 105
    .line 106
    iget-object v4, v4, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 113
    .line 114
    iget-object v10, v4, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardViewDiff;->unitId:Ljava/lang/String;

    .line 115
    .line 116
    const/16 v6, 0xc

    .line 117
    .line 118
    move-object v4, v1

    .line 119
    invoke-direct/range {v4 .. v12}, Lcom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .line 121
    .line 122
    :try_start_2
    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 123
    .line 124
    iget-object v4, v4, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 125
    .line 126
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    const/16 v5, 0x11f

    .line 131
    .line 132
    if-ne v4, v5, :cond_2

    .line 133
    .line 134
    const-string v2, "3"

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->a(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :catch_0
    move-exception v2

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    iget-object v4, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 143
    .line 144
    iget-object v4, v4, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 145
    .line 146
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    const/16 v5, 0x5e

    .line 151
    .line 152
    if-ne v4, v5, :cond_3

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->a(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_3
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 159
    .line 160
    iget-object v2, v2, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 161
    .line 162
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    const/16 v4, 0x2a

    .line 167
    .line 168
    if-ne v2, v4, :cond_4

    .line 169
    .line 170
    invoke-virtual {v1, v3}, Lcom/mbridge/msdk/foundation/entity/m;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 178
    .line 179
    iget-object v2, v2, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 180
    .line 181
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 189
    .line 190
    iget-object v2, v2, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 191
    .line 192
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 200
    .line 201
    iget-object v2, v2, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 202
    .line 203
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->o(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 211
    .line 212
    iget-object v2, v2, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 213
    .line 214
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/m;->a(I)V

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$h;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->isLoadSuccess()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-static {v0, v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    :cond_5
    :goto_4
    return-void
.end method
