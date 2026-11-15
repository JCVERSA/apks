.class public final Lcom/cloud/tmc/miniapp/prepare/controller/OooO0o;
.super Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;
.source "source.java"


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eq p3, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eq p3, v2, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-eq p3, v1, :cond_0

    .line 18
    .line 19
    new-instance p3, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 20
    .line 21
    const/16 v1, 0xc

    .line 22
    .line 23
    invoke-direct {p3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 27
    .line 28
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/o00Oo0;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/o00Oo0;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 37
    .line 38
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0OO;

    .line 39
    .line 40
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooO0OO;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 47
    .line 48
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;

    .line 49
    .line 50
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 57
    .line 58
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/oo000o;

    .line 59
    .line 60
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/oo000o;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 67
    .line 68
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;

    .line 69
    .line 70
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 77
    .line 78
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    .line 79
    .line 80
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 87
    .line 88
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOOO;

    .line 89
    .line 90
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOOO;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 97
    .line 98
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo00;

    .line 99
    .line 100
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOo00;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 107
    .line 108
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    .line 109
    .line 110
    invoke-direct {v1, p4, v0, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 111
    .line 112
    .line 113
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 117
    .line 118
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 119
    .line 120
    invoke-direct {v1, p4, v0, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 121
    .line 122
    .line 123
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 127
    .line 128
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;

    .line 129
    .line 130
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 137
    .line 138
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;

    .line 139
    .line 140
    invoke-direct {v1, p4, v0, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 141
    .line 142
    .line 143
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_0
    new-instance p3, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 149
    .line 150
    invoke-direct {p3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 151
    .line 152
    .line 153
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 154
    .line 155
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    .line 156
    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-direct {v0, p4, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {p3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 168
    .line 169
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 170
    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-direct {v0, p4, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    .line 177
    .line 178
    invoke-interface {p3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 182
    .line 183
    new-instance p4, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;

    .line 184
    .line 185
    invoke-direct {p4}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-interface {p3, p4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_1
    new-instance p3, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 193
    .line 194
    invoke-direct {p3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 195
    .line 196
    .line 197
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 198
    .line 199
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    .line 200
    .line 201
    invoke-direct {v1, p4, v0, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 202
    .line 203
    .line 204
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 208
    .line 209
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 210
    .line 211
    invoke-direct {v1, p4, v0, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 212
    .line 213
    .line 214
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 218
    .line 219
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;

    .line 220
    .line 221
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 228
    .line 229
    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;

    .line 230
    .line 231
    invoke-direct {v1, p4, v0, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 232
    .line 233
    .line 234
    invoke-interface {p3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto :goto_0

    .line 238
    :cond_2
    new-instance p3, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 239
    .line 240
    invoke-direct {p3, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 241
    .line 242
    .line 243
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 244
    .line 245
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    .line 246
    .line 247
    invoke-direct {v0, p4, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {p3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 254
    .line 255
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    .line 256
    .line 257
    invoke-direct {v0, p4, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    .line 259
    .line 260
    invoke-interface {p3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 264
    .line 265
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;

    .line 266
    .line 267
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo000;-><init>()V

    .line 268
    .line 269
    .line 270
    invoke-interface {p3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->steps:Ljava/util/Queue;

    .line 274
    .line 275
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;

    .line 276
    .line 277
    invoke-direct {v0, p4, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    .line 279
    .line 280
    invoke-interface {p3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->bindContext(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    .line 284
    .line 285
    .line 286
    new-instance p1, Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/BasePrepareController;->setInterceptors(Ljava/util/List;)V

    .line 292
    .line 293
    .line 294
    return-void
.end method
