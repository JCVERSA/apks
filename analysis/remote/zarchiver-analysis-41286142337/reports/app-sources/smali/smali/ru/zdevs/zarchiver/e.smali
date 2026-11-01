.class public final Lru/zdevs/zarchiver/e;
.super Lw0/c;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/ContentResolver;

.field public final f:Lru/zdevs/zarchiver/a$b;

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lru/zdevs/zarchiver/a$b;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/e;->e:Landroid/content/ContentResolver;

    .line 5
    .line 6
    iput-object p2, p0, Lru/zdevs/zarchiver/e;->f:Lru/zdevs/zarchiver/a$b;

    .line 7
    .line 8
    iput p3, p0, Lru/zdevs/zarchiver/e;->g:I

    .line 9
    .line 10
    iput p4, p0, Lru/zdevs/zarchiver/e;->h:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final f()Lw0/a$b;
    .locals 6

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/e;->e:Landroid/content/ContentResolver;

    .line 2
    .line 3
    const/16 v1, 0x6d

    .line 4
    .line 5
    iget v2, p0, Lru/zdevs/zarchiver/e;->g:I

    .line 6
    .line 7
    iget-object v3, p0, Lru/zdevs/zarchiver/e;->f:Lru/zdevs/zarchiver/a$b;

    .line 8
    .line 9
    if-ne v2, v1, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v4, v3, Lru/zdevs/zarchiver/a$b;->c:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-static {v0, v4}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v4, v3, Lru/zdevs/zarchiver/a$b;->c:Landroid/net/Uri;

    .line 18
    .line 19
    iget-object v5, v3, Lru/zdevs/zarchiver/a$b;->b:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, v4, v5}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    :goto_0
    if-eq v2, v1, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x6e

    .line 27
    .line 28
    if-ne v2, v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    new-instance v0, La0/r;

    .line 32
    .line 33
    new-instance v1, Lh0/h;

    .line 34
    .line 35
    const-string v2, "file"

    .line 36
    .line 37
    iget-object v4, v3, Lru/zdevs/zarchiver/a$b;->a:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v3, v3, Lru/zdevs/zarchiver/a$b;->b:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v4, v3}, La0/c;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-direct {v1, v2, v3}, Lh0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, La0/r;-><init>(Lh0/h;)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    :goto_1
    new-instance v0, La0/b0;

    .line 53
    .line 54
    iget v1, p0, Lru/zdevs/zarchiver/e;->h:I

    .line 55
    .line 56
    invoke-direct {v0, v1}, La0/b0;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :catch_0
    const/4 v0, 0x0

    .line 61
    return-object v0
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method
