.class public abstract Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;
.super Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$a;,
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field private final b:Ljava/util/LinkedHashMap;

.field private final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field private final d:Ljava/util/Set;

.field private volatile e:J

.field private volatile f:F

.field private final g:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$b;

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroid/os/Handler;


# direct methods
.method static synthetic e(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private f(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method static synthetic h(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->k(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->i:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->h:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->i:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->h:Ljava/lang/Runnable;

    .line 11
    .line 12
    const-wide/16 v2, 0x2710

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private j()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->a:Ljava/io/File;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    if-lez v1, :cond_2

    .line 16
    .line 17
    new-instance v1, Ljava/util/HashMap;

    .line 18
    .line 19
    array-length v2, v0

    .line 20
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    array-length v3, v0

    .line 26
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    array-length v3, v0

    .line 30
    const/4 v4, 0x0

    .line 31
    :goto_0
    if-ge v4, v3, :cond_1

    .line 32
    .line 33
    aget-object v5, v0, v4

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_3

    .line 58
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$3;

    .line 62
    .line 63
    invoke-direct {v0, p0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$3;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;Ljava/util/HashMap;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ljava/io/File;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->b:Ljava/util/LinkedHashMap;

    .line 86
    .line 87
    invoke-direct {p0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->f(Ljava/io/File;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->i()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :goto_3
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 107
    .line 108
    .line 109
    throw v0
.end method

.method private k(J)V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->b:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/io/File;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    add-long/2addr v2, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    cmp-long v1, v2, p1

    .line 48
    .line 49
    if-gtz v1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    long-to-float p1, p1

    .line 58
    :try_start_1
    iget p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->f:F

    .line 59
    .line 60
    mul-float/2addr p1, p2

    .line 61
    float-to-long p1, p1

    .line 62
    new-instance v1, Ljava/util/HashSet;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .line 66
    .line 67
    :try_start_2
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->b:Ljava/util/LinkedHashMap;

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_5

    .line 82
    .line 83
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Ljava/util/Map$Entry;

    .line 88
    .line 89
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    check-cast v6, Ljava/io/File;

    .line 94
    .line 95
    if-eqz v6, :cond_3

    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_3

    .line 102
    .line 103
    iget-object v7, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->g:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$b;

    .line 104
    .line 105
    invoke-direct {p0, v6}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->f(Ljava/io/File;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v7, v8}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$b;->a(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-nez v7, :cond_4

    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 116
    .line 117
    .line 118
    move-result-wide v7

    .line 119
    new-instance v9, Ljava/io/File;

    .line 120
    .line 121
    new-instance v10, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v11, "-tmp"

    .line 134
    .line 135
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_4

    .line 150
    .line 151
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    sub-long/2addr v2, v7

    .line 155
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    :cond_4
    :goto_1
    cmp-long v5, v2, p1

    .line 171
    .line 172
    if-gtz v5, :cond_2

    .line 173
    .line 174
    :cond_5
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    if-eqz p2, :cond_6

    .line 183
    .line 184
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    check-cast p2, Ljava/lang/String;

    .line 189
    .line 190
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->b:Ljava/util/LinkedHashMap;

    .line 191
    .line 192
    invoke-virtual {v2, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :catchall_0
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :catchall_1
    const/4 v1, 0x0

    .line 203
    goto :goto_3

    .line 204
    :goto_4
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->d:Ljava/util/Set;

    .line 205
    .line 206
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result p2

    .line 214
    if-eqz p2, :cond_7

    .line 215
    .line 216
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    check-cast p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$a;

    .line 221
    .line 222
    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$a;->a(Ljava/util/Set;)V

    .line 223
    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_7
    new-instance p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$5;

    .line 227
    .line 228
    const-string p2, "trimSize"

    .line 229
    .line 230
    const/4 v1, 0x1

    .line 231
    invoke-direct {p1, p0, p2, v1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC$5;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;Ljava/lang/String;ILjava/util/HashSet;)V

    .line 232
    .line 233
    .line 234
    invoke-static {p1}, Lcom/bytedance/sdk/component/Dq/vS;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method static synthetic l(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract g()V
.end method
