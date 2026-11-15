.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO0;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO0$OooO00o;
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
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "target"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO0$OooO00o;->OooO00o:[I

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
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    move-wide v0, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iget-wide v4, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO0;->OooO00o:J

    .line 29
    .line 30
    :goto_0
    sub-long/2addr v0, v4

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iget-wide v4, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO0;->OooO00o:J

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    if-eqz p3, :cond_2

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v5, "-\u4fe1\u606f:"

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const-string p3, ""

    .line 60
    .line 61
    :goto_2
    cmp-long v2, v0, v2

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v4, "-\u8017\u65f6:"

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    const-class v0, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    .line 92
    .line 93
    new-instance v1, Landroid/os/Bundle;

    .line 94
    .line 95
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 96
    .line 97
    .line 98
    const-class v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v3, "."

    .line 117
    .line 118
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v1, v3, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 132
    .line 133
    const-string v3, "render"

    .line 134
    .line 135
    invoke-interface {v0, p1, v3, v1}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    if-eqz p1, :cond_4

    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->getDes()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v3, "["

    .line 150
    .line 151
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string p1, "]:"

    .line 158
    .line 159
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    goto :goto_3

    .line 173
    :cond_4
    invoke-virtual {p2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->getDes()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    :goto_3
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    .line 193
    .line 194
    const/4 v0, 0x0

    .line 195
    const/4 v1, 0x1

    .line 196
    const-string v3, "TmcPerferenceRender"

    .line 197
    .line 198
    if-ne p2, p3, :cond_6

    .line 199
    .line 200
    if-eqz v2, :cond_5

    .line 201
    .line 202
    move v0, v1

    .line 203
    :cond_5
    invoke-static {v3, p1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_6
    if-eqz v2, :cond_7

    .line 208
    .line 209
    move v0, v1

    .line 210
    :cond_7
    invoke-static {v3, p1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 211
    .line 212
    .line 213
    :goto_4
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/a;->a(Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 217
    .line 218
    .line 219
    move-result-wide p1

    .line 220
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooOOO0;->OooO00o:J

    .line 221
    .line 222
    return-void
.end method
