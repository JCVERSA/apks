.class Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-lez v4, :cond_4

    .line 21
    .line 22
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_4

    .line 29
    .line 30
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 31
    .line 32
    invoke-static {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    const-wide/high16 v6, -0x8000000000000000L

    .line 37
    .line 38
    cmp-long v4, v4, v6

    .line 39
    .line 40
    if-eqz v4, :cond_4

    .line 41
    .line 42
    :try_start_0
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 43
    .line 44
    invoke-static {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    cmp-long v4, v4, v0

    .line 49
    .line 50
    const/16 v5, 0x320

    .line 51
    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 55
    .line 56
    invoke-static {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 63
    .line 64
    invoke-static {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->EjP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    const-wide/16 v8, 0x190

    .line 69
    .line 70
    cmp-long v4, v6, v8

    .line 71
    .line 72
    if-ltz v4, :cond_1

    .line 73
    .line 74
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 75
    .line 76
    const/16 v6, 0x2bd

    .line 77
    .line 78
    invoke-static {v4, v6, v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;II)V

    .line 79
    .line 80
    .line 81
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 82
    .line 83
    const/4 v5, 0x1

    .line 84
    invoke-static {v4, v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v4

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 91
    .line 92
    invoke-static {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->EjP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v5

    .line 96
    iget-object v7, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 97
    .line 98
    invoke-static {v7}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->HiB(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    int-to-long v7, v7

    .line 103
    add-long/2addr v5, v7

    .line 104
    invoke-static {v4, v5, v6}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;J)J

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 109
    .line 110
    invoke-static {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_3

    .line 115
    .line 116
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 117
    .line 118
    invoke-static {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v6

    .line 122
    iget-object v8, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 123
    .line 124
    invoke-static {v8}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->EjP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J

    .line 125
    .line 126
    .line 127
    move-result-wide v8

    .line 128
    add-long/2addr v6, v8

    .line 129
    invoke-static {v4, v6, v7}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;J)J

    .line 130
    .line 131
    .line 132
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 133
    .line 134
    const/16 v6, 0x2be

    .line 135
    .line 136
    invoke-static {v4, v6, v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;II)V

    .line 137
    .line 138
    .line 139
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 140
    .line 141
    invoke-static {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J

    .line 142
    .line 143
    .line 144
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 145
    .line 146
    invoke-static {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Jcg(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)I

    .line 147
    .line 148
    .line 149
    :cond_3
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 150
    .line 151
    invoke-static {v4, v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;J)J

    .line 152
    .line 153
    .line 154
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 155
    .line 156
    const/4 v5, 0x0

    .line 157
    invoke-static {v4, v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 165
    .line 166
    invoke-virtual {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD()J

    .line 167
    .line 168
    .line 169
    move-result-wide v4

    .line 170
    cmp-long v2, v4, v2

    .line 171
    .line 172
    if-lez v2, :cond_7

    .line 173
    .line 174
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 175
    .line 176
    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J

    .line 177
    .line 178
    .line 179
    move-result-wide v2

    .line 180
    cmp-long v2, v2, v0

    .line 181
    .line 182
    if-eqz v2, :cond_6

    .line 183
    .line 184
    invoke-static {}, Lv5/b;->b()Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_5

    .line 189
    .line 190
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 191
    .line 192
    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J

    .line 193
    .line 194
    .line 195
    :cond_5
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 196
    .line 197
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD()J

    .line 198
    .line 199
    .line 200
    move-result-wide v3

    .line 201
    invoke-static {v2, v0, v1, v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;JJ)V

    .line 202
    .line 203
    .line 204
    :cond_6
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 205
    .line 206
    invoke-static {v2, v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;J)J

    .line 207
    .line 208
    .line 209
    :cond_7
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_8

    .line 216
    .line 217
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 218
    .line 219
    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bytedance/sdk/component/utils/LqL;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    if-eqz v0, :cond_9

    .line 224
    .line 225
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 226
    .line 227
    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bytedance/sdk/component/utils/LqL;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 232
    .line 233
    invoke-static {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->HiB(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    int-to-long v1, v1

    .line 238
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    :cond_8
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD()J

    .line 245
    .line 246
    .line 247
    move-result-wide v1

    .line 248
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;

    .line 249
    .line 250
    invoke-virtual {v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD()J

    .line 251
    .line 252
    .line 253
    move-result-wide v3

    .line 254
    invoke-static {v0, v1, v2, v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;JJ)V

    .line 255
    .line 256
    .line 257
    :cond_9
    return-void
.end method
