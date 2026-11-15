.class Lcom/bytedance/sdk/component/Dq/sP;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# instance fields
.field private EjP:Ljava/lang/Thread;

.field private Sj:Lcom/bytedance/sdk/component/Dq/Dq;

.field private TKC:J

.field private sP:Lcom/bytedance/sdk/component/Dq/Sj;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/Dq/Dq;Lcom/bytedance/sdk/component/Dq/Sj;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/component/Dq/sP;->TKC:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/component/Dq/sP;->EjP:Ljava/lang/Thread;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/component/Dq/sP;->Sj:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/bytedance/sdk/component/Dq/sP;->sP:Lcom/bytedance/sdk/component/Dq/Sj;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    iput-wide p1, p0, Lcom/bytedance/sdk/component/Dq/sP;->TKC:J

    .line 20
    .line 21
    return-void
.end method

.method private Sj(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/Dq/Dq;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/sP;->Sj:Lcom/bytedance/sdk/component/Dq/Dq;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/bytedance/sdk/component/Dq/sP;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/sP;->Sj:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 6
    .line 7
    check-cast p1, Lcom/bytedance/sdk/component/Dq/sP;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Dq/sP;->Sj()Lcom/bytedance/sdk/component/Dq/Dq;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;->compareTo(Lcom/bytedance/sdk/component/Dq/Dq;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/bytedance/sdk/component/Dq/sP;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/sP;->Sj:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/bytedance/sdk/component/Dq/sP;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Dq/sP;->Sj()Lcom/bytedance/sdk/component/Dq/Dq;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/sP;->Sj:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iput-object v2, p0, Lcom/bytedance/sdk/component/Dq/sP;->EjP:Ljava/lang/Thread;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/component/Dq/sP;->Sj:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    sub-long/2addr v2, v0

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/sP;->sP:Lcom/bytedance/sdk/component/Dq/Sj;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/EjP;->Sj()V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Zq;->Sj()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_11

    .line 35
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/sP;->sP:Lcom/bytedance/sdk/component/Dq/Sj;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/sP;->Sj:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Dq/Dq;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/sP;->sP:Lcom/bytedance/sdk/component/Dq/Sj;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    const-string v1, "null"

    .line 60
    .line 61
    const/4 v4, -0x1

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    sparse-switch v5, :sswitch_data_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :sswitch_0
    const-string v5, "computation"

    .line 71
    .line 72
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const/4 v4, 0x4

    .line 80
    goto :goto_0

    .line 81
    :sswitch_1
    const-string v5, "init"

    .line 82
    .line 83
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_5
    const/4 v4, 0x3

    .line 91
    goto :goto_0

    .line 92
    :sswitch_2
    const-string v5, "log"

    .line 93
    .line 94
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_6

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    const/4 v4, 0x2

    .line 102
    goto :goto_0

    .line 103
    :sswitch_3
    const-string v5, "io"

    .line 104
    .line 105
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_7

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_7
    const/4 v4, 0x1

    .line 113
    goto :goto_0

    .line 114
    :sswitch_4
    const-string v5, "ad"

    .line 115
    .line 116
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_8

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_8
    const/4 v4, 0x0

    .line 124
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 125
    .line 126
    .line 127
    goto/16 :goto_5

    .line 128
    .line 129
    :pswitch_0
    const-wide/16 v4, 0x3e8

    .line 130
    .line 131
    cmp-long v0, v2, v4

    .line 132
    .line 133
    if-lez v0, :cond_11

    .line 134
    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/sP;->sP:Lcom/bytedance/sdk/component/Dq/Sj;

    .line 136
    .line 137
    if-eqz v0, :cond_9

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    goto :goto_1

    .line 144
    :cond_9
    move-object v0, v1

    .line 145
    :goto_1
    iget-object v4, p0, Lcom/bytedance/sdk/component/Dq/sP;->Sj:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 146
    .line 147
    if-eqz v4, :cond_a

    .line 148
    .line 149
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/Dq/Dq;->getName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    :cond_a
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/component/Dq/sP;->Sj(Ljava/lang/String;Ljava/lang/String;J)V

    .line 154
    .line 155
    .line 156
    goto :goto_5

    .line 157
    :pswitch_1
    const-wide/16 v4, 0xbb8

    .line 158
    .line 159
    cmp-long v0, v2, v4

    .line 160
    .line 161
    if-lez v0, :cond_11

    .line 162
    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/sP;->sP:Lcom/bytedance/sdk/component/Dq/Sj;

    .line 164
    .line 165
    if-eqz v0, :cond_b

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    goto :goto_2

    .line 172
    :cond_b
    move-object v0, v1

    .line 173
    :goto_2
    iget-object v4, p0, Lcom/bytedance/sdk/component/Dq/sP;->Sj:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 174
    .line 175
    if-eqz v4, :cond_c

    .line 176
    .line 177
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/Dq/Dq;->getName()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    :cond_c
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/component/Dq/sP;->Sj(Ljava/lang/String;Ljava/lang/String;J)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_2
    const-wide/16 v4, 0x1388

    .line 186
    .line 187
    cmp-long v0, v2, v4

    .line 188
    .line 189
    if-lez v0, :cond_11

    .line 190
    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/sP;->sP:Lcom/bytedance/sdk/component/Dq/Sj;

    .line 192
    .line 193
    if-eqz v0, :cond_d

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    goto :goto_3

    .line 200
    :cond_d
    move-object v0, v1

    .line 201
    :goto_3
    iget-object v4, p0, Lcom/bytedance/sdk/component/Dq/sP;->Sj:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 202
    .line 203
    if-eqz v4, :cond_e

    .line 204
    .line 205
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/Dq/Dq;->getName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    :cond_e
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/component/Dq/sP;->Sj(Ljava/lang/String;Ljava/lang/String;J)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :pswitch_3
    const-wide/16 v4, 0x7d0

    .line 214
    .line 215
    cmp-long v0, v2, v4

    .line 216
    .line 217
    if-lez v0, :cond_11

    .line 218
    .line 219
    iget-object v0, p0, Lcom/bytedance/sdk/component/Dq/sP;->sP:Lcom/bytedance/sdk/component/Dq/Sj;

    .line 220
    .line 221
    if-eqz v0, :cond_f

    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Dq/Sj;->Sj()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    goto :goto_4

    .line 228
    :cond_f
    move-object v0, v1

    .line 229
    :goto_4
    iget-object v4, p0, Lcom/bytedance/sdk/component/Dq/sP;->Sj:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 230
    .line 231
    if-eqz v4, :cond_10

    .line 232
    .line 233
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/Dq/Dq;->getName()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    :cond_10
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/component/Dq/sP;->Sj(Ljava/lang/String;Ljava/lang/String;J)V

    .line 238
    .line 239
    .line 240
    :cond_11
    :goto_5
    return-void

    .line 241
    :sswitch_data_0
    .sparse-switch
        0xc23 -> :sswitch_4
        0xd26 -> :sswitch_3
        0x1a344 -> :sswitch_2
        0x316510 -> :sswitch_1
        0xca889c7 -> :sswitch_0
    .end sparse-switch

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
