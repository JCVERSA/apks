.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO$OooO00o;
    }
.end annotation


# instance fields
.field public OooO00o:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->CHECK_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "target"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO$OooO00o;->OooO00o:[I

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
    const/4 v1, 0x5

    .line 15
    const-wide/16 v2, 0x0

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    move-wide v0, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iget-wide v4, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO;->OooO00o:J

    .line 30
    .line 31
    :goto_0
    sub-long/2addr v0, v4

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    iget-wide v4, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO;->OooO00o:J

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_1
    if-eqz p3, :cond_2

    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v5, "-\u4fe1\u606f:"

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const-string p3, ""

    .line 61
    .line 62
    :goto_2
    cmp-long v2, v0, v2

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v4, "-\u8017\u65f6:"

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    const-class v0, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 93
    .line 94
    new-instance v1, Landroid/os/Bundle;

    .line 95
    .line 96
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 97
    .line 98
    .line 99
    const-class v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v3, "."

    .line 118
    .line 119
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v1, v3, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    const-string v3, "v8"

    .line 135
    .line 136
    invoke-interface {v0, p1, v3, v1}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 137
    .line 138
    .line 139
    :cond_3
    if-eqz p1, :cond_4

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->getDes()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v3, "["

    .line 151
    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string p1, "]:"

    .line 159
    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    goto :goto_3

    .line 174
    :cond_4
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->getDes()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    :goto_3
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->DOWNLOAD_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    .line 194
    .line 195
    const/4 v0, 0x0

    .line 196
    const/4 v1, 0x1

    .line 197
    const-string v3, "TmcPerferenceV8"

    .line 198
    .line 199
    if-eq p2, p3, :cond_7

    .line 200
    .line 201
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;->UNZIP_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/V8AnalyseType;

    .line 202
    .line 203
    if-ne p2, p3, :cond_5

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_5
    if-eqz v2, :cond_6

    .line 207
    .line 208
    move v0, v1

    .line 209
    :cond_6
    invoke-static {v3, p1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 210
    .line 211
    .line 212
    goto :goto_5

    .line 213
    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    .line 214
    .line 215
    move v0, v1

    .line 216
    :cond_8
    invoke-static {v3, p1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    .line 218
    .line 219
    :goto_5
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/a;->a(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 223
    .line 224
    .line 225
    move-result-wide p1

    .line 226
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO;->OooO00o:J

    .line 227
    .line 228
    return-void
.end method
