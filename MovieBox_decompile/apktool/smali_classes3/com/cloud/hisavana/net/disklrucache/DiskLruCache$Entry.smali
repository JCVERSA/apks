.class final Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field private c:Z

.field private d:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

.field private e:J

.field final synthetic f:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->f:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->f(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->b:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Ljava/lang/String;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)[J
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->b:[J

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic d(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->e:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic e(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->c:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic g(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->d:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->d:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic i(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->n([Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private m([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/IOException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "unexpected journal line: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method private n([Ljava/lang/String;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->f:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->f(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    :try_start_0
    array-length v1, p1

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->b:[J

    .line 15
    .line 16
    aget-object v2, p1, v0

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void

    .line 28
    :catch_0
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->m([Ljava/lang/String;)Ljava/io/IOException;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    throw p1

    .line 33
    :cond_1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->m([Ljava/lang/String;)Ljava/io/IOException;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    throw p1
.end method


# virtual methods
.method public j(I)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->f:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->h(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, "."

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public k(I)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->f:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->h(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, "."

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, ".tmp"

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->b:[J

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v2, :cond_0

    .line 11
    .line 12
    aget-wide v4, v1, v3

    .line 13
    .line 14
    const/16 v6, 0x20

    .line 15
    .line 16
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
