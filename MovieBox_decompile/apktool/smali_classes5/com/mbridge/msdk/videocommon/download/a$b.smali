.class Lcom/mbridge/msdk/videocommon/download/a$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/OnProgressStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/videocommon/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/videocommon/download/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/videocommon/download/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgress(Lcom/mbridge/msdk/foundation/download/DownloadMessage;Lcom/mbridge/msdk/foundation/download/DownloadProgress;)V
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "CampaignDownLoadTask"

    .line 4
    .line 5
    const-string v2, "cache"

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 8
    .line 9
    invoke-direct {v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v4, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 13
    .line 14
    invoke-static {v4}, Lcom/mbridge/msdk/videocommon/download/a;->n(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const-string v5, "2"

    .line 19
    .line 20
    invoke-virtual {v4, v2, v5}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v3, v2, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/mbridge/msdk/videocommon/download/a;->i(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v2, v4, v3}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/download/a;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->getCurrent()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    invoke-static {v2, v3, v4}, Lcom/mbridge/msdk/videocommon/download/a;->b(Lcom/mbridge/msdk/videocommon/download/a;J)J

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->getTotal()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    invoke-static {v2, v3, v4}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/download/a;J)J

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->getCurrentDownloadRate()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-static {v2, v3}, Lcom/mbridge/msdk/videocommon/download/a;->b(Lcom/mbridge/msdk/videocommon/download/a;I)I

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/mbridge/msdk/videocommon/download/a;->e(Lcom/mbridge/msdk/videocommon/download/a;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    const/16 v3, 0x64

    .line 70
    .line 71
    if-ne v2, v3, :cond_0

    .line 72
    .line 73
    return-void

    .line 74
    :cond_0
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->getCurrentDownloadRate()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 79
    .line 80
    invoke-static {v3}, Lcom/mbridge/msdk/videocommon/download/a;->e(Lcom/mbridge/msdk/videocommon/download/a;)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-lt v2, v3, :cond_3

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v3, "Rate : "

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->getCurrentDownloadRate()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, " ReadyRate & cdRate = "

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 109
    .line 110
    invoke-static {v3}, Lcom/mbridge/msdk/videocommon/download/a;->e(Lcom/mbridge/msdk/videocommon/download/a;)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v3, " "

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 123
    .line 124
    invoke-static {v3}, Lcom/mbridge/msdk/videocommon/download/a;->f(Lcom/mbridge/msdk/videocommon/download/a;)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 139
    .line 140
    invoke-static {v2}, Lcom/mbridge/msdk/videocommon/download/a;->g(Lcom/mbridge/msdk/videocommon/download/a;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_3

    .line 145
    .line 146
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 147
    .line 148
    const/4 v3, 0x1

    .line 149
    invoke-static {v2, v3}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/download/a;Z)Z

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 153
    .line 154
    invoke-static {v2}, Lcom/mbridge/msdk/videocommon/download/a;->d(Lcom/mbridge/msdk/videocommon/download/a;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-nez v2, :cond_1

    .line 159
    .line 160
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 161
    .line 162
    invoke-static {v2, v3, v3, v0}, Lcom/mbridge/msdk/videocommon/download/a;->a(Lcom/mbridge/msdk/videocommon/download/a;IZLjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v2, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 166
    .line 167
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/download/DownloadProgress;->getCurrent()J

    .line 168
    .line 169
    .line 170
    move-result-wide v3

    .line 171
    const/4 p2, 0x0

    .line 172
    invoke-virtual {v2, v3, v4, p2, v0}, Lcom/mbridge/msdk/videocommon/download/a;->a(JZLjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :catch_0
    move-exception p1

    .line 177
    goto :goto_1

    .line 178
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 179
    .line 180
    invoke-static {p2}, Lcom/mbridge/msdk/videocommon/download/a;->n(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    if-eqz p2, :cond_3

    .line 185
    .line 186
    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 187
    .line 188
    invoke-static {p2}, Lcom/mbridge/msdk/videocommon/download/a;->h(Lcom/mbridge/msdk/videocommon/download/a;)I

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    const/4 v0, 0x2

    .line 193
    if-eq p2, v0, :cond_2

    .line 194
    .line 195
    return-void

    .line 196
    :cond_2
    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 197
    .line 198
    invoke-static {p2}, Lcom/mbridge/msdk/videocommon/download/a;->d(Lcom/mbridge/msdk/videocommon/download/a;)Z

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    if-nez p2, :cond_3

    .line 203
    .line 204
    iget-object p2, p0, Lcom/mbridge/msdk/videocommon/download/a$b;->a:Lcom/mbridge/msdk/videocommon/download/a;

    .line 205
    .line 206
    invoke-static {p2}, Lcom/mbridge/msdk/videocommon/download/a;->n(Lcom/mbridge/msdk/videocommon/download/a;)Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->cancel(Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :cond_3
    :goto_2
    return-void
.end method
