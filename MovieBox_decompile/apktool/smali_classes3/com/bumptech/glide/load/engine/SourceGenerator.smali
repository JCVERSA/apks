.class Lcom/bumptech/glide/load/engine/SourceGenerator;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SourceGenerator"


# instance fields
.field private final cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

.field private volatile dataToCache:Ljava/lang/Object;

.field private final helper:Lcom/bumptech/glide/load/engine/DecodeHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeHelper<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile loadDataListIndex:I

.field private volatile originalKey:Lcom/bumptech/glide/load/engine/DataCacheKey;

.field private volatile sourceCacheGenerator:Lcom/bumptech/glide/load/engine/DataCacheGenerator;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeHelper<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 7
    .line 8
    return-void
.end method

.method private cacheData(Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "SourceGenerator"

    .line 2
    .line 3
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    iget-object v4, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 9
    .line 10
    invoke-virtual {v4, p1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getRewinder(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-interface {v4}, Lcom/bumptech/glide/load/data/DataRewinder;->rewindAndGet()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget-object v6, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 19
    .line 20
    invoke-virtual {v6, v5}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getSourceEncoder(Ljava/lang/Object;)Lcom/bumptech/glide/load/Encoder;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    new-instance v7, Lcom/bumptech/glide/load/engine/DataCacheWriter;

    .line 25
    .line 26
    iget-object v8, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 27
    .line 28
    invoke-virtual {v8}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getOptions()Lcom/bumptech/glide/load/Options;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-direct {v7, v6, v5, v8}, Lcom/bumptech/glide/load/engine/DataCacheWriter;-><init>(Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;Lcom/bumptech/glide/load/Options;)V

    .line 33
    .line 34
    .line 35
    new-instance v5, Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 36
    .line 37
    iget-object v8, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 38
    .line 39
    iget-object v8, v8, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 40
    .line 41
    iget-object v9, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 42
    .line 43
    invoke-virtual {v9}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getSignature()Lcom/bumptech/glide/load/Key;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-direct {v5, v8, v9}, Lcom/bumptech/glide/load/engine/DataCacheKey;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;)V

    .line 48
    .line 49
    .line 50
    iget-object v8, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 51
    .line 52
    invoke-virtual {v8}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-interface {v8, v5, v7}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    .line 57
    .line 58
    .line 59
    const/4 v7, 0x2

    .line 60
    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 61
    .line 62
    .line 63
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const-string v9, ", data: "

    .line 65
    .line 66
    if-eqz v7, :cond_0

    .line 67
    .line 68
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v10, "Finished encoding source to cache, key: "

    .line 74
    .line 75
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v10, ", encoder: "

    .line 88
    .line 89
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v6, ", duration: "

    .line 96
    .line 97
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-static {v1, v2}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    .line 101
    .line 102
    .line 103
    move-result-wide v1

    .line 104
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    goto :goto_1

    .line 117
    :cond_0
    :goto_0
    invoke-interface {v8, v5}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const/4 v2, 0x1

    .line 122
    if-eqz v1, :cond_1

    .line 123
    .line 124
    iput-object v5, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->originalKey:Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 125
    .line 126
    new-instance p1, Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    .line 127
    .line 128
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 131
    .line 132
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 137
    .line 138
    invoke-direct {p1, v0, v1, p0}, Lcom/bumptech/glide/load/engine/DataCacheGenerator;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    .line 139
    .line 140
    .line 141
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->sourceCacheGenerator:Lcom/bumptech/glide/load/engine/DataCacheGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .line 143
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 144
    .line 145
    iget-object p1, p1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 146
    .line 147
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 148
    .line 149
    .line 150
    return v2

    .line 151
    :cond_1
    const/4 v1, 0x3

    .line 152
    :try_start_2
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_2

    .line 157
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v1, "Attempt to write: "

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->originalKey:Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p1, " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly..."

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .line 183
    .line 184
    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 185
    .line 186
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 187
    .line 188
    iget-object v5, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 189
    .line 190
    invoke-interface {v4}, Lcom/bumptech/glide/load/data/DataRewinder;->rewindAndGet()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 195
    .line 196
    iget-object v7, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 197
    .line 198
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 199
    .line 200
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 201
    .line 202
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 207
    .line 208
    iget-object v9, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 209
    .line 210
    move-object v4, p1

    .line 211
    invoke-interface/range {v4 .. v9}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 212
    .line 213
    .line 214
    return v3

    .line 215
    :catchall_1
    move-exception p1

    .line 216
    move v3, v2

    .line 217
    :goto_1
    if-nez v3, :cond_3

    .line 218
    .line 219
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 220
    .line 221
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 222
    .line 223
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 224
    .line 225
    .line 226
    :cond_3
    throw p1
.end method

.method private hasNextModelLoader()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadDataListIndex:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method private startNextLoad(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getPriority()Lcom/bumptech/glide/Priority;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/bumptech/glide/load/engine/SourceGenerator$1;

    .line 12
    .line 13
    invoke-direct {v2, p0, p1}, Lcom/bumptech/glide/load/engine/SourceGenerator$1;-><init>(Lcom/bumptech/glide/load/engine/SourceGenerator;Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method isCurrentRequest(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

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

.method public onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p4, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/Key;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 2
    .line 3
    iget-object p4, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 4
    .line 5
    iget-object p4, p4, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 6
    .line 7
    invoke-interface {p4}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v3, p3

    .line 14
    move-object v5, p1

    .line 15
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method onDataReadyInternal(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object v1, p1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->dataToCache:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->reschedule()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 30
    .line 31
    iget-object v1, p1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 34
    .line 35
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->originalKey:Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 40
    .line 41
    move-object v2, p2

    .line 42
    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method onLoadFailedInternal(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;Ljava/lang/Exception;)V
    .locals 3
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->cb:Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->originalKey:Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v0, v1, p2, p1, v2}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;->onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public reschedule()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public startNext()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->dataToCache:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->dataToCache:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->dataToCache:Ljava/lang/Object;

    .line 10
    .line 11
    :try_start_0
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/SourceGenerator;->cacheData(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :catch_0
    const-string v0, "SourceGenerator"

    .line 19
    .line 20
    const/4 v3, 0x3

    .line 21
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->sourceCacheGenerator:Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->sourceCacheGenerator:Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DataCacheGenerator;->startNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    return v2

    .line 37
    :cond_1
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->sourceCacheGenerator:Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/SourceGenerator;->hasNextModelLoader()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getLoadData()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadDataListIndex:I

    .line 57
    .line 58
    add-int/lit8 v4, v3, 0x1

    .line 59
    .line 60
    iput v4, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadDataListIndex:I

    .line 61
    .line 62
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getDiskCacheStrategy()Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 81
    .line 82
    iget-object v3, v3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 83
    .line 84
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->isDataCacheable(Lcom/bumptech/glide/load/DataSource;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_3

    .line 93
    .line 94
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->helper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 95
    .line 96
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 97
    .line 98
    iget-object v3, v3, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;->fetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 99
    .line 100
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/DecodeHelper;->hasLoadPath(Ljava/lang/Class;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/SourceGenerator;->loadData:Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    .line 111
    .line 112
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/SourceGenerator;->startNextLoad(Lcom/bumptech/glide/load/model/ModelLoader$LoadData;)V

    .line 113
    .line 114
    .line 115
    move v0, v2

    .line 116
    goto :goto_0

    .line 117
    :cond_4
    return v0
.end method
