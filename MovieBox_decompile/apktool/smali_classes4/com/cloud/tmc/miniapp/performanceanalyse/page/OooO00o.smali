.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Ljava/lang/String;

.field public final OooO0OO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0Oo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0o:Z

.field public final OooO0o0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0oO:Z

.field public OooO0oo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 1
    const-string v0, "pagePath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pageId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "stageStartMap"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "stageEndMap"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "stageTime"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    .line 36
    .line 37
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o0:Ljava/util/Map;

    .line 38
    .line 39
    iput-boolean p6, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o:Z

    .line 40
    .line 41
    iput-boolean p7, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oO:Z

    .line 42
    .line 43
    iput-boolean p8, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oo:Z

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o0:Ljava/util/Map;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o0:Ljava/util/Map;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o:Z

    .line 69
    .line 70
    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o:Z

    .line 71
    .line 72
    if-eq v1, v3, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oO:Z

    .line 76
    .line 77
    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oO:Z

    .line 78
    .line 79
    if-eq v1, v3, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oo:Z

    .line 83
    .line 84
    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oo:Z

    .line 85
    .line 86
    if-eq v1, p1, :cond_9

    .line 87
    .line 88
    return v2

    .line 89
    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v1, v0

    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o0:Ljava/util/Map;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o:Z

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    move v1, v2

    .line 51
    :cond_0
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oO:Z

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    move v1, v2

    .line 59
    :cond_1
    add-int/2addr v0, v1

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    .line 62
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oo:Z

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move v2, v1

    .line 68
    :goto_0
    add-int/2addr v0, v2

    .line 69
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0O0:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0OO:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0Oo:Ljava/util/Map;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o0:Ljava/util/Map;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0o:Z

    .line 12
    .line 13
    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oO:Z

    .line 14
    .line 15
    iget-boolean v7, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/page/OooO00o;->OooO0oo:Z

    .line 16
    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v9, "PageOpenPointData(pagePath="

    .line 23
    .line 24
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", pageId="

    .line 31
    .line 32
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", stageStartMap="

    .line 39
    .line 40
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ", stageEndMap="

    .line 47
    .line 48
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ", stageTime="

    .line 55
    .line 56
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ", isHomePage="

    .line 63
    .line 64
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, ", isReportFail="

    .line 71
    .line 72
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ", isPageOpenSuccessed="

    .line 79
    .line 80
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, ")"

    .line 87
    .line 88
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method
