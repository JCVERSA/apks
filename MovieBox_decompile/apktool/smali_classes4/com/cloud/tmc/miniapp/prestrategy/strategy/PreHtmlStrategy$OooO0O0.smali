.class public final Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->requestHtml(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

.field public final synthetic OooO0OO:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0Oo:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0OO:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0Oo:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO00o:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    .line 4
    .line 5
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getTAG$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "requestZeroSharpNewsHtml-> "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0OO:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    .line 42
    .line 43
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO00o:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    .line 53
    .line 54
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$removePreRequestNum(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)V

    .line 55
    .line 56
    .line 57
    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 58
    .line 59
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 64
    .line 65
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->PRE_REQUEST_HTML_RET:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 66
    .line 67
    new-instance v0, Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v1, "ret"

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    const-string v1, "triggerType"

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    invoke-interface {p2, p1, p3, p1, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :goto_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    .line 91
    .line 92
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getTAG$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    const-string p3, "requestZeroSharpNewsHtml"

    .line 97
    .line 98
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    :goto_2
    return-void
.end method

.method public onSuccess(ILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    .line 2
    .line 3
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$removePreRequestNum(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)V

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    .line 7
    .line 8
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getTAG$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO00o:Ljava/lang/String;

    .line 13
    .line 14
    new-instance p5, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "requestHtml-> success "

    .line 20
    .line 21
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    invoke-static {p3, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/16 p3, 0xc8

    .line 35
    .line 36
    const/4 p4, 0x1

    .line 37
    if-ne p1, p3, :cond_4

    .line 38
    .line 39
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 46
    .line 47
    const-string p3, ""

    .line 48
    .line 49
    sget-object p5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->PRE_REQUEST_HTML_RET:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 50
    .line 51
    const-string v0, ""

    .line 52
    .line 53
    new-instance v1, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "ret"

    .line 59
    .line 60
    const/4 v3, 0x2

    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    const-string v2, "triggerType"

    .line 65
    .line 66
    invoke-virtual {v1, v2, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sget-object p4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    invoke-interface {p1, p3, p5, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0Oo:Landroid/content/Context;

    .line 83
    .line 84
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    iget-object p5, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO00o:Ljava/lang/String;

    .line 90
    .line 91
    invoke-interface {p4, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p4

    .line 95
    if-eqz p4, :cond_3

    .line 96
    .line 97
    const-class p4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 98
    .line 99
    invoke-static {p4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    check-cast p4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 104
    .line 105
    const-string p5, "miniStrategyPreHtml"

    .line 106
    .line 107
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO00o:Ljava/lang/String;

    .line 108
    .line 109
    if-nez p2, :cond_0

    .line 110
    .line 111
    const-string p2, ""

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    move-exception p2

    .line 115
    goto/16 :goto_3

    .line 116
    .line 117
    :cond_0
    :goto_0
    invoke-interface {p4, v1, p5, v0, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-class p2, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 121
    .line 122
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    check-cast p2, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 127
    .line 128
    const-string p4, "maxminiPreRequest"

    .line 129
    .line 130
    const/16 p5, 0xa

    .line 131
    .line 132
    invoke-interface {p2, p4, p5}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigInt(Ljava/lang/String;I)I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getTAG$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p4

    .line 140
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object p5

    .line 144
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result p5

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v2, "requestHtml.size->"

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p5

    .line 165
    invoke-static {p4, p5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_1
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object p4

    .line 172
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 173
    .line 174
    .line 175
    move-result p4

    .line 176
    if-le p4, p2, :cond_1

    .line 177
    .line 178
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object p4

    .line 182
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 183
    .line 184
    .line 185
    move-result p4

    .line 186
    new-instance p5, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v0, "requestHtml.size->"

    .line 192
    .line 193
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p4

    .line 203
    invoke-static {p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object p4

    .line 210
    const/4 p5, 0x0

    .line 211
    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p4

    .line 215
    check-cast p4, Ljava/lang/String;

    .line 216
    .line 217
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 218
    .line 219
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 224
    .line 225
    const-string v2, "miniStrategyPreHtml"

    .line 226
    .line 227
    invoke-interface {v0, v1, v2, p4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getTAG$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string v3, "remove preCache "

    .line 240
    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p4

    .line 251
    invoke-static {v0, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object p4

    .line 258
    invoke-interface {p4, p5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_1
    const-class p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 263
    .line 264
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    check-cast p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 269
    .line 270
    const-string p4, "miniStrategyPreHtml"

    .line 271
    .line 272
    const-string p5, "miniStrategyPreHtmlList"

    .line 273
    .line 274
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object p3

    .line 278
    invoke-static {p3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p3

    .line 282
    if-nez p3, :cond_2

    .line 283
    .line 284
    const-string p3, ""

    .line 285
    .line 286
    :cond_2
    invoke-interface {p2, v1, p4, p5, p3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    const-class p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 290
    .line 291
    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    move-object v0, p2

    .line 296
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 297
    .line 298
    const-string v2, "miniStrategyPreHtml"

    .line 299
    .line 300
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO00o:Ljava/lang/String;

    .line 301
    .line 302
    new-instance p3, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string p2, "_time"

    .line 311
    .line 312
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 320
    .line 321
    .line 322
    move-result-wide v4

    .line 323
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 324
    .line 325
    .line 326
    goto :goto_2

    .line 327
    :cond_3
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getTAG$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p2

    .line 331
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO00o:Ljava/lang/String;

    .line 332
    .line 333
    new-instance p4, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string p5, "requestHtml-> pre request not in preRequestList -> "

    .line 339
    .line 340
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p3

    .line 350
    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :goto_2
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    .line 355
    :try_start_2
    monitor-exit p1

    .line 356
    goto :goto_4

    .line 357
    :catchall_1
    move-exception p1

    .line 358
    goto :goto_5

    .line 359
    :goto_3
    monitor-exit p1

    .line 360
    throw p2

    .line 361
    :cond_4
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 362
    .line 363
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 368
    .line 369
    const-string p2, ""

    .line 370
    .line 371
    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->PRE_REQUEST_HTML_RET:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 372
    .line 373
    const-string p5, ""

    .line 374
    .line 375
    new-instance v0, Landroid/os/Bundle;

    .line 376
    .line 377
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 378
    .line 379
    .line 380
    const-string v1, "ret"

    .line 381
    .line 382
    invoke-virtual {v0, v1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 383
    .line 384
    .line 385
    const-string v1, "triggerType"

    .line 386
    .line 387
    invoke-virtual {v0, v1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 388
    .line 389
    .line 390
    sget-object p4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 391
    .line 392
    invoke-interface {p1, p2, p3, p5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 393
    .line 394
    .line 395
    :goto_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0OO:Lkotlin/jvm/functions/Function1;

    .line 396
    .line 397
    if-eqz p1, :cond_6

    .line 398
    .line 399
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 400
    .line 401
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 402
    .line 403
    .line 404
    goto :goto_6

    .line 405
    :goto_5
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0OO:Lkotlin/jvm/functions/Function1;

    .line 406
    .line 407
    if-eqz p2, :cond_5

    .line 408
    .line 409
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 410
    .line 411
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    :cond_5
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    .line 415
    .line 416
    invoke-static {p2}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getTAG$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p2

    .line 420
    const-string p3, "requestHtml-> Throwable"

    .line 421
    .line 422
    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    .line 424
    .line 425
    :cond_6
    :goto_6
    return-void
.end method
