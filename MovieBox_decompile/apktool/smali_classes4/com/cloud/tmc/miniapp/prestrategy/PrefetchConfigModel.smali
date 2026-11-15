.class public final Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private bundle:Landroid/os/Bundle;

.field private dataType:Ljava/lang/String;

.field private executeTime:J

.field private expiredTime:J

.field private h5Url:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private miniappType:I

.field private netType:I

.field private priority:I

.field private sceneId:Ljava/lang/String;

.field private source:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->priority:I

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    iput v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->netType:I

    .line 9
    .line 10
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->expiredTime:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->executeTime:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move-object v2, v1

    .line 14
    :goto_0
    const-class v3, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 15
    .line 16
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    return v3

    .line 24
    :cond_2
    const-string v2, "null cannot be cast to non-null type com.cloud.tmc.miniapp.prestrategy.PrefetchConfigModel"

    .line 25
    .line 26
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->sceneId:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->sceneId:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    return v3

    .line 42
    :cond_3
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->appId:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v4, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->appId:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_4

    .line 51
    .line 52
    return v3

    .line 53
    :cond_4
    iget v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->priority:I

    .line 54
    .line 55
    iget v4, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->priority:I

    .line 56
    .line 57
    if-eq v2, v4, :cond_5

    .line 58
    .line 59
    return v3

    .line 60
    :cond_5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->dataType:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v4, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->dataType:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_6

    .line 69
    .line 70
    return v3

    .line 71
    :cond_6
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->source:Ljava/util/ArrayList;

    .line 72
    .line 73
    if-eqz v2, :cond_7

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    goto :goto_1

    .line 80
    :cond_7
    move-object v2, v1

    .line 81
    :goto_1
    iget-object v4, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->source:Ljava/util/ArrayList;

    .line 82
    .line 83
    if-eqz v4, :cond_8

    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :cond_8
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_9

    .line 94
    .line 95
    return v3

    .line 96
    :cond_9
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->h5Url:Ljava/util/ArrayList;

    .line 97
    .line 98
    iget-object v2, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->h5Url:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_a

    .line 105
    .line 106
    return v3

    .line 107
    :cond_a
    iget v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->netType:I

    .line 108
    .line 109
    iget v2, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->netType:I

    .line 110
    .line 111
    if-eq v1, v2, :cond_b

    .line 112
    .line 113
    return v3

    .line 114
    :cond_b
    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->expiredTime:J

    .line 115
    .line 116
    iget-wide v4, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->expiredTime:J

    .line 117
    .line 118
    cmp-long v1, v1, v4

    .line 119
    .line 120
    if-eqz v1, :cond_c

    .line 121
    .line 122
    return v3

    .line 123
    :cond_c
    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->executeTime:J

    .line 124
    .line 125
    iget-wide v4, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->executeTime:J

    .line 126
    .line 127
    cmp-long p1, v1, v4

    .line 128
    .line 129
    if-eqz p1, :cond_d

    .line 130
    .line 131
    return v3

    .line 132
    :cond_d
    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBundle()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->bundle:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDataType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->dataType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExecuteTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->executeTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getExpiredTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->expiredTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getH5Url()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->h5Url:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMiniappType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->miniappType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNetType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->netType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->priority:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->sceneId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSource()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->source:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->sceneId:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->appId:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->priority:I

    .line 28
    .line 29
    add-int/2addr v0, v2

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->dataType:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v2, v1

    .line 42
    :goto_2
    add-int/2addr v0, v2

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->source:Ljava/util/ArrayList;

    .line 46
    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    move v2, v1

    .line 61
    :goto_3
    add-int/2addr v0, v2

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->h5Url:Ljava/util/ArrayList;

    .line 65
    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    :cond_4
    add-int/2addr v0, v1

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    .line 74
    .line 75
    iget v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->netType:I

    .line 76
    .line 77
    add-int/2addr v0, v1

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    .line 79
    .line 80
    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->expiredTime:J

    .line 81
    .line 82
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    add-int/2addr v1, v0

    .line 87
    mul-int/lit8 v1, v1, 0x1f

    .line 88
    .line 89
    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->executeTime:J

    .line 90
    .line 91
    invoke-static {v2, v3}, Landroidx/collection/s;->a(J)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    add-int/2addr v0, v1

    .line 96
    return v0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->bundle:Landroid/os/Bundle;

    .line 2
    .line 3
    return-void
.end method

.method public final setDataType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->dataType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExecuteTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->executeTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setExpiredTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->expiredTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setH5Url(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->h5Url:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public final setMiniappType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->miniappType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNetType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->netType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->priority:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->sceneId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSource(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->source:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->sceneId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->appId:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->priority:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->dataType:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->source:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v4, 0x0

    .line 19
    :goto_0
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->h5Url:Ljava/util/ArrayList;

    .line 20
    .line 21
    iget v6, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->netType:I

    .line 22
    .line 23
    iget-wide v7, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->expiredTime:J

    .line 24
    .line 25
    iget-wide v9, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->executeTime:J

    .line 26
    .line 27
    iget v11, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->miniappType:I

    .line 28
    .line 29
    iget-object v12, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->bundle:Landroid/os/Bundle;

    .line 30
    .line 31
    new-instance v13, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v14, "PrefetchConfigModel(sceneId="

    .line 37
    .line 38
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", appId="

    .line 45
    .line 46
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", priority="

    .line 53
    .line 54
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", dataType="

    .line 61
    .line 62
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", source="

    .line 69
    .line 70
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", h5Url="

    .line 77
    .line 78
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", netType="

    .line 85
    .line 86
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", expiredTime="

    .line 93
    .line 94
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", executeTime="

    .line 101
    .line 102
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ", miniappType="

    .line 109
    .line 110
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ", bundle="

    .line 117
    .line 118
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v0, ")"

    .line 125
    .line 126
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    return-object v0
.end method
