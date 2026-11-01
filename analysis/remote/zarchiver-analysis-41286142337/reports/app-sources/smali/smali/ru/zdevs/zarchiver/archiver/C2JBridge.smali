.class public Lru/zdevs/zarchiver/archiver/C2JBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/archiver/C2JBridge$a;
    }
.end annotation


# static fields
.field public static a:Lru/zdevs/zarchiver/service/ZArchiverService; = null

.field public static b:Landroid/content/ContextWrapper; = null

.field public static c:Z = false

.field public static d:Ljava/lang/String;

.field public static e:Lf0/d;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:[I

.field public static final i:[I

.field public static final j:[Le0/c;

.field public static final k:[Ljava/lang/String;

.field public static final l:[Le0/i;

.field public static final m:[Ljava/lang/Object;

.field public static final n:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    sput-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->f:[Ljava/lang/String;

    .line 5
    .line 6
    new-array v1, v0, [Ljava/lang/String;

    .line 7
    .line 8
    sput-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->g:[Ljava/lang/String;

    .line 9
    .line 10
    new-array v1, v0, [I

    .line 11
    .line 12
    sput-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->h:[I

    .line 13
    .line 14
    new-array v1, v0, [I

    .line 15
    .line 16
    sput-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->i:[I

    .line 17
    .line 18
    new-array v1, v0, [Le0/c;

    .line 19
    .line 20
    sput-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->j:[Le0/c;

    .line 21
    .line 22
    new-array v1, v0, [Ljava/lang/String;

    .line 23
    .line 24
    sput-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->k:[Ljava/lang/String;

    .line 25
    .line 26
    new-array v1, v0, [Le0/i;

    .line 27
    .line 28
    sput-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->l:[Le0/i;

    .line 29
    .line 30
    new-array v1, v0, [Ljava/lang/Object;

    .line 31
    .line 32
    sput-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->m:[Ljava/lang/Object;

    .line 33
    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    sput-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->n:[Ljava/lang/Object;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)V
    .locals 3

    .line 1
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->m:[Ljava/lang/Object;

    .line 2
    .line 3
    aget-object v1, v0, p0

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v2, Lru/zdevs/zarchiver/archiver/C2JBridge;->i:[I

    .line 9
    .line 10
    aput p1, v2, p0

    .line 11
    .line 12
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    aget-object p0, v0, p0

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 16
    .line 17
    .line 18
    monitor-exit v1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 23
    :catch_0
    const-string p0, "C2JBridge"

    .line 24
    .line 25
    const-string p1, "Error on set overwrite"

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public static b(ILjava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->n:[Ljava/lang/Object;

    .line 2
    .line 3
    aget-object v1, v0, p0

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    :try_start_0
    sget-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->f:[Ljava/lang/String;

    .line 11
    .line 12
    aput-object p1, v1, p0

    .line 13
    .line 14
    :cond_1
    aget-object p1, v0, p0

    .line 15
    .line 16
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :try_start_1
    aget-object p0, v0, p0

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 20
    .line 21
    .line 22
    monitor-exit p1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 27
    :catch_0
    const-string p0, "SetPassword"

    .line 28
    .line 29
    const-string p1, "Error on set pass"

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lru/zdevs/zarchiver/ZApp;->c(Landroid/content/Context;)Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 10
    .line 11
    sput-object p0, Lru/zdevs/zarchiver/archiver/C2JBridge;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 p0, 0x0

    .line 15
    sput-object p0, Lru/zdevs/zarchiver/archiver/C2JBridge;->d:Ljava/lang/String;

    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public static native cAddFiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native cCompress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native cDelFiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native cExtract(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public static native cIsExist(Ljava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native cList(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native cRename(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native cSetMTime(II)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native cSetOption(II)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native cSetStatus(II)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native cTest(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public static d(I)V
    .locals 3

    .line 1
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->f:[Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    aput-object v1, v0, p0

    .line 6
    .line 7
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->g:[Ljava/lang/String;

    .line 8
    .line 9
    aput-object v1, v0, p0

    .line 10
    .line 11
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->h:[I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput v2, v0, p0

    .line 15
    .line 16
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->i:[I

    .line 17
    .line 18
    aput v2, v0, p0

    .line 19
    .line 20
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->k:[Ljava/lang/String;

    .line 21
    .line 22
    aput-object v1, v0, p0

    .line 23
    .line 24
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->m:[Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    aput-object v1, v0, p0

    .line 28
    .line 29
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->n:[Ljava/lang/Object;

    .line 30
    .line 31
    aput-object v1, v0, p0

    .line 32
    .line 33
    return-void
.end method

.method public static e()Z
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "handler"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mime"

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "control"

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "iconv"

    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    sput-boolean v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 27
    .line 28
    :goto_0
    sget-boolean v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 29
    .line 30
    return v0
.end method

.method public static jAddFileToList(ILjava/lang/String;IJII)I
    .locals 6

    .line 1
    const/4 p2, 0x5

    .line 2
    if-ge p0, p2, :cond_1

    .line 3
    .line 4
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Lf0/d;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    move-wide v2, p3

    .line 11
    move v4, p5

    .line 12
    move v5, p6

    .line 13
    invoke-interface/range {v0 .. v5}, Lf0/d;->c(Ljava/lang/String;JII)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 19
    return p0
.end method

.method public static jArchiveInfo(ILjava/lang/String;Ljava/lang/String;IJI)V
    .locals 7

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ge p0, v0, :cond_7

    .line 3
    .line 4
    sget-object v0, La0/c;->k:[B

    .line 5
    .line 6
    aget-byte v0, v0, p0

    .line 7
    .line 8
    and-int/lit8 v0, v0, 0x7f

    .line 9
    .line 10
    int-to-byte v0, v0

    .line 11
    const/16 v1, 0xb

    .line 12
    .line 13
    if-ne v0, v1, :cond_5

    .line 14
    .line 15
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->l:[Le0/i;

    .line 16
    .line 17
    aget-object v1, v0, p0

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {p1}, Lv0/h;->e(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    aget-object v1, v0, p0

    .line 29
    .line 30
    iput-object p1, v1, Le0/i;->b:Ljava/lang/String;

    .line 31
    .line 32
    :cond_1
    invoke-static {p2}, Lv0/h;->e(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    aget-object p1, v0, p0

    .line 39
    .line 40
    iput-object p2, p1, Le0/i;->c:Ljava/lang/String;

    .line 41
    .line 42
    :cond_2
    if-ltz p3, :cond_3

    .line 43
    .line 44
    aget-object p1, v0, p0

    .line 45
    .line 46
    iput p3, p1, Le0/i;->d:I

    .line 47
    .line 48
    :cond_3
    const-wide/16 p1, 0x0

    .line 49
    .line 50
    cmp-long p3, p4, p1

    .line 51
    .line 52
    if-ltz p3, :cond_4

    .line 53
    .line 54
    aget-object p1, v0, p0

    .line 55
    .line 56
    iput-wide p4, p1, Le0/i;->e:J

    .line 57
    .line 58
    :cond_4
    if-ltz p6, :cond_6

    .line 59
    .line 60
    aget-object p0, v0, p0

    .line 61
    .line 62
    iput p6, p0, Le0/i;->f:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Lf0/d;

    .line 66
    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    move-object v1, p1

    .line 70
    move-object v2, p2

    .line 71
    move v3, p3

    .line 72
    move-wide v4, p4

    .line 73
    move v6, p6

    .line 74
    invoke-interface/range {v0 .. v6}, Lf0/d;->s(Ljava/lang/String;Ljava/lang/String;IJI)V

    .line 75
    .line 76
    .line 77
    :cond_6
    :goto_0
    return-void

    .line 78
    :cond_7
    new-instance p0, Le0/b$a;

    .line 79
    .line 80
    invoke-direct {p0}, Le0/b$a;-><init>()V

    .line 81
    .line 82
    .line 83
    sput-object p0, Le0/b;->a:Le0/b$a;

    .line 84
    .line 85
    iput-object p1, p0, Le0/b$a;->a:Ljava/lang/String;

    .line 86
    .line 87
    iput p3, p0, Le0/b$a;->b:I

    .line 88
    .line 89
    iput-wide p4, p0, Le0/b$a;->c:J

    .line 90
    .line 91
    iput p6, p0, Le0/b$a;->d:I

    .line 92
    .line 93
    return-void
.end method

.method public static jAskOverwrite(ILjava/lang/String;JILjava/lang/String;JI)I
    .locals 4

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt p0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v2, 0x1

    .line 8
    invoke-static {v2}, Lru/zdevs/zarchiver/service/ZArchiverService;->i(I)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    sget-object p1, Lru/zdevs/zarchiver/archiver/C2JBridge;->i:[I

    .line 15
    .line 16
    const/16 p2, 0x11

    .line 17
    .line 18
    aput p2, p1, p0

    .line 19
    .line 20
    return p2

    .line 21
    :cond_1
    sget-object v3, Lru/zdevs/zarchiver/archiver/C2JBridge;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 22
    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    return v0

    .line 26
    :cond_2
    sget-object v0, La0/c;->k:[B

    .line 27
    .line 28
    aget-byte v0, v0, p0

    .line 29
    .line 30
    if-ne v0, v1, :cond_3

    .line 31
    .line 32
    sget-object p1, Lru/zdevs/zarchiver/archiver/C2JBridge;->i:[I

    .line 33
    .line 34
    aput v2, p1, p0

    .line 35
    .line 36
    return v2

    .line 37
    :cond_3
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->m:[Ljava/lang/Object;

    .line 38
    .line 39
    aget-object v1, v0, p0

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    sget-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->i:[I

    .line 44
    .line 45
    aget v2, v1, p0

    .line 46
    .line 47
    const/16 v3, 0x10

    .line 48
    .line 49
    invoke-static {v2, v3}, La0/c;->K(II)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    aget p0, v1, p0

    .line 56
    .line 57
    return p0

    .line 58
    :cond_4
    sget-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->j:[Le0/c;

    .line 59
    .line 60
    new-instance v2, Le0/c;

    .line 61
    .line 62
    invoke-direct {v2}, Le0/c;-><init>()V

    .line 63
    .line 64
    .line 65
    aput-object v2, v1, p0

    .line 66
    .line 67
    iput-object p1, v2, Le0/c;->a:Ljava/lang/String;

    .line 68
    .line 69
    iput-wide p2, v2, Le0/c;->b:J

    .line 70
    .line 71
    iput p4, v2, Le0/c;->c:I

    .line 72
    .line 73
    iput-object p5, v2, Le0/c;->d:Ljava/lang/String;

    .line 74
    .line 75
    iput-wide p6, v2, Le0/c;->e:J

    .line 76
    .line 77
    iput p8, v2, Le0/c;->f:I

    .line 78
    .line 79
    aget-object p1, v0, p0

    .line 80
    .line 81
    if-nez p1, :cond_5

    .line 82
    .line 83
    new-instance p1, Ljava/lang/Object;

    .line 84
    .line 85
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    aput-object p1, v0, p0

    .line 89
    .line 90
    :cond_5
    sget-object p1, Lru/zdevs/zarchiver/archiver/C2JBridge;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 91
    .line 92
    const/4 p2, 0x2

    .line 93
    invoke-virtual {p1, p0, p2}, Lru/zdevs/zarchiver/service/ZArchiverService;->n(II)V

    .line 94
    .line 95
    .line 96
    aget-object p1, v0, p0

    .line 97
    .line 98
    monitor-enter p1

    .line 99
    :try_start_0
    aget-object p3, v0, p0

    .line 100
    .line 101
    invoke-virtual {p3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    goto :goto_1

    .line 107
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    sget-object p1, Lru/zdevs/zarchiver/archiver/C2JBridge;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 109
    .line 110
    invoke-virtual {p1, p0, p2}, Lru/zdevs/zarchiver/service/ZArchiverService;->g(II)V

    .line 111
    .line 112
    .line 113
    sget-object p1, Lru/zdevs/zarchiver/archiver/C2JBridge;->i:[I

    .line 114
    .line 115
    aget p0, p1, p0

    .line 116
    .line 117
    return p0

    .line 118
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    throw p0
.end method

.method public static jFileExtracted(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    if-lt p0, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    sget-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    return-void

    .line 10
    :cond_1
    sget-object v1, La0/c;->k:[B

    .line 11
    .line 12
    aget-byte v1, v1, p0

    .line 13
    .line 14
    if-ne v1, v0, :cond_3

    .line 15
    .line 16
    invoke-static {p1}, Lv0/h;->e(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    sget-object v0, La0/c;->l:[Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p1}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    aput-object p1, v0, p0

    .line 30
    .line 31
    :cond_3
    return-void
.end method

.method public static jGetNativePath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static jGetPassword(I)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, v1}, Le0/h;->c(Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Lf0/d;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Lf0/d;

    .line 23
    .line 24
    invoke-interface {v0}, Lf0/d;->l()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Le0/h;->e(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, v1}, Le0/h;->c(Z)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    sget-object p0, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Lf0/d;

    .line 44
    .line 45
    invoke-static {p0}, Le0/b;->g(Lf0/d;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Lv0/h;->e(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    sget-boolean v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 56
    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    const/16 v0, 0xf

    .line 60
    .line 61
    invoke-static {v1, v0}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cSetStatus(II)V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-object p0

    .line 65
    :cond_3
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->n:[Ljava/lang/Object;

    .line 66
    .line 67
    aget-object v1, v0, p0

    .line 68
    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    new-instance v1, Ljava/lang/Object;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    aput-object v1, v0, p0

    .line 77
    .line 78
    :cond_4
    sget-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    if-eqz v1, :cond_5

    .line 82
    .line 83
    invoke-virtual {v1, p0, v2}, Lru/zdevs/zarchiver/service/ZArchiverService;->n(II)V

    .line 84
    .line 85
    .line 86
    :cond_5
    aget-object v1, v0, p0

    .line 87
    .line 88
    monitor-enter v1

    .line 89
    :try_start_0
    aget-object v0, v0, p0

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_1

    .line 97
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 99
    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    invoke-virtual {v0, p0, v2}, Lru/zdevs/zarchiver/service/ZArchiverService;->g(II)V

    .line 103
    .line 104
    .line 105
    :cond_6
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->f:[Ljava/lang/String;

    .line 106
    .line 107
    aget-object p0, v0, p0

    .line 108
    .line 109
    return-object p0

    .line 110
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    throw p0
.end method

.method public static jSetComment(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    if-lt p0, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    sget-object p0, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Lf0/d;

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lf0/d;->w(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_1
    return-void
.end method

.method public static jSetProcessPercent(II)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    if-lt p0, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->h:[I

    .line 6
    .line 7
    aput p1, v0, p0

    .line 8
    .line 9
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->b:Landroid/content/ContextWrapper;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, p0, p1}, Lru/zdevs/zarchiver/archiver/C2JBridge$a;->e(II)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public static jSetProcessText(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    if-lt p0, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->g:[Ljava/lang/String;

    .line 6
    .line 7
    aput-object p1, v0, p0

    .line 8
    .line 9
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->b:Landroid/content/ContextWrapper;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, p0, p1}, Lru/zdevs/zarchiver/archiver/C2JBridge$a;->a(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public static jSetTaskCompleted(IZ)V
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    if-lt p0, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->i:[I

    .line 6
    .line 7
    aget v0, v0, p0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-static {v0, v1}, La0/c;->K(II)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, La0/c;->k:[B

    .line 16
    .line 17
    aget-byte v1, v1, p0

    .line 18
    .line 19
    const/16 v2, -0x80

    .line 20
    .line 21
    and-int/2addr v1, v2

    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    const/16 v2, 0xf

    .line 28
    .line 29
    if-nez v1, :cond_4

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget-object v3, Lru/zdevs/zarchiver/archiver/C2JBridge;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 34
    .line 35
    invoke-static {v3, p0, v2}, La0/c;->h0(Lru/zdevs/zarchiver/service/ZArchiverService;II)V

    .line 36
    .line 37
    .line 38
    :cond_2
    sget-object v3, Lru/zdevs/zarchiver/archiver/C2JBridge;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 39
    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    const/high16 v4, 0x120000

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const/high16 v4, 0x110000

    .line 46
    .line 47
    :goto_1
    invoke-static {v3, p0, v4}, La0/c;->h0(Lru/zdevs/zarchiver/service/ZArchiverService;II)V

    .line 48
    .line 49
    .line 50
    :cond_4
    if-nez p1, :cond_5

    .line 51
    .line 52
    sget-object p1, La0/c;->j:[I

    .line 53
    .line 54
    aget p1, p1, p0

    .line 55
    .line 56
    invoke-static {p1, v2}, La0/c;->K(II)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_5

    .line 61
    .line 62
    invoke-static {p0, v0}, Le0/a;->c(IZ)V

    .line 63
    .line 64
    .line 65
    :cond_5
    sget-object p1, Lru/zdevs/zarchiver/archiver/C2JBridge;->m:[Ljava/lang/Object;

    .line 66
    .line 67
    aget-object v0, p1, p0

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    if-eqz v0, :cond_6

    .line 71
    .line 72
    if-nez v1, :cond_6

    .line 73
    .line 74
    aput-object v2, p1, p0

    .line 75
    .line 76
    :cond_6
    sget-object p1, Lru/zdevs/zarchiver/archiver/C2JBridge;->n:[Ljava/lang/Object;

    .line 77
    .line 78
    aget-object v0, p1, p0

    .line 79
    .line 80
    if-eqz v0, :cond_7

    .line 81
    .line 82
    aput-object v2, p1, p0

    .line 83
    .line 84
    :cond_7
    return-void
.end method

.method public static jShowMessage(IILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    if-lt p0, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    const/4 v0, 0x2

    .line 6
    if-ne p1, v0, :cond_1

    .line 7
    .line 8
    invoke-static {}, Le0/h;->d()Le0/h;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Le0/h;->a()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Lf0/d;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v1, v0}, Lf0/d;->n(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-static {p0, p1, p2}, Le0/a;->d(IILjava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->b:Landroid/content/ContextWrapper;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {v0, p0, p1, p2}, Lru/zdevs/zarchiver/archiver/C2JBridge$a;->f(IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method
