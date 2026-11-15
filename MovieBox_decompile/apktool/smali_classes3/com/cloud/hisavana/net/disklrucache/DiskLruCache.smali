.class public final Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;,
        Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;,
        Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final o:Ljava/util/regex/Pattern;

.field private static final p:Ljava/io/OutputStream;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:I

.field private f:J

.field private final g:I

.field private h:J

.field private i:Ljava/io/Writer;

.field private final j:Ljava/util/LinkedHashMap;

.field private k:I

.field private l:J

.field final m:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final n:Ljava/util/concurrent/Callable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "[a-z0-9_-]{1,120}"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->o:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$2;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$2;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->p:Ljava/io/OutputStream;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJZ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->h:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->l:J

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 11
    .line 12
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 15
    .line 16
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    const-wide/16 v5, 0x3c

    .line 22
    .line 23
    move-object v2, v0

    .line 24
    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 28
    .line 29
    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->n:Ljava/util/concurrent/Callable;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->a:Ljava/io/File;

    .line 37
    .line 38
    iput p2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->e:I

    .line 39
    .line 40
    new-instance p2, Ljava/io/File;

    .line 41
    .line 42
    const-string v0, "journal"

    .line 43
    .line 44
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->b:Ljava/io/File;

    .line 48
    .line 49
    new-instance p2, Ljava/io/File;

    .line 50
    .line 51
    const-string v0, "journal.tmp"

    .line 52
    .line 53
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->c:Ljava/io/File;

    .line 57
    .line 58
    new-instance p2, Ljava/io/File;

    .line 59
    .line 60
    const-string v0, "journal.bkp"

    .line 61
    .line 62
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iput-object p2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->d:Ljava/io/File;

    .line 66
    .line 67
    iput p3, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->g:I

    .line 68
    .line 69
    iput-wide p4, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->f:J

    .line 70
    .line 71
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 72
    .line 73
    const/4 p2, 0x0

    .line 74
    const/high16 p3, 0x3f400000    # 0.75f

    .line 75
    .line 76
    invoke-direct {p1, p2, p3, p6}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 80
    .line 81
    return-void
.end method

.method private S()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->c:Ljava/io/File;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->r(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->g(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x0

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    :goto_1
    iget v2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->g:I

    .line 36
    .line 37
    if-ge v3, v2, :cond_0

    .line 38
    .line 39
    iget-wide v4, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->h:J

    .line 40
    .line 41
    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->a(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)[J

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    aget-wide v6, v2, v3

    .line 46
    .line 47
    add-long/2addr v4, v6

    .line 48
    iput-wide v4, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->h:J

    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v2, 0x0

    .line 54
    invoke-static {v1, v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->h(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 55
    .line 56
    .line 57
    :goto_2
    iget v2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->g:I

    .line 58
    .line 59
    if-ge v3, v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->j(I)Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->r(Ljava/io/File;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->k(I)Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->r(Ljava/io/File;)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    return-void
.end method

.method private T()V
    .locals 9

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    new-instance v1, Lcom/cloud/hisavana/net/disklrucache/StrictLineReader;

    .line 4
    .line 5
    new-instance v2, Ljava/io/FileInputStream;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->b:Ljava/io/File;

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    sget-object v3, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->a:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Lcom/cloud/hisavana/net/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v1}, Lcom/cloud/hisavana/net/disklrucache/StrictLineReader;->k()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1}, Lcom/cloud/hisavana/net/disklrucache/StrictLineReader;->k()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1}, Lcom/cloud/hisavana/net/disklrucache/StrictLineReader;->k()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v1}, Lcom/cloud/hisavana/net/disklrucache/StrictLineReader;->k()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v1}, Lcom/cloud/hisavana/net/disklrucache/StrictLineReader;->k()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    const-string v7, "libcore.io.DiskLruCache"

    .line 38
    .line 39
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    const-string v7, "1"

    .line 46
    .line 47
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_1

    .line 52
    .line 53
    iget v7, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->e:I

    .line 54
    .line 55
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    iget v4, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->g:I

    .line 66
    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    const-string v4, ""

    .line 78
    .line 79
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/net/disklrucache/StrictLineReader;->k()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-direct {p0, v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->W(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_2

    .line 98
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    sub-int/2addr v0, v2

    .line 105
    iput v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->k:I

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/cloud/hisavana/net/disklrucache/StrictLineReader;->h()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    .line 113
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->X()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 118
    .line 119
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 120
    .line 121
    new-instance v3, Ljava/io/FileOutputStream;

    .line 122
    .line 123
    iget-object v4, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->b:Ljava/io/File;

    .line 124
    .line 125
    const/4 v5, 0x1

    .line 126
    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 127
    .line 128
    .line 129
    sget-object v4, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->a:Ljava/nio/charset/Charset;

    .line 130
    .line 131
    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    .line 139
    :goto_1
    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->b(Ljava/io/Closeable;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    .line 144
    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v8, "unexpected journal header: ["

    .line 151
    .line 152
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, "]"

    .line 177
    .line 178
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    :goto_2
    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->b(Ljava/io/Closeable;)V

    .line 190
    .line 191
    .line 192
    throw v0
.end method

.method private W(Ljava/lang/String;)V
    .locals 8

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "unexpected journal line: "

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    if-eq v1, v3, :cond_6

    .line 11
    .line 12
    add-int/lit8 v4, v1, 0x1

    .line 13
    .line 14
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x6

    .line 25
    if-ne v1, v5, :cond_1

    .line 26
    .line 27
    const-string v5, "REMOVE"

    .line 28
    .line 29
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    :cond_1
    iget-object v5, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    if-nez v5, :cond_2

    .line 55
    .line 56
    new-instance v5, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    .line 57
    .line 58
    invoke-direct {v5, p0, v4, v6}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;)V

    .line 59
    .line 60
    .line 61
    iget-object v7, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    invoke-virtual {v7, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_2
    const/4 v4, 0x5

    .line 67
    if-eq v0, v3, :cond_3

    .line 68
    .line 69
    if-ne v1, v4, :cond_3

    .line 70
    .line 71
    const-string v7, "CLEAN"

    .line 72
    .line 73
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_3

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    add-int/2addr v0, v1

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v0, " "

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {v5, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->f(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;Z)Z

    .line 92
    .line 93
    .line 94
    invoke-static {v5, v6}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->h(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 95
    .line 96
    .line 97
    invoke-static {v5, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->i(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    if-ne v0, v3, :cond_4

    .line 102
    .line 103
    if-ne v1, v4, :cond_4

    .line 104
    .line 105
    const-string v4, "DIRTY"

    .line 106
    .line 107
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_4

    .line 112
    .line 113
    new-instance p1, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 114
    .line 115
    invoke-direct {p1, p0, v5, v6}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v5, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->h(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    if-ne v0, v3, :cond_5

    .line 123
    .line 124
    const/4 v0, 0x4

    .line 125
    if-ne v1, v0, :cond_5

    .line 126
    .line 127
    const-string v0, "READ"

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    :goto_0
    return-void

    .line 136
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v0

    .line 157
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 158
    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v0
.end method

.method private declared-synchronized X()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    :goto_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 14
    .line 15
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 16
    .line 17
    new-instance v2, Ljava/io/FileOutputStream;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->c:Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 22
    .line 23
    .line 24
    sget-object v3, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->a:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "\n"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "1"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "\n"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->e:I

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "\n"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->g:I

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v1, "\n"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v1, "\n"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    .line 106
    .line 107
    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->g(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const/16 v4, 0xa

    .line 112
    .line 113
    if-eqz v3, :cond_1

    .line 114
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v5, "DIRTY "

    .line 121
    .line 122
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->b(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catchall_1
    move-exception v1

    .line 144
    goto :goto_2

    .line 145
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v5, "CLEAN "

    .line 151
    .line 152
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->b(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->l()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->b:Ljava/io/File;

    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    const/4 v1, 0x1

    .line 190
    if-eqz v0, :cond_3

    .line 191
    .line 192
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->b:Ljava/io/File;

    .line 193
    .line 194
    iget-object v2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->d:Ljava/io/File;

    .line 195
    .line 196
    invoke-static {v0, v2, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->e0(Ljava/io/File;Ljava/io/File;Z)V

    .line 197
    .line 198
    .line 199
    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->c:Ljava/io/File;

    .line 200
    .line 201
    iget-object v2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->b:Ljava/io/File;

    .line 202
    .line 203
    const/4 v3, 0x0

    .line 204
    invoke-static {v0, v2, v3}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->e0(Ljava/io/File;Ljava/io/File;Z)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->d:Ljava/io/File;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 210
    .line 211
    .line 212
    new-instance v0, Ljava/io/BufferedWriter;

    .line 213
    .line 214
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 215
    .line 216
    new-instance v3, Ljava/io/FileOutputStream;

    .line 217
    .line 218
    iget-object v4, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->b:Ljava/io/File;

    .line 219
    .line 220
    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 221
    .line 222
    .line 223
    sget-object v1, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->a:Ljava/nio/charset/Charset;

    .line 224
    .line 225
    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 226
    .line 227
    .line 228
    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 229
    .line 230
    .line 231
    iput-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 232
    .line 233
    monitor-exit p0

    .line 234
    return-void

    .line 235
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 236
    .line 237
    .line 238
    throw v1

    .line 239
    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    throw v0
.end method

.method static synthetic b(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)Ljava/io/Writer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->f0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static e0(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->r(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method static synthetic f(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->g:I

    .line 2
    .line 3
    return p0
.end method

.method private f0()V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->h:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->f:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->d0(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->w(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method private g0(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->o:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, "\""

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method static synthetic h(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->a:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->v()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic k()Ljava/io/OutputStream;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->p:Ljava/io/OutputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic l(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->p(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->X()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->k:I

    .line 2
    .line 3
    return p1
.end method

.method private o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "cache is closed"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private declared-synchronized p(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;Z)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->c(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->g(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-ne v1, p1, :cond_a

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->e(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    move v2, v1

    .line 22
    :goto_0
    iget v3, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->g:I

    .line 23
    .line 24
    if-ge v2, v3, :cond_2

    .line 25
    .line 26
    invoke-static {p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->d(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;)[Z

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    aget-boolean v3, v3, v2

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->k(I)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a()V

    .line 56
    .line 57
    .line 58
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v0, "Newly created entry didn\'t create value for index "

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1

    .line 81
    :cond_2
    :goto_1
    iget p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->g:I

    .line 82
    .line 83
    if-ge v1, p1, :cond_5

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->k(I)Ljava/io/File;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p2, :cond_3

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->j(I)Ljava/io/File;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->a(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)[J

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    aget-wide v3, p1, v1

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 111
    .line 112
    .line 113
    move-result-wide v5

    .line 114
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->a(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)[J

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    aput-wide v5, p1, v1

    .line 119
    .line 120
    iget-wide v7, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->h:J

    .line 121
    .line 122
    sub-long/2addr v7, v3

    .line 123
    add-long/2addr v7, v5

    .line 124
    iput-wide v7, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->h:J

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    invoke-static {p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->r(Ljava/io/File;)V

    .line 128
    .line 129
    .line 130
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_5
    iget p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->k:I

    .line 134
    .line 135
    const/4 v1, 0x1

    .line 136
    add-int/2addr p1, v1

    .line 137
    iput p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->k:I

    .line 138
    .line 139
    const/4 p1, 0x0

    .line 140
    invoke-static {v0, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->h(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->e(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    or-int/2addr p1, p2

    .line 148
    const/16 v2, 0xa

    .line 149
    .line 150
    if-eqz p1, :cond_6

    .line 151
    .line 152
    invoke-static {v0, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->f(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;Z)Z

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;

    .line 156
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v3, "CLEAN "

    .line 163
    .line 164
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->b(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->l()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    if-eqz p2, :cond_7

    .line 192
    .line 193
    iget-wide p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->l:J

    .line 194
    .line 195
    const-wide/16 v1, 0x1

    .line 196
    .line 197
    add-long/2addr v1, p1

    .line 198
    iput-wide v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->l:J

    .line 199
    .line 200
    invoke-static {v0, p1, p2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->d(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;J)J

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_6
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 205
    .line 206
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->b(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;

    .line 214
    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v1, "REMOVE "

    .line 221
    .line 222
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->b(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;

    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 245
    .line 246
    .line 247
    iget-wide p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->h:J

    .line 248
    .line 249
    iget-wide v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->f:J

    .line 250
    .line 251
    cmp-long p1, p1, v0

    .line 252
    .line 253
    if-gtz p1, :cond_8

    .line 254
    .line 255
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->v()Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_9

    .line 260
    .line 261
    :cond_8
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 262
    .line 263
    iget-object p2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->n:Ljava/util/concurrent/Callable;

    .line 264
    .line 265
    invoke-virtual {p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    .line 267
    .line 268
    :cond_9
    monitor-exit p0

    .line 269
    return-void

    .line 270
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 271
    .line 272
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 273
    .line 274
    .line 275
    throw p1

    .line 276
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    throw p1
.end method

.method private static r(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized t(Ljava/lang/String;J)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->o()V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->g0(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    .line 15
    .line 16
    const-wide/16 v1, -0x1

    .line 17
    .line 18
    cmp-long v1, p2, v1

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->c(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    cmp-long p2, v3, p2

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :cond_0
    :goto_0
    monitor-exit p0

    .line 37
    return-object v2

    .line 38
    :cond_1
    if-nez v0, :cond_2

    .line 39
    .line 40
    :try_start_1
    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    .line 41
    .line 42
    invoke-direct {v0, p0, p1, v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->g(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 52
    .line 53
    .line 54
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    if-eqz p2, :cond_3

    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return-object v2

    .line 59
    :cond_3
    :goto_1
    :try_start_2
    new-instance p2, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 60
    .line 61
    invoke-direct {p2, p0, v0, v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->h(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 65
    .line 66
    .line 67
    iget-object p3, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v1, "DIRTY "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const/16 p1, 0xa

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;

    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .line 98
    .line 99
    monitor-exit p0

    .line 100
    return-object p2

    .line 101
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    throw p1
.end method

.method private v()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->k:I

    .line 2
    .line 3
    const/16 v1, 0x7d0

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lt v0, v1, :cond_0

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

.method private w(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/cloud/hisavana/net/HttpRequest;->a:Lcom/cloud/hisavana/net/HttpRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/hisavana/net/HttpRequest;->g()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/net/HttpRequest;->g()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/cloud/hisavana/net/disklrucache/listener/LruCleanCallBack;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {v1, p1}, Lcom/cloud/hisavana/net/disklrucache/listener/LruCleanCallBack;->onCallBack(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    return-void
.end method

.method public static x(Ljava/io/File;IIJ)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;
    .locals 6

    .line 1
    const/4 v5, 0x1

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move-wide v3, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->y(Ljava/io/File;IIJZ)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static y(Ljava/io/File;IIJZ)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p3, v0

    .line 4
    .line 5
    if-lez v0, :cond_4

    .line 6
    .line 7
    if-lez p2, :cond_3

    .line 8
    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    const-string v1, "journal.bkp"

    .line 12
    .line 13
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    new-instance v1, Ljava/io/File;

    .line 23
    .line 24
    const-string v2, "journal"

    .line 25
    .line 26
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->e0(Ljava/io/File;Ljava/io/File;Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    .line 44
    .line 45
    move-object v3, v0

    .line 46
    move-object v4, p0

    .line 47
    move v5, p1

    .line 48
    move v6, p2

    .line 49
    move-wide v7, p3

    .line 50
    move v9, p5

    .line 51
    invoke-direct/range {v3 .. v9}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJZ)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->b:Ljava/io/File;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    :try_start_0
    invoke-direct {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->T()V

    .line 63
    .line 64
    .line 65
    invoke-direct {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->S()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v4, "DiskLruCache "

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, " is corrupt: "

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, ", removing"

    .line 98
    .line 99
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->q()V

    .line 110
    .line 111
    .line 112
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 113
    .line 114
    .line 115
    new-instance v0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    .line 116
    .line 117
    move-object v3, v0

    .line 118
    move-object v4, p0

    .line 119
    move v5, p1

    .line 120
    move v6, p2

    .line 121
    move-wide v7, p3

    .line 122
    move v9, p5

    .line 123
    invoke-direct/range {v3 .. v9}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;-><init>(Ljava/io/File;IIJZ)V

    .line 124
    .line 125
    .line 126
    invoke-direct {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->X()V

    .line 127
    .line 128
    .line 129
    return-object v0

    .line 130
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 131
    .line 132
    const-string p1, "valueCount <= 0"

    .line 133
    .line 134
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0

    .line 138
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 139
    .line 140
    const-string p1, "maxSize <= 0"

    .line 141
    .line 142
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->g(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->g(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->f0()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    throw v0
.end method

.method public declared-synchronized d0(Ljava/lang/String;)Z
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->o()V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->g0(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->g(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    :goto_0
    iget v2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->g:I

    .line 28
    .line 29
    if-ge v1, v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->j(I)Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v1, "failed to delete "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_3

    .line 73
    :cond_2
    :goto_1
    iget-wide v2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->h:J

    .line 74
    .line 75
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->a(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)[J

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    aget-wide v5, v4, v1

    .line 80
    .line 81
    sub-long/2addr v2, v5

    .line 82
    iput-wide v2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->h:J

    .line 83
    .line 84
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->a(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)[J

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const-wide/16 v3, 0x0

    .line 89
    .line 90
    aput-wide v3, v2, v1

    .line 91
    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iget v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->k:I

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    add-int/2addr v0, v1

    .line 99
    iput v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->k:I

    .line 100
    .line 101
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;

    .line 102
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v3, "REMOVE "

    .line 109
    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const/16 v3, 0xa

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 129
    .line 130
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->v()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_4

    .line 138
    .line 139
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 140
    .line 141
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->n:Ljava/util/concurrent/Callable;

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    .line 146
    :cond_4
    monitor-exit p0

    .line 147
    return v1

    .line 148
    :cond_5
    :goto_2
    monitor-exit p0

    .line 149
    return v1

    .line 150
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    throw p1
.end method

.method public declared-synchronized flush()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->o()V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->f0()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw v0
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->a:Ljava/io/File;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->c(Ljava/io/File;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public s(Ljava/lang/String;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->t(Ljava/lang/String;J)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public declared-synchronized u(Ljava/lang/String;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->o()V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->g0(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->j:Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-object v1

    .line 21
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->e(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Z

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-object v1

    .line 29
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->g:I

    .line 30
    .line 31
    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    move v3, v2

    .line 35
    :goto_0
    :try_start_3
    iget v4, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->g:I

    .line 36
    .line 37
    if-ge v3, v4, :cond_2

    .line 38
    .line 39
    new-instance v4, Ljava/io/FileInputStream;

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->j(I)Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 46
    .line 47
    .line 48
    aput-object v4, v8, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    :try_start_4
    iget v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->k:I

    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    iput v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->k:I

    .line 60
    .line 61
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->i:Ljava/io/Writer;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "READ "

    .line 69
    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const/16 v3, 0xa

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->v()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 95
    .line 96
    iget-object v2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->n:Ljava/util/concurrent/Callable;

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 99
    .line 100
    .line 101
    :cond_3
    new-instance v1, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->c(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v6

    .line 107
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->a(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)[J

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    const/4 v10, 0x0

    .line 112
    move-object v3, v1

    .line 113
    move-object v4, p0

    .line 114
    move-object v5, p1

    .line 115
    invoke-direct/range {v3 .. v10}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Snapshot;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    .line 117
    .line 118
    monitor-exit p0

    .line 119
    return-object v1

    .line 120
    :catch_0
    :goto_1
    :try_start_5
    iget p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->g:I

    .line 121
    .line 122
    if-ge v2, p1, :cond_4

    .line 123
    .line 124
    aget-object p1, v8, v2

    .line 125
    .line 126
    if-eqz p1, :cond_4

    .line 127
    .line 128
    invoke-static {p1}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->b(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 129
    .line 130
    .line 131
    add-int/lit8 v2, v2, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    monitor-exit p0

    .line 135
    return-object v1

    .line 136
    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 137
    throw p1
.end method
