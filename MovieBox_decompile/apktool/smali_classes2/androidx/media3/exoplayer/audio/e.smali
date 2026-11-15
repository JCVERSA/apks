.class public final Landroidx/media3/exoplayer/audio/e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/e$d;,
        Landroidx/media3/exoplayer/audio/e$b;,
        Landroidx/media3/exoplayer/audio/e$c;,
        Landroidx/media3/exoplayer/audio/e$e;
    }
.end annotation


# static fields
.field public static final c:Landroidx/media3/exoplayer/audio/e;

.field private static final d:Lcom/google/common/collect/ImmutableList;

.field static final e:Lcom/google/common/collect/ImmutableMap;


# instance fields
.field private final a:Landroid/util/SparseArray;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/audio/e;

    .line 2
    .line 3
    sget-object v1, Landroidx/media3/exoplayer/audio/e$e;->d:Landroidx/media3/exoplayer/audio/e$e;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/audio/e;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroidx/media3/exoplayer/audio/e;->c:Landroidx/media3/exoplayer/audio/e;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x5

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x6

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Landroidx/media3/exoplayer/audio/e;->d:Lcom/google/common/collect/ImmutableList;

    .line 34
    .line 35
    new-instance v0, Lcom/google/common/collect/ImmutableMap$b;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$b;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/16 v1, 0x11

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x7

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/16 v1, 0x1e

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/16 v3, 0xa

    .line 70
    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v0, v1, v3}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/16 v1, 0x12

    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/16 v1, 0x8

    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0, v1, v1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const/16 v2, 0xe

    .line 104
    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->d()Lcom/google/common/collect/ImmutableMap;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    sput-object v0, Landroidx/media3/exoplayer/audio/e;->e:Lcom/google/common/collect/ImmutableMap;

    .line 118
    .line 119
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/e;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/audio/e$e;

    .line 6
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/e;->a:Landroid/util/SparseArray;

    iget v4, v2, Landroidx/media3/exoplayer/audio/e$e;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 7
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/e;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/e;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/audio/e$e;

    iget v1, v1, Landroidx/media3/exoplayer/audio/e$e;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/audio/e;->b:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroidx/media3/exoplayer/audio/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/e;-><init>(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/e;->c(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static b()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Amazon"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string v1, "Xiaomi"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
.end method

.method private static c(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/HashSet;

    .line 12
    .line 13
    const/16 v3, 0xc

    .line 14
    .line 15
    filled-new-array {v3}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Lcom/google/common/primitives/Ints;->c([I)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_3

    .line 35
    .line 36
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Landroidx/media3/exoplayer/audio/a;->a(Ljava/lang/Object;)Landroid/media/AudioProfile;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Landroidx/media3/exoplayer/audio/b;->a(Landroid/media/AudioProfile;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const/4 v4, 0x1

    .line 49
    if-ne v3, v4, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-static {v2}, Landroidx/media3/exoplayer/audio/c;->a(Landroid/media/AudioProfile;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-static {v3}, Landroidx/media3/common/util/a1;->G0(I)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    sget-object v4, Landroidx/media3/exoplayer/audio/e;->e:Lcom/google/common/collect/ImmutableMap;

    .line 63
    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_2

    .line 84
    .line 85
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Ljava/util/Set;

    .line 94
    .line 95
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Ljava/util/Set;

    .line 100
    .line 101
    invoke-static {v2}, Landroidx/media3/exoplayer/audio/d;->a(Landroid/media/AudioProfile;)[I

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v2}, Lcom/google/common/primitives/Ints;->c([I)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    new-instance v4, Ljava/util/HashSet;

    .line 118
    .line 119
    invoke-static {v2}, Landroidx/media3/exoplayer/audio/d;->a(Landroid/media/AudioProfile;)[I

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-static {v2}, Lcom/google/common/primitives/Ints;->c([I)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_4

    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    .line 160
    new-instance v2, Landroidx/media3/exoplayer/audio/e$e;

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Ljava/lang/Integer;

    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    check-cast v1, Ljava/util/Set;

    .line 177
    .line 178
    invoke-direct {v2, v3, v1}, Landroidx/media3/exoplayer/audio/e$e;-><init>(ILjava/util/Set;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    return-object p0
.end method

.method private static d([II)Lcom/google/common/collect/ImmutableList;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    new-array p0, v1, [I

    .line 9
    .line 10
    :cond_0
    :goto_0
    array-length v2, p0

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    aget v2, p0, v1

    .line 14
    .line 15
    new-instance v3, Landroidx/media3/exoplayer/audio/e$e;

    .line 16
    .line 17
    invoke-direct {v3, v2, p1}, Landroidx/media3/exoplayer/audio/e$e;-><init>(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method static e(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/e;
    .locals 4

    .line 1
    invoke-static {p0}, Lt1/m;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x21

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget p3, Landroidx/media3/common/util/a1;->a:I

    .line 11
    .line 12
    if-lt p3, v1, :cond_1

    .line 13
    .line 14
    invoke-static {v0, p2}, Landroidx/media3/exoplayer/audio/e$d;->b(Landroid/media/AudioManager;Landroidx/media3/common/c;)Landroidx/media3/exoplayer/audio/j;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p3, 0x0

    .line 20
    :goto_0
    sget v2, Landroidx/media3/common/util/a1;->a:I

    .line 21
    .line 22
    if-lt v2, v1, :cond_3

    .line 23
    .line 24
    invoke-static {p0}, Landroidx/media3/common/util/a1;->K0(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    invoke-static {p0}, Landroidx/media3/common/util/a1;->D0(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    :cond_2
    invoke-static {v0, p2}, Landroidx/media3/exoplayer/audio/e$d;->a(Landroid/media/AudioManager;Landroidx/media3/common/c;)Landroidx/media3/exoplayer/audio/e;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_3
    const/16 v1, 0x17

    .line 42
    .line 43
    if-lt v2, v1, :cond_4

    .line 44
    .line 45
    invoke-static {v0, p3}, Landroidx/media3/exoplayer/audio/e$b;->b(Landroid/media/AudioManager;Landroidx/media3/exoplayer/audio/j;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_4

    .line 50
    .line 51
    sget-object p0, Landroidx/media3/exoplayer/audio/e;->c:Landroidx/media3/exoplayer/audio/e;

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_4
    new-instance p3, Lcom/google/common/collect/ImmutableSet$a;

    .line 55
    .line 56
    invoke-direct {p3}, Lcom/google/common/collect/ImmutableSet$a;-><init>()V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x2

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p3, v0}, Lcom/google/common/collect/ImmutableSet$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$a;

    .line 65
    .line 66
    .line 67
    const/16 v0, 0x1d

    .line 68
    .line 69
    const/16 v1, 0xa

    .line 70
    .line 71
    if-lt v2, v0, :cond_6

    .line 72
    .line 73
    invoke-static {p0}, Landroidx/media3/common/util/a1;->K0(Landroid/content/Context;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    invoke-static {p0}, Landroidx/media3/common/util/a1;->D0(Landroid/content/Context;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_6

    .line 84
    .line 85
    :cond_5
    invoke-static {p2}, Landroidx/media3/exoplayer/audio/e$c;->a(Landroidx/media3/common/c;)Lcom/google/common/collect/ImmutableList;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p3, p0}, Lcom/google/common/collect/ImmutableSet$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$a;

    .line 90
    .line 91
    .line 92
    new-instance p0, Landroidx/media3/exoplayer/audio/e;

    .line 93
    .line 94
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableSet$a;->o()Lcom/google/common/collect/ImmutableSet;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1, v1}, Landroidx/media3/exoplayer/audio/e;->d([II)Lcom/google/common/collect/ImmutableList;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/e;-><init>(Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string p2, "use_external_surround_sound_flag"

    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    invoke-static {p0, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    const/4 v2, 0x1

    .line 122
    if-ne p2, v2, :cond_7

    .line 123
    .line 124
    move p2, v2

    .line 125
    goto :goto_1

    .line 126
    :cond_7
    move p2, v0

    .line 127
    :goto_1
    if-nez p2, :cond_8

    .line 128
    .line 129
    invoke-static {}, Landroidx/media3/exoplayer/audio/e;->b()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_9

    .line 134
    .line 135
    :cond_8
    const-string v3, "external_surround_sound_enabled"

    .line 136
    .line 137
    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-ne p0, v2, :cond_9

    .line 142
    .line 143
    sget-object p0, Landroidx/media3/exoplayer/audio/e;->d:Lcom/google/common/collect/ImmutableList;

    .line 144
    .line 145
    invoke-virtual {p3, p0}, Lcom/google/common/collect/ImmutableSet$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$a;

    .line 146
    .line 147
    .line 148
    :cond_9
    if-eqz p1, :cond_b

    .line 149
    .line 150
    if-nez p2, :cond_b

    .line 151
    .line 152
    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    .line 153
    .line 154
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-ne p0, v2, :cond_b

    .line 159
    .line 160
    const-string p0, "android.media.extra.ENCODINGS"

    .line 161
    .line 162
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    if-eqz p0, :cond_a

    .line 167
    .line 168
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->c([I)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {p3, p0}, Lcom/google/common/collect/ImmutableSet$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$a;

    .line 173
    .line 174
    .line 175
    :cond_a
    new-instance p0, Landroidx/media3/exoplayer/audio/e;

    .line 176
    .line 177
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableSet$a;->o()Lcom/google/common/collect/ImmutableSet;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-static {p2}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    const-string p3, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 186
    .line 187
    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    invoke-static {p2, p1}, Landroidx/media3/exoplayer/audio/e;->d([II)Lcom/google/common/collect/ImmutableList;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/e;-><init>(Ljava/util/List;)V

    .line 196
    .line 197
    .line 198
    return-object p0

    .line 199
    :cond_b
    new-instance p0, Landroidx/media3/exoplayer/audio/e;

    .line 200
    .line 201
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableSet$a;->o()Lcom/google/common/collect/ImmutableSet;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {p1}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {p1, v1}, Landroidx/media3/exoplayer/audio/e;->d([II)Lcom/google/common/collect/ImmutableList;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/e;-><init>(Ljava/util/List;)V

    .line 214
    .line 215
    .line 216
    return-object p0
.end method

.method static f(Landroid/content/Context;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/e;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, v0, p1, p2}, Landroidx/media3/exoplayer/audio/e;->e(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/e;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static g(I)I
    .locals 2

    .line 1
    sget v0, Landroidx/media3/common/util/a1;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-gt v0, v1, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x7

    .line 8
    if-ne p0, v1, :cond_0

    .line 9
    .line 10
    const/16 p0, 0x8

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x3

    .line 14
    if-eq p0, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    if-eq p0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    if-ne p0, v1, :cond_2

    .line 21
    .line 22
    :cond_1
    const/4 p0, 0x6

    .line 23
    :cond_2
    :goto_0
    const/16 v1, 0x1a

    .line 24
    .line 25
    if-gt v0, v1, :cond_3

    .line 26
    .line 27
    const-string v0, "fugu"

    .line 28
    .line 29
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    if-ne p0, v0, :cond_3

    .line 39
    .line 40
    const/4 p0, 0x2

    .line 41
    :cond_3
    invoke-static {p0}, Landroidx/media3/common/util/a1;->M(I)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method static i()Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/media3/exoplayer/audio/e;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "external_surround_sound_enabled"

    .line 8
    .line 9
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
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
    instance-of v1, p1, Landroidx/media3/exoplayer/audio/e;

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
    check-cast p1, Landroidx/media3/exoplayer/audio/e;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/e;->a:Landroid/util/SparseArray;

    .line 14
    .line 15
    iget-object v3, p1, Landroidx/media3/exoplayer/audio/e;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-static {v1, v3}, Landroidx/media3/common/util/a1;->t(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget v1, p0, Landroidx/media3/exoplayer/audio/e;->b:I

    .line 24
    .line 25
    iget p1, p1, Landroidx/media3/exoplayer/audio/e;->b:I

    .line 26
    .line 27
    if-ne v1, p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v0, v2

    .line 31
    :goto_0
    return v0
.end method

.method public h(Landroidx/media3/common/r;Landroidx/media3/common/c;)Landroid/util/Pair;
    .locals 6

    .line 1
    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p1, Landroidx/media3/common/r;->k:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroidx/media3/common/y;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Landroidx/media3/exoplayer/audio/e;->e:Lcom/google/common/collect/ImmutableMap;

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_0
    const/16 v1, 0x12

    .line 30
    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/audio/e;->k(I)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x6

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/16 v3, 0x8

    .line 42
    .line 43
    if-ne v0, v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/audio/e;->k(I)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    :cond_2
    const/16 v3, 0x1e

    .line 52
    .line 53
    if-ne v0, v3, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/audio/e;->k(I)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_4

    .line 60
    .line 61
    :cond_3
    const/4 v0, 0x7

    .line 62
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/e;->k(I)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_5

    .line 67
    .line 68
    return-object v2

    .line 69
    :cond_5
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/e;->a:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Landroidx/media3/exoplayer/audio/e$e;

    .line 76
    .line 77
    invoke-static {v3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Landroidx/media3/exoplayer/audio/e$e;

    .line 82
    .line 83
    iget v4, p1, Landroidx/media3/common/r;->E:I

    .line 84
    .line 85
    const/4 v5, -0x1

    .line 86
    if-eq v4, v5, :cond_8

    .line 87
    .line 88
    if-ne v0, v1, :cond_6

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_6
    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    .line 92
    .line 93
    const-string p2, "audio/vnd.dts.uhd;profile=p2"

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_7

    .line 100
    .line 101
    sget p1, Landroidx/media3/common/util/a1;->a:I

    .line 102
    .line 103
    const/16 p2, 0x21

    .line 104
    .line 105
    if-ge p1, p2, :cond_7

    .line 106
    .line 107
    const/16 p1, 0xa

    .line 108
    .line 109
    if-le v4, p1, :cond_a

    .line 110
    .line 111
    return-object v2

    .line 112
    :cond_7
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/audio/e$e;->c(I)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_a

    .line 117
    .line 118
    return-object v2

    .line 119
    :cond_8
    :goto_1
    iget p1, p1, Landroidx/media3/common/r;->F:I

    .line 120
    .line 121
    if-eq p1, v5, :cond_9

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_9
    const p1, 0xbb80

    .line 125
    .line 126
    .line 127
    :goto_2
    invoke-virtual {v3, p1, p2}, Landroidx/media3/exoplayer/audio/e$e;->b(ILandroidx/media3/common/c;)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    :cond_a
    invoke-static {v4}, Landroidx/media3/exoplayer/audio/e;->g(I)I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_b

    .line 136
    .line 137
    return-object v2

    .line 138
    :cond_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/e;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/e;->a:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/media3/common/util/a1;->u(Landroid/util/SparseArray;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int/lit8 v1, v1, 0x1f

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public j(Landroidx/media3/common/r;Landroidx/media3/common/c;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/audio/e;->h(Landroidx/media3/common/r;Landroidx/media3/common/c;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public k(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/e;->a:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/media3/common/util/a1;->r(Landroid/util/SparseArray;I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AudioCapabilities[maxChannelCount="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/media3/exoplayer/audio/e;->b:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", audioProfiles="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/e;->a:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "]"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
