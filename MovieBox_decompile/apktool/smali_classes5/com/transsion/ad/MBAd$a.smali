.class public final Lcom/transsion/ad/MBAd$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/MBAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Z

.field private final d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Lrh/a;

.field private final i:Z

.field private final j:Z

.field private final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLcom/transsion/ad/strategy/AppManager$AppEnum;Ljava/lang/String;Ljava/lang/String;ZLrh/a;ZZZ)V
    .locals 1

    .line 1
    const-string v0, "hisavanaAppId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appEnum"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "hotSceneId"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "adConfigUrl"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/transsion/ad/MBAd$a;->a:Ljava/lang/String;

    .line 25
    .line 26
    iput-boolean p2, p0, Lcom/transsion/ad/MBAd$a;->b:Z

    .line 27
    .line 28
    iput-boolean p3, p0, Lcom/transsion/ad/MBAd$a;->c:Z

    .line 29
    .line 30
    iput-object p4, p0, Lcom/transsion/ad/MBAd$a;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    .line 31
    .line 32
    iput-object p5, p0, Lcom/transsion/ad/MBAd$a;->e:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p6, p0, Lcom/transsion/ad/MBAd$a;->f:Ljava/lang/String;

    .line 35
    .line 36
    iput-boolean p7, p0, Lcom/transsion/ad/MBAd$a;->g:Z

    .line 37
    .line 38
    iput-object p8, p0, Lcom/transsion/ad/MBAd$a;->h:Lrh/a;

    .line 39
    .line 40
    iput-boolean p9, p0, Lcom/transsion/ad/MBAd$a;->i:Z

    .line 41
    .line 42
    iput-boolean p10, p0, Lcom/transsion/ad/MBAd$a;->j:Z

    .line 43
    .line 44
    iput-boolean p11, p0, Lcom/transsion/ad/MBAd$a;->k:Z

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/MBAd$a;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()Lcom/transsion/ad/strategy/AppManager$AppEnum;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lrh/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->h:Lrh/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

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
    instance-of v1, p1, Lcom/transsion/ad/MBAd$a;

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
    check-cast p1, Lcom/transsion/ad/MBAd$a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/ad/MBAd$a;->a:Ljava/lang/String;

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
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->b:Z

    .line 25
    .line 26
    iget-boolean v3, p1, Lcom/transsion/ad/MBAd$a;->b:Z

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->c:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Lcom/transsion/ad/MBAd$a;->c:Z

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    .line 39
    .line 40
    iget-object v3, p1, Lcom/transsion/ad/MBAd$a;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->e:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v3, p1, Lcom/transsion/ad/MBAd$a;->e:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->f:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, p1, Lcom/transsion/ad/MBAd$a;->f:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->g:Z

    .line 68
    .line 69
    iget-boolean v3, p1, Lcom/transsion/ad/MBAd$a;->g:Z

    .line 70
    .line 71
    if-eq v1, v3, :cond_8

    .line 72
    .line 73
    return v2

    .line 74
    :cond_8
    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->h:Lrh/a;

    .line 75
    .line 76
    iget-object v3, p1, Lcom/transsion/ad/MBAd$a;->h:Lrh/a;

    .line 77
    .line 78
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_9

    .line 83
    .line 84
    return v2

    .line 85
    :cond_9
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->i:Z

    .line 86
    .line 87
    iget-boolean v3, p1, Lcom/transsion/ad/MBAd$a;->i:Z

    .line 88
    .line 89
    if-eq v1, v3, :cond_a

    .line 90
    .line 91
    return v2

    .line 92
    :cond_a
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->j:Z

    .line 93
    .line 94
    iget-boolean v3, p1, Lcom/transsion/ad/MBAd$a;->j:Z

    .line 95
    .line 96
    if-eq v1, v3, :cond_b

    .line 97
    .line 98
    return v2

    .line 99
    :cond_b
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->k:Z

    .line 100
    .line 101
    iget-boolean p1, p1, Lcom/transsion/ad/MBAd$a;->k:Z

    .line 102
    .line 103
    if-eq v1, p1, :cond_c

    .line 104
    .line 105
    return v2

    .line 106
    :cond_c
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/MBAd$a;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/MBAd$a;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->a:Ljava/lang/String;

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
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->b:Z

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->c:Z

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->e:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->f:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->g:Z

    .line 55
    .line 56
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-object v1, p0, Lcom/transsion/ad/MBAd$a;->h:Lrh/a;

    .line 64
    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    :goto_0
    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    .line 75
    .line 76
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->i:Z

    .line 77
    .line 78
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    add-int/2addr v0, v1

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    .line 84
    .line 85
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->j:Z

    .line 86
    .line 87
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v0, v1

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    .line 93
    .line 94
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->k:Z

    .line 95
    .line 96
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    add-int/2addr v0, v1

    .line 101
    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/MBAd$a;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/MBAd$a;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ad/MBAd$a;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->b:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsion/ad/MBAd$a;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/ad/MBAd$a;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    .line 8
    .line 9
    invoke-virtual {v3}, Lcom/transsion/ad/strategy/AppManager$AppEnum;->getValue()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/transsion/ad/MBAd$a;->e:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/transsion/ad/MBAd$a;->f:Ljava/lang/String;

    .line 16
    .line 17
    iget-boolean v6, p0, Lcom/transsion/ad/MBAd$a;->g:Z

    .line 18
    .line 19
    iget-object v7, p0, Lcom/transsion/ad/MBAd$a;->h:Lrh/a;

    .line 20
    .line 21
    iget-boolean v8, p0, Lcom/transsion/ad/MBAd$a;->i:Z

    .line 22
    .line 23
    iget-boolean v9, p0, Lcom/transsion/ad/MBAd$a;->j:Z

    .line 24
    .line 25
    iget-boolean v10, p0, Lcom/transsion/ad/MBAd$a;->k:Z

    .line 26
    .line 27
    new-instance v11, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v12, "\n                AdInitParams {\n                    hisavanaAppId = "

    .line 33
    .line 34
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "\n                    adTestDevice = "

    .line 41
    .line 42
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, "\n                    isDebug = "

    .line 49
    .line 50
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, "\n                    appEnum = "

    .line 57
    .line 58
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, "\n                    hotSceneId = "

    .line 65
    .line 66
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, "\n                    adConfigUrl = "

    .line 73
    .line 74
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, "\n                    mediaDisposeAppForeground = "

    .line 81
    .line 82
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, "\n                    businessBridge = "

    .line 89
    .line 90
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, "\n                    mediaDisposeH5Url = "

    .line 97
    .line 98
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, "\n                    skipHiSdkInitDelay = "

    .line 105
    .line 106
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, "\n                    openPsActivateAd = "

    .line 113
    .line 114
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, "\n                }\n            "

    .line 121
    .line 122
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/MBAd$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/ad/MBAd$a;->b:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/transsion/ad/MBAd$a;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/ad/MBAd$a;->d:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/ad/MBAd$a;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/ad/MBAd$a;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v6, p0, Lcom/transsion/ad/MBAd$a;->g:Z

    .line 14
    .line 15
    iget-object v7, p0, Lcom/transsion/ad/MBAd$a;->h:Lrh/a;

    .line 16
    .line 17
    iget-boolean v8, p0, Lcom/transsion/ad/MBAd$a;->i:Z

    .line 18
    .line 19
    iget-boolean v9, p0, Lcom/transsion/ad/MBAd$a;->j:Z

    .line 20
    .line 21
    iget-boolean v10, p0, Lcom/transsion/ad/MBAd$a;->k:Z

    .line 22
    .line 23
    new-instance v11, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v12, "AdInitParams(hisavanaAppId="

    .line 29
    .line 30
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", adTestDevice="

    .line 37
    .line 38
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", isDebug="

    .line 45
    .line 46
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", appEnum="

    .line 53
    .line 54
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", hotSceneId="

    .line 61
    .line 62
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", adConfigUrl="

    .line 69
    .line 70
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", mediaDisposeAppForeground="

    .line 77
    .line 78
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", businessBridge="

    .line 85
    .line 86
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", mediaDisposeH5Url="

    .line 93
    .line 94
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", skipHiSdkInitDelay="

    .line 101
    .line 102
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ", openPsActivateAd="

    .line 109
    .line 110
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ")"

    .line 117
    .line 118
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
