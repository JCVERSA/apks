.class Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/MBridgeVideoView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 3
    .line 4
    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "type"

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "2000152"

    .line 21
    .line 22
    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "2000148"

    .line 30
    .line 31
    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 32
    .line 33
    iget-object v3, v3, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->d(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x2

    .line 54
    const v2, 0x4c531a

    .line 55
    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 60
    .line 61
    invoke-static {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->a(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-ne v0, v2, :cond_1

    .line 89
    .line 90
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->e(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    .line 98
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 99
    .line 100
    iget-object v2, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    .line 101
    .line 102
    if-eqz v2, :cond_5

    .line 103
    .line 104
    invoke-static {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 108
    .line 109
    iget-object v0, p1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->e(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-static {p1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->d(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-interface {v0, v1, p1}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->f(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_2

    .line 130
    .line 131
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 132
    .line 133
    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    .line 134
    .line 135
    if-eqz p1, :cond_5

    .line 136
    .line 137
    const/16 v0, 0x7b

    .line 138
    .line 139
    const-string v1, ""

    .line 140
    .line 141
    invoke-interface {p1, v0, v1}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 146
    .line 147
    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->g(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 152
    .line 153
    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 154
    .line 155
    if-eqz v0, :cond_4

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_4

    .line 162
    .line 163
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-ne v0, v2, :cond_4

    .line 176
    .line 177
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 178
    .line 179
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->e(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_4

    .line 184
    .line 185
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 186
    .line 187
    iget-object v2, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    .line 188
    .line 189
    if-eqz v2, :cond_5

    .line 190
    .line 191
    invoke-static {v0, p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 195
    .line 196
    iget-object v0, p1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    .line 197
    .line 198
    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->e(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    invoke-static {p1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->d(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-interface {v0, v1, p1}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    goto :goto_1

    .line 210
    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$r;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 211
    .line 212
    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->g(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    .line 213
    .line 214
    .line 215
    :cond_5
    :goto_1
    return-void
.end method
