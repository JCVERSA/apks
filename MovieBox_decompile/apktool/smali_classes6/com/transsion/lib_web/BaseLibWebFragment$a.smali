.class public final Lcom/transsion/lib_web/BaseLibWebFragment$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/lib_web/BaseLibWebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/lib_web/BaseLibWebFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/lib_web/BaseLibWebFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$a;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final reportLoadError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "errorMsg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "reportLoadError: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lpl/h;->c(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/transsion/lib_web/domain/DomPerformance;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/transsion/lib_web/domain/DomPerformance;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setErrorMsg(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$a;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->f0()Lcom/transsion/lib_web/domain/LoadInfoStats;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;->setDom_performance(Lcom/transsion/lib_web/domain/DomPerformance;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final reportLoadStats(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lpl/h;->a:Lpl/h;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "reportLoadStats: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lpl/h;->c(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/transsion/lib_web/download_render/utils/a;->a:Lcom/transsion/lib_web/download_render/utils/a;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$a;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/transsion/lib_web/BaseLibWebFragment;->g0()Lcom/transsion/lib_web/LoadUrlData;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/transsion/lib_web/LoadUrlData;->getOriginUrl()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/transsion/lib_web/download_render/utils/a;->r(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :try_start_0
    new-instance v0, Lcom/transsion/lib_web/domain/DomPerformance;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/transsion/lib_web/domain/DomPerformance;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p1, "dnsLookup"

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setDnsLookup(Ljava/lang/Long;)V

    .line 64
    .line 65
    .line 66
    const-string p1, "tcpConnect"

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setTcpConnect(Ljava/lang/Long;)V

    .line 77
    .line 78
    .line 79
    const-string p1, "requestTime"

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setRequestTime(Ljava/lang/Long;)V

    .line 90
    .line 91
    .line 92
    const-string p1, "responseTime"

    .line 93
    .line 94
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v2

    .line 98
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setResponseTime(Ljava/lang/Long;)V

    .line 103
    .line 104
    .line 105
    const-string p1, "domLoading"

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setDomLoading(Ljava/lang/Long;)V

    .line 116
    .line 117
    .line 118
    const-string p1, "domInteractive"

    .line 119
    .line 120
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v2

    .line 124
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setDomInteractive(Ljava/lang/Long;)V

    .line 129
    .line 130
    .line 131
    const-string p1, "domComplete"

    .line 132
    .line 133
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 134
    .line 135
    .line 136
    move-result-wide v2

    .line 137
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setDomComplete(Ljava/lang/Long;)V

    .line 142
    .line 143
    .line 144
    const-string p1, "loadEventTime"

    .line 145
    .line 146
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 147
    .line 148
    .line 149
    move-result-wide v2

    .line 150
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setLoadEventTime(Ljava/lang/Long;)V

    .line 155
    .line 156
    .line 157
    const-string p1, "totalLoadTime"

    .line 158
    .line 159
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 160
    .line 161
    .line 162
    move-result-wide v2

    .line 163
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setTotalLoadTime(Ljava/lang/Long;)V

    .line 168
    .line 169
    .line 170
    const-string p1, "readyState"

    .line 171
    .line 172
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setReadyState(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string p1, "success"

    .line 180
    .line 181
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {v0, p1}, Lcom/transsion/lib_web/domain/DomPerformance;->setSuccess(Ljava/lang/Boolean;)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/transsion/lib_web/BaseLibWebFragment$a;->a:Lcom/transsion/lib_web/BaseLibWebFragment;

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/transsion/lib_web/BaseLibWebFragment;->f0()Lcom/transsion/lib_web/domain/LoadInfoStats;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1, v0}, Lcom/transsion/lib_web/domain/LoadInfoStats;->setDom_performance(Lcom/transsion/lib_web/domain/DomPerformance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    .line 205
    .line 206
    :goto_0
    return-void
.end method
