.class public final Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

.field private final b:[Z

.field private c:Z

.field private d:Z

.field final synthetic e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    .line 4
    invoke-static {p2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->e(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->f(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->b:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic c(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;)[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->b:[Z

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->c:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p0, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->l(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, p0, v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->l(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->b(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->d0(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    .line 25
    .line 26
    invoke-static {v0, p0, v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->l(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;Z)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iput-boolean v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->d:Z

    .line 30
    .line 31
    return-void
.end method

.method public g(I)Ljava/io/OutputStream;
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->f(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->g(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-ne v1, p0, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->e(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->b:[Z

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    aput-boolean v2, v1, p1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->a:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Entry;->k(I)Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    .line 45
    .line 46
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->h(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)Ljava/io/File;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    .line 59
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    .line 60
    .line 61
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    .line 63
    .line 64
    :goto_1
    :try_start_4
    new-instance p1, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-direct {p1, p0, v1, v2}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$1;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v0

    .line 71
    return-object p1

    .line 72
    :catch_1
    invoke-static {}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->k()Ljava/io/OutputStream;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    monitor-exit v0

    .line 77
    return-object p1

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    throw p1

    .line 86
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v2, "Expected index "

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, " to be greater than 0 and less than the maximum value count of "

    .line 102
    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache$Editor;->e:Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;->f(Lcom/cloud/hisavana/net/disklrucache/DiskLruCache;)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0
.end method
