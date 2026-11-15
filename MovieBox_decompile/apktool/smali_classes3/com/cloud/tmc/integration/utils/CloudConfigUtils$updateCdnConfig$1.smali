.class public final Lcom/cloud/tmc/integration/utils/CloudConfigUtils$updateCdnConfig$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->updateCdnConfig(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016JJ\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0014\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\r2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/cloud/tmc/integration/utils/CloudConfigUtils$updateCdnConfig$1",
        "Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;",
        "onFailure",
        "",
        "errCode",
        "",
        "errMsg",
        "callbackId",
        "onSuccess",
        "responseCode",
        "",
        "responseStr",
        "headers",
        "",
        "cookies",
        "",
        "Lokhttp3/Cookie;",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils$updateCdnConfig$1;->$context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->access$setRequesting$p(Z)V

    .line 3
    .line 4
    .line 5
    sget-object p2, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    .line 6
    .line 7
    const-string p3, "cdnConfigsuccess"

    .line 8
    .line 9
    invoke-virtual {p2, p3, p1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetBool(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-class p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils$updateCdnConfig$1;->$context:Landroid/content/Context;

    .line 25
    .line 26
    const-string v3, "laterestRequestCdnTime"

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    const-string v2, "miniLauncherGlobal"

    .line 33
    .line 34
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 35
    .line 36
    .line 37
    :cond_0
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
    const-string p1, "0"

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    :try_start_0
    sget-object p4, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

    .line 5
    .line 6
    invoke-virtual {p4}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->getTAG()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p5

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "getMyByteAppRecommendList onSuccess: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p5, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    if-eqz p2, :cond_7

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result p5

    .line 36
    if-nez p5, :cond_0

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_0
    const-class p5, Lcom/cloud/tmc/integration/model/ConfigCdnBean;

    .line 40
    .line 41
    invoke-static {p2, p5}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Lcom/cloud/tmc/integration/model/ConfigCdnBean;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/ConfigCdnBean;->getS()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    const-string v0, ""

    .line 52
    .line 53
    if-nez p5, :cond_1

    .line 54
    .line 55
    move-object p5, v0

    .line 56
    :cond_1
    :try_start_1
    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    const-string v2, "1"

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    :cond_2
    move p5, v3

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    :try_start_2
    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p5

    .line 71
    if-eqz p5, :cond_2

    .line 72
    .line 73
    move p5, p3

    .line 74
    :goto_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/ConfigCdnBean;->getA()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    if-nez p2, :cond_4

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    move-object v0, p2

    .line 82
    :goto_1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    :cond_5
    move v3, p3

    .line 89
    goto :goto_2

    .line 90
    :cond_6
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    :goto_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils$updateCdnConfig$1;->$context:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {p4, p1, p5, v3}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->access$updateCloudConfigStatus(Lcom/cloud/tmc/integration/utils/CloudConfigUtils;Landroid/content/Context;ZZ)V

    .line 99
    .line 100
    .line 101
    const-class p1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    move-object v0, p1

    .line 108
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    .line 109
    .line 110
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils$updateCdnConfig$1;->$context:Landroid/content/Context;

    .line 111
    .line 112
    const-string v2, "miniLauncherGlobal"

    .line 113
    .line 114
    const-string v3, "laterestRequestCdnTime"

    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v4

    .line 120
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 121
    .line 122
    .line 123
    invoke-static {p3}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->access$setRequesting$p(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :catchall_0
    move-exception p1

    .line 128
    goto :goto_4

    .line 129
    :cond_7
    :goto_3
    return-void

    .line 130
    :goto_4
    invoke-static {p3}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->access$setRequesting$p(Z)V

    .line 131
    .line 132
    .line 133
    sget-object p2, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->getTAG()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    new-instance p3, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string p4, "getCloudConfig error "

    .line 145
    .line 146
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :goto_5
    return-void
.end method
