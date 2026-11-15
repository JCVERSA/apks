.class final Lcom/google/android/exoplayer2/source/rtsp/g0;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/g0$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableMap;

.field public final b:Lcom/google/common/collect/ImmutableList;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Landroid/net/Uri;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->a(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->a:Lcom/google/common/collect/ImmutableMap;

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->e(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->b:Lcom/google/common/collect/ImmutableList;

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->f(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->c:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->g(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->d:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->h(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->e:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->i(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->g:Landroid/net/Uri;

    .line 9
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->j(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->h:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->k(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->f:I

    .line 11
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->l(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->i:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->b(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->j:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->c(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->k:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/g0$b;->d(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->l:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/g0$b;Lcom/google/android/exoplayer2/source/rtsp/g0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/g0;-><init>(Lcom/google/android/exoplayer2/source/rtsp/g0$b;)V

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
    const-class v3, Lcom/google/android/exoplayer2/source/rtsp/g0;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/g0;

    .line 19
    .line 20
    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->f:I

    .line 21
    .line 22
    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/g0;->f:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->a:Lcom/google/common/collect/ImmutableMap;

    .line 27
    .line 28
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/g0;->a:Lcom/google/common/collect/ImmutableMap;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->b:Lcom/google/common/collect/ImmutableList;

    .line 37
    .line 38
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/g0;->b:Lcom/google/common/collect/ImmutableList;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->d:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/g0;->d:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->c:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/g0;->c:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->e:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/g0;->e:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->l:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/g0;->l:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->g:Landroid/net/Uri;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/g0;->g:Landroid/net/Uri;

    .line 89
    .line 90
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->j:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/g0;->j:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_2

    .line 105
    .line 106
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->k:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/g0;->k:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->h:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/g0;->h:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_2

    .line 125
    .line 126
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->i:Ljava/lang/String;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/g0;->i:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    move v0, v1

    .line 138
    :goto_0
    return v0

    .line 139
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->a:Lcom/google/common/collect/ImmutableMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->b:Lcom/google/common/collect/ImmutableList;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/2addr v1, v0

    .line 19
    mul-int/lit8 v1, v1, 0x1f

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->d:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    move v0, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :goto_0
    add-int/2addr v1, v0

    .line 33
    mul-int/lit8 v1, v1, 0x1f

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->c:Ljava/lang/String;

    .line 36
    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    move v0, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    :goto_1
    add-int/2addr v1, v0

    .line 46
    mul-int/lit8 v1, v1, 0x1f

    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->e:Ljava/lang/String;

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    move v0, v2

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    :goto_2
    add-int/2addr v1, v0

    .line 59
    mul-int/lit8 v1, v1, 0x1f

    .line 60
    .line 61
    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->f:I

    .line 62
    .line 63
    add-int/2addr v1, v0

    .line 64
    mul-int/lit8 v1, v1, 0x1f

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->l:Ljava/lang/String;

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    move v0, v2

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    :goto_3
    add-int/2addr v1, v0

    .line 77
    mul-int/lit8 v1, v1, 0x1f

    .line 78
    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->g:Landroid/net/Uri;

    .line 80
    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    move v0, v2

    .line 84
    goto :goto_4

    .line 85
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    :goto_4
    add-int/2addr v1, v0

    .line 90
    mul-int/lit8 v1, v1, 0x1f

    .line 91
    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->j:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    move v0, v2

    .line 97
    goto :goto_5

    .line 98
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    :goto_5
    add-int/2addr v1, v0

    .line 103
    mul-int/lit8 v1, v1, 0x1f

    .line 104
    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->k:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v0, :cond_6

    .line 108
    .line 109
    move v0, v2

    .line 110
    goto :goto_6

    .line 111
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    :goto_6
    add-int/2addr v1, v0

    .line 116
    mul-int/lit8 v1, v1, 0x1f

    .line 117
    .line 118
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->h:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v0, :cond_7

    .line 121
    .line 122
    move v0, v2

    .line 123
    goto :goto_7

    .line 124
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    :goto_7
    add-int/2addr v1, v0

    .line 129
    mul-int/lit8 v1, v1, 0x1f

    .line 130
    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g0;->i:Ljava/lang/String;

    .line 132
    .line 133
    if-nez v0, :cond_8

    .line 134
    .line 135
    goto :goto_8

    .line 136
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    :goto_8
    add-int/2addr v1, v2

    .line 141
    return v1
.end method
