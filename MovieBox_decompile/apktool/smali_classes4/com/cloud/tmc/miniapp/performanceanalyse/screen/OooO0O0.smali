.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

.field public OooO0O0:I

.field public OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

.field public OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

.field public OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

.field public OooO0o0:I

.field public OooO0oO:Z

.field public OooO0oo:Z


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;-><init>(Lcom/cloud/tmc/kernel/render/IRender;ILcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;ILcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;ZZI)V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/render/IRender;ILcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;ILcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    .line 4
    iput p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 6
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 7
    iput p5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    .line 8
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    .line 9
    iput-boolean p7, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    .line 10
    iput-boolean p8, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/tmc/kernel/render/IRender;ILcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;ILcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;ZZI)V
    .locals 8

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, p5

    :goto_1
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, p7

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v2, p8

    :goto_3
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object p1, p0

    move-object p2, v0

    move p3, v1

    move-object p4, v5

    move-object p5, v6

    move p6, v3

    move-object p7, v7

    move/from16 p8, v4

    move/from16 p9, v2

    .line 11
    invoke-direct/range {p1 .. p9}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;-><init>(Lcom/cloud/tmc/kernel/render/IRender;ILcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;ILcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;ZZ)V

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
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

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
    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

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
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    .line 25
    .line 26
    iget v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    .line 54
    .line 55
    iget v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    .line 56
    .line 57
    if-eq v1, v3, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    .line 63
    .line 64
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    .line 72
    .line 73
    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    .line 74
    .line 75
    if-eq v1, v3, :cond_8

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    .line 79
    .line 80
    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    .line 81
    .line 82
    if-eq v1, p1, :cond_9

    .line 83
    .line 84
    return v2

    .line 85
    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    .line 15
    .line 16
    add-int/2addr v2, v0

    .line 17
    mul-int/lit8 v2, v2, 0x1f

    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    move v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_1
    add-int/2addr v2, v0

    .line 30
    mul-int/lit8 v2, v2, 0x1f

    .line 31
    .line 32
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    move v0, v1

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_2
    add-int/2addr v2, v0

    .line 43
    mul-int/lit8 v2, v2, 0x1f

    .line 44
    .line 45
    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    .line 46
    .line 47
    add-int/2addr v0, v2

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    .line 51
    .line 52
    if-nez v2, :cond_3

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    :goto_3
    add-int/2addr v0, v1

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    .line 62
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    move v1, v2

    .line 68
    :cond_4
    add-int/2addr v0, v1

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    .line 72
    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_5
    move v2, v1

    .line 77
    :goto_4
    add-int/2addr v0, v2

    .line 78
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    .line 2
    .line 3
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 8
    .line 9
    iget v4, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    .line 12
    .line 13
    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    .line 14
    .line 15
    iget-boolean v7, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    .line 16
    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v9, "PageData(render="

    .line 23
    .line 24
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", renderConnectionStatus="

    .line 31
    .line 32
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", renderSubscriber="

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
    const-string v0, ", checkWhiteScreenSubscriber="

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
    const-string v0, ", renderStatus="

    .line 55
    .line 56
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ", timeCountTask="

    .line 63
    .line 64
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, ", checkFinished="

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
    const-string v0, ", onPageReady="

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
