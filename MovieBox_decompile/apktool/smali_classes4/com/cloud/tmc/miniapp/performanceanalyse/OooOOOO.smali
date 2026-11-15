.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO$OooO00o;
    }
.end annotation


# instance fields
.field public OooO00o:J

.field public OooO0O0:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO0O0:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "target"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO$OooO00o;->OooO00o:[I

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    aget v0, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-eq v0, v1, :cond_5

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    if-eq v0, v1, :cond_4

    .line 22
    .line 23
    const/4 v1, 0x7

    .line 24
    if-eq v0, v1, :cond_3

    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO0O0:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 32
    .line 33
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 34
    .line 35
    if-ne v0, v1, :cond_1

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-wide v5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO00o:J

    .line 42
    .line 43
    :goto_0
    sub-long/2addr v0, v5

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->SEND_TO_NATIVE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 46
    .line 47
    if-ne v0, v1, :cond_2

    .line 48
    .line 49
    const/4 v4, 0x1

    .line 50
    :cond_2
    :goto_1
    move-wide v0, v2

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO0O0:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 53
    .line 54
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->EXECUTE_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 55
    .line 56
    if-ne v0, v1, :cond_2

    .line 57
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    iget-wide v5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO00o:J

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO0O0:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 66
    .line 67
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->LOAD_JS_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 68
    .line 69
    if-ne v0, v1, :cond_2

    .line 70
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    iget-wide v5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO00o:J

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO0O0:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 79
    .line 80
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 81
    .line 82
    if-ne v0, v1, :cond_2

    .line 83
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    iget-wide v5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO00o:J

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :goto_2
    if-eqz v4, :cond_6

    .line 92
    .line 93
    return-void

    .line 94
    :cond_6
    if-eqz p3, :cond_7

    .line 95
    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v5, "-\u4fe1\u606f:"

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    goto :goto_3

    .line 114
    :cond_7
    const-string p3, ""

    .line 115
    .line 116
    :goto_3
    cmp-long v2, v0, v2

    .line 117
    .line 118
    if-eqz v2, :cond_8

    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v3, "-\u8017\u65f6:"

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    const-class v0, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 141
    .line 142
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 147
    .line 148
    new-instance v1, Landroid/os/Bundle;

    .line 149
    .line 150
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 151
    .line 152
    .line 153
    const-class v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v2, "."

    .line 172
    .line 173
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {v1, v2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 187
    .line 188
    const-string v2, "webviewWorker"

    .line 189
    .line 190
    invoke-interface {v0, p1, v2, v1}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 191
    .line 192
    .line 193
    :cond_8
    if-eqz p1, :cond_9

    .line 194
    .line 195
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->getDes()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v2, "["

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string p1, "]:"

    .line 213
    .line 214
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    goto :goto_4

    .line 228
    :cond_9
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->getDes()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    :goto_4
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 248
    .line 249
    const-string v0, "TmcPerferenceWorker"

    .line 250
    .line 251
    if-ne p2, p3, :cond_a

    .line 252
    .line 253
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_a
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    :goto_5
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/a;->a(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO0O0:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/WorkerAnalyseType;

    .line 264
    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 266
    .line 267
    .line 268
    move-result-wide p1

    .line 269
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOOO;->OooO00o:J

    .line 270
    .line 271
    return-void
.end method
