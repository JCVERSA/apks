.class final Lcom/google/android/exoplayer2/source/rtsp/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/a$b;,
        Lcom/google/android/exoplayer2/source/rtsp/a$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/google/common/collect/ImmutableMap;

.field public final j:Lcom/google/android/exoplayer2/source/rtsp/a$c;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/a$b;Lcom/google/common/collect/ImmutableMap;Lcom/google/android/exoplayer2/source/rtsp/a$c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/a$b;->a(Lcom/google/android/exoplayer2/source/rtsp/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/a$b;->b(Lcom/google/android/exoplayer2/source/rtsp/a$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->b:I

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/a$b;->c(Lcom/google/android/exoplayer2/source/rtsp/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->c:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/a$b;->d(Lcom/google/android/exoplayer2/source/rtsp/a$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->d:I

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/a$b;->e(Lcom/google/android/exoplayer2/source/rtsp/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->f:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/a$b;->f(Lcom/google/android/exoplayer2/source/rtsp/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->g:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/a$b;->g(Lcom/google/android/exoplayer2/source/rtsp/a$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->e:I

    .line 10
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/a$b;->h(Lcom/google/android/exoplayer2/source/rtsp/a$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->h:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->i:Lcom/google/common/collect/ImmutableMap;

    .line 12
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->j:Lcom/google/android/exoplayer2/source/rtsp/a$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/a$b;Lcom/google/common/collect/ImmutableMap;Lcom/google/android/exoplayer2/source/rtsp/a$c;Lcom/google/android/exoplayer2/source/rtsp/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/rtsp/a;-><init>(Lcom/google/android/exoplayer2/source/rtsp/a$b;Lcom/google/common/collect/ImmutableMap;Lcom/google/android/exoplayer2/source/rtsp/a$c;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableMap;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->i:Lcom/google/common/collect/ImmutableMap;

    .line 2
    .line 3
    const-string v1, "fmtp"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    const-string v1, " "

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/p0;->T0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    array-length v2, v1

    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v4, 0x0

    .line 27
    const/4 v5, 0x1

    .line 28
    if-ne v2, v3, :cond_1

    .line 29
    .line 30
    move v2, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v2, v4

    .line 33
    :goto_0
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    aget-object v0, v1, v5

    .line 37
    .line 38
    const-string v1, ";\\s?"

    .line 39
    .line 40
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Lcom/google/common/collect/ImmutableMap$b;

    .line 45
    .line 46
    invoke-direct {v1}, Lcom/google/common/collect/ImmutableMap$b;-><init>()V

    .line 47
    .line 48
    .line 49
    array-length v2, v0

    .line 50
    move v3, v4

    .line 51
    :goto_1
    if-ge v3, v2, :cond_2

    .line 52
    .line 53
    aget-object v6, v0, v3

    .line 54
    .line 55
    const-string v7, "="

    .line 56
    .line 57
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/p0;->T0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    aget-object v7, v6, v4

    .line 62
    .line 63
    aget-object v6, v6, v5

    .line 64
    .line 65
    invoke-virtual {v1, v7, v6}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 66
    .line 67
    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$b;->d()Lcom/google/common/collect/ImmutableMap;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
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
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/google/android/exoplayer2/source/rtsp/a;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/a;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/a;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->b:I

    .line 30
    .line 31
    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/a;->b:I

    .line 32
    .line 33
    if-ne v2, v3, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->c:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/a;->c:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->d:I

    .line 46
    .line 47
    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/a;->d:I

    .line 48
    .line 49
    if-ne v2, v3, :cond_2

    .line 50
    .line 51
    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->e:I

    .line 52
    .line 53
    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/a;->e:I

    .line 54
    .line 55
    if-ne v2, v3, :cond_2

    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->i:Lcom/google/common/collect/ImmutableMap;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/a;->i:Lcom/google/common/collect/ImmutableMap;

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->j:Lcom/google/android/exoplayer2/source/rtsp/a$c;

    .line 68
    .line 69
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/a;->j:Lcom/google/android/exoplayer2/source/rtsp/a$c;

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/a$c;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_2

    .line 76
    .line 77
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->f:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/a;->f:Ljava/lang/String;

    .line 80
    .line 81
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->g:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/a;->g:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->h:Ljava/lang/String;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/a;->h:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    move v0, v1

    .line 109
    :goto_0
    return v0

    .line 110
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xd9

    .line 8
    .line 9
    add-int/2addr v1, v0

    .line 10
    mul-int/lit8 v1, v1, 0x1f

    .line 11
    .line 12
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->b:I

    .line 13
    .line 14
    add-int/2addr v1, v0

    .line 15
    mul-int/lit8 v1, v1, 0x1f

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/2addr v1, v0

    .line 24
    mul-int/lit8 v1, v1, 0x1f

    .line 25
    .line 26
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->d:I

    .line 27
    .line 28
    add-int/2addr v1, v0

    .line 29
    mul-int/lit8 v1, v1, 0x1f

    .line 30
    .line 31
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->e:I

    .line 32
    .line 33
    add-int/2addr v1, v0

    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->i:Lcom/google/common/collect/ImmutableMap;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v1, v0

    .line 43
    mul-int/lit8 v1, v1, 0x1f

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->j:Lcom/google/android/exoplayer2/source/rtsp/a$c;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/a$c;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    add-int/2addr v1, v0

    .line 52
    mul-int/lit8 v1, v1, 0x1f

    .line 53
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->f:Ljava/lang/String;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    move v0, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    :goto_0
    add-int/2addr v1, v0

    .line 66
    mul-int/lit8 v1, v1, 0x1f

    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->g:Ljava/lang/String;

    .line 69
    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    move v0, v2

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    :goto_1
    add-int/2addr v1, v0

    .line 79
    mul-int/lit8 v1, v1, 0x1f

    .line 80
    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/a;->h:Ljava/lang/String;

    .line 82
    .line 83
    if-nez v0, :cond_2

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    :goto_2
    add-int/2addr v1, v2

    .line 91
    return v1
.end method
