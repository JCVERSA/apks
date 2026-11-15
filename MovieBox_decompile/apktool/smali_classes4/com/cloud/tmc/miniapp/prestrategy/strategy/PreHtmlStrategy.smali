.class public final Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO00o;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO00o;

.field public static final KEY_FILE_PRE_HTML:Ljava/lang/String; = "miniStrategyPreHtml"

.field public static final KEY_PRE_HTML_LIST:Ljava/lang/String; = "miniStrategyPreHtmlList"


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0OO:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->Companion:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO00o;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "PreHtmlStrategy"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO00o:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "synchronizedList(ArrayList())"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO0O0:Ljava/util/List;

    .line 23
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO0OO:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    .line 32
    return-void
.end method

.method public static final synthetic access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO0O0:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final access$removePreRequestNum(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO0OO:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO0OO:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO00o:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "removePreRequestNum"

    .line 22
    .line 23
    invoke-static {p0, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final OooO00o()I
    .locals 3

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    .line 8
    .line 9
    const-string v1, "miniPreHtmlRequestNum"

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public checkPreHtmlCache(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 10

    .line 1
    const-string v0, "_time"

    .line 2
    .line 3
    const-string v1, "miniStrategyPreHtml"

    .line 4
    .line 5
    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 6
    .line 7
    const-string v3, "urlMd5"

    .line 8
    .line 9
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return v3

    .line 16
    :cond_0
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    :try_start_0
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    check-cast v6, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 23
    .line 24
    new-instance v7, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-interface {v6, p1, v1, v7}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v6

    .line 45
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO00o:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v7, v6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    move-wide v6, v4

    .line 51
    :goto_0
    cmp-long v4, v6, v4

    .line 52
    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    return v3

    .line 56
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    sub-long/2addr v4, v6

    .line 61
    :try_start_1
    sget-object v6, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 62
    .line 63
    const-string v7, "preHtmlExpiredTime"

    .line 64
    .line 65
    const/16 v8, 0x18

    .line 66
    .line 67
    invoke-virtual {v6, v7, v8}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    mul-int/lit16 v6, v6, 0xe10

    .line 72
    .line 73
    int-to-long v6, v6

    .line 74
    const-wide/16 v8, 0x3e8

    .line 75
    .line 76
    mul-long/2addr v6, v8

    .line 77
    goto :goto_1

    .line 78
    :catchall_1
    const-wide/32 v6, 0x5265c00

    .line 79
    .line 80
    .line 81
    :goto_1
    cmp-long v4, v4, v6

    .line 82
    .line 83
    if-gez v4, :cond_2

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO00o:Ljava/lang/String;

    .line 87
    .line 88
    const-string v4, "html cache is expired"

    .line 89
    .line 90
    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    if-eqz p3, :cond_3

    .line 94
    .line 95
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO0O0:Ljava/util/List;

    .line 96
    .line 97
    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    check-cast p3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 105
    .line 106
    invoke-interface {p3, p1, v1, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    move-object v1, p3

    .line 114
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 115
    .line 116
    new-instance p3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    const-string v3, "miniStrategyPreHtml"

    .line 132
    .line 133
    const-wide/16 v5, -0x1

    .line 134
    .line 135
    move-object v2, p1

    .line 136
    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 137
    .line 138
    .line 139
    :cond_3
    const/4 v3, 0x0

    .line 140
    :goto_2
    return v3
.end method

.method public getPreHtmlCache(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "md5"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 18
    .line 19
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->GET_PRE_HTML:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 20
    .line 21
    new-instance v3, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "getPreHtmlChannel"

    .line 27
    .line 28
    invoke-virtual {v3, v4, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    const-string v5, ""

    .line 34
    .line 35
    invoke-interface {v1, v5, v2, v5, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    const-class v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 45
    .line 46
    const-string v2, "miniStrategyPreHtml"

    .line 47
    .line 48
    invoke-interface {v1, p1, v2, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    move-object v1, v5

    .line 55
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/4 v3, 0x0

    .line 60
    const-string v6, "hitRet"

    .line 61
    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 69
    .line 70
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->GET_PRE_HTML_HIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 71
    .line 72
    new-instance p4, Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p4, v4, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p4, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    invoke-interface {p1, v5, p2, v5, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 84
    .line 85
    .line 86
    return-object v5

    .line 87
    :cond_1
    const-string v2, "triggerType"

    .line 88
    .line 89
    const/4 v7, 0x1

    .line 90
    if-eqz p4, :cond_2

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2, v3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->checkPreHtmlCache(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_2

    .line 97
    .line 98
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 103
    .line 104
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->GET_PRE_HTML_HIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 105
    .line 106
    new-instance p4, Landroid/os/Bundle;

    .line 107
    .line 108
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p4, v4, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p4, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p4, v2, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p1, v5, p2, v5, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 121
    .line 122
    .line 123
    return-object v5

    .line 124
    :cond_2
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 129
    .line 130
    sget-object p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->GET_PRE_HTML_HIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 131
    .line 132
    new-instance p4, Landroid/os/Bundle;

    .line 133
    .line 134
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p4, v4, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    const/4 p3, 0x2

    .line 141
    invoke-virtual {p4, v6, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p4, v2, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v5, p2, v5, p4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 148
    .line 149
    .line 150
    return-object v1
.end method

.method public requestHtml(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v7, p0

    .line 2
    move-object/from16 v8, p1

    .line 3
    .line 4
    move-object/from16 v9, p3

    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "contentUrl"

    .line 12
    .line 13
    move-object/from16 v10, p2

    .line 14
    .line 15
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v11, v7, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO0O0:Ljava/util/List;

    .line 19
    .line 20
    monitor-enter v11

    .line 21
    :try_start_0
    iget-object v0, v7, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO0OO:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO00o()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-lt v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v0, v7, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO00o:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO00o()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "requestNum >="

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " return"

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Landroid/os/Bundle;

    .line 65
    .line 66
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v1, "failReason"

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO00o()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v4, "requestNum >="

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, " return"

    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->trackPreStrategyFailPoint(Landroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    if-eqz v9, :cond_0

    .line 104
    .line 105
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :cond_0
    :goto_0
    monitor-exit v11

    .line 115
    return-void

    .line 116
    :cond_1
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_3

    .line 121
    .line 122
    iget-object v0, v7, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO00o:Ljava/lang/String;

    .line 123
    .line 124
    const-string v1, "contentUrl is empty"

    .line 125
    .line 126
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    if-eqz v9, :cond_2

    .line 130
    .line 131
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 132
    .line 133
    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .line 135
    .line 136
    :cond_2
    monitor-exit v11

    .line 137
    return-void

    .line 138
    :cond_3
    :try_start_2
    iget-object v0, v7, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO0O0:Ljava/util/List;

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_5

    .line 145
    .line 146
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 153
    .line 154
    const-string v1, "miniStrategyPreHtml"

    .line 155
    .line 156
    const-string v2, "miniStrategyPreHtmlList"

    .line 157
    .line 158
    invoke-interface {v0, v8, v1, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-nez v0, :cond_4

    .line 163
    .line 164
    const-string v0, ""

    .line 165
    .line 166
    :cond_4
    const-string v1, "TmcProxy.get(KVStoragePr\u2026                  ) ?: \"\""

    .line 167
    .line 168
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-lez v1, :cond_5

    .line 176
    .line 177
    new-instance v1, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$requestHtml$1$list$1;

    .line 178
    .line 179
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$requestHtml$1$list$1;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Ljava/util/ArrayList;

    .line 191
    .line 192
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO0O0:Ljava/util/List;

    .line 193
    .line 194
    const-string v2, "list"

    .line 195
    .line 196
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    .line 201
    .line 202
    iget-object v0, v7, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO00o:Ljava/lang/String;

    .line 203
    .line 204
    const-string v1, "preRequestList is init"

    .line 205
    .line 206
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    iget-object v0, v7, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO0O0:Ljava/util/List;

    .line 214
    .line 215
    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_7

    .line 220
    .line 221
    const-string v0, "md5"

    .line 222
    .line 223
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const/4 v5, 0x4

    .line 227
    const/4 v6, 0x0

    .line 228
    const/4 v4, 0x0

    .line 229
    move-object v1, p0

    .line 230
    move-object/from16 v2, p1

    .line 231
    .line 232
    move-object v3, v12

    .line 233
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy$DefaultImpls;->checkPreHtmlCache$default(Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_7

    .line 238
    .line 239
    iget-object v0, v7, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO00o:Ljava/lang/String;

    .line 240
    .line 241
    const-string v1, "content url is exist"

    .line 242
    .line 243
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    if-eqz v9, :cond_6

    .line 247
    .line 248
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 249
    .line 250
    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    .line 252
    .line 253
    :cond_6
    monitor-exit v11

    .line 254
    return-void

    .line 255
    :cond_7
    :try_start_3
    iget-object v0, v7, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO0OO:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :catchall_1
    move-exception v0

    .line 262
    :try_start_4
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO00o:Ljava/lang/String;

    .line 263
    .line 264
    const-string v2, "addPreRequestNum"

    .line 265
    .line 266
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    .line 268
    .line 269
    :goto_1
    iget-object v0, v7, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO0O0:Ljava/util/List;

    .line 270
    .line 271
    const-string v1, "md5"

    .line 272
    .line 273
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 280
    .line 281
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    move-object v1, v0

    .line 286
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 287
    .line 288
    const-string v3, "miniStrategyPreHtml"

    .line 289
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v2, "_time"

    .line 299
    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    const-wide/16 v5, 0x0

    .line 308
    .line 309
    move-object/from16 v2, p1

    .line 310
    .line 311
    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 312
    .line 313
    .line 314
    iget-object v0, v7, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO00o:Ljava/lang/String;

    .line 315
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v2, "md5->"

    .line 322
    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 337
    .line 338
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 343
    .line 344
    const-string v1, ""

    .line 345
    .line 346
    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->PRE_REQUEST_HTML:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 347
    .line 348
    const-string v3, ""

    .line 349
    .line 350
    new-instance v4, Landroid/os/Bundle;

    .line 351
    .line 352
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 353
    .line 354
    .line 355
    const-string v5, "triggerType"

    .line 356
    .line 357
    const/4 v6, 0x1

    .line 358
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 359
    .line 360
    .line 361
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 362
    .line 363
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 364
    .line 365
    .line 366
    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 367
    .line 368
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 373
    .line 374
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 375
    .line 376
    new-instance v14, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;

    .line 377
    .line 378
    const/4 v3, 0x1

    .line 379
    move-object v1, v14

    .line 380
    move-object v2, v12

    .line 381
    move-object v4, p0

    .line 382
    move-object/from16 v5, p3

    .line 383
    .line 384
    move-object/from16 v6, p1

    .line 385
    .line 386
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;-><init>(Ljava/lang/String;ILcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V

    .line 387
    .line 388
    .line 389
    const/4 v3, 0x0

    .line 390
    const/4 v4, 0x0

    .line 391
    move-object v1, v0

    .line 392
    move-object/from16 v2, p2

    .line 393
    .line 394
    move-object v5, v13

    .line 395
    move-object v6, v14

    .line 396
    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 397
    .line 398
    .line 399
    goto :goto_4

    .line 400
    :goto_2
    if-eqz v9, :cond_8

    .line 401
    .line 402
    :try_start_5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 403
    .line 404
    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    goto :goto_3

    .line 408
    :catchall_2
    move-exception v0

    .line 409
    goto :goto_5

    .line 410
    :cond_8
    :goto_3
    iget-object v1, v7, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->OooO00o:Ljava/lang/String;

    .line 411
    .line 412
    const-string v2, "requestZeroSharpNewsHtml"

    .line 413
    .line 414
    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    .line 416
    .line 417
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 418
    .line 419
    monitor-exit v11

    .line 420
    return-void

    .line 421
    :goto_5
    monitor-exit v11

    .line 422
    throw v0
.end method

.method public trackPreStrategyFailPoint(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 2
    .line 3
    const-string v1, "enablePreStrategyTrackPoint"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 20
    .line 21
    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->PRE_STRATEGY_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    new-instance p1, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    :cond_1
    const-string v2, ""

    .line 31
    .line 32
    invoke-interface {v0, v2, v1, v2, p1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
