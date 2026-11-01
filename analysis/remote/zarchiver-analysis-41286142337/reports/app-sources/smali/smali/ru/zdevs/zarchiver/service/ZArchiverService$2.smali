.class Lru/zdevs/zarchiver/service/ZArchiverService$2;
.super Lru/zdevs/zarchiver/service/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/service/ZArchiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/service/ZArchiverService;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/service/ZArchiverService;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    invoke-direct {p0}, Lru/zdevs/zarchiver/service/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public ArchiveAddFiles(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;Lh0/h;I)V
    .locals 4

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    aput-object p1, v1, v0

    .line 11
    .line 12
    new-instance p1, Ls0/b;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iget-object v3, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 16
    .line 17
    invoke-direct {p1, v3, v0, v2}, Ls0/b;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ls0/b;->s(Lh0/h;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p6, p3}, Ls0/b;->t(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, Ljava/util/ArrayList;

    .line 27
    .line 28
    const/4 p3, 0x1

    .line 29
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p1, Ls0/b;->l:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    new-instance p2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p1, Ls0/b;->m:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    const p2, 0x7f0c010f

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    aget-object p3, v1, v0

    .line 55
    .line 56
    const-string p4, "%1"

    .line 57
    .line 58
    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {v3, v0, p2}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public ArchiveAddFilesMulti(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh0/h;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lh0/h;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    aput-object p1, v1, v0

    .line 11
    .line 12
    new-instance p1, Ls0/b;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iget-object v3, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 16
    .line 17
    invoke-direct {p1, v3, v0, v2}, Ls0/b;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ls0/b;->s(Lh0/h;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p6, p3}, Ls0/b;->t(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p4, p1, Ls0/b;->l:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p5, p1, Ls0/b;->m:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const/4 p3, 0x1

    .line 35
    if-le p2, p3, :cond_1

    .line 36
    .line 37
    const/16 p2, -0x79

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ls0/g;->r(B)V

    .line 40
    .line 41
    .line 42
    :cond_1
    const p2, 0x7f0c010f

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    aget-object p3, v1, v0

    .line 50
    .line 51
    const-string p4, "%1"

    .line 52
    .line 53
    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {v3, v0, p2}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public ArchiveCompress(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/util/List;Lh0/h;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh0/h;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lh0/h;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    aput-object p1, v1, v0

    .line 11
    .line 12
    new-instance p1, Ls0/c;

    .line 13
    .line 14
    iget-object v2, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 15
    .line 16
    invoke-direct {p1, v2, v0}, Ls0/c;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;I)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p1, Ls0/c;->i:Ljava/util/List;

    .line 26
    .line 27
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iput-object p4, p1, Ls0/c;->j:Ljava/util/List;

    .line 31
    .line 32
    iput-object p5, p1, Ls0/c;->k:Lh0/h;

    .line 33
    .line 34
    iput-object p3, p1, Ls0/c;->l:Ljava/lang/String;

    .line 35
    .line 36
    iput p6, p1, Ls0/g;->d:I

    .line 37
    .line 38
    const p2, 0x7f0c0110

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    aget-object p3, v1, v0

    .line 46
    .line 47
    const-string p4, "%1"

    .line 48
    .line 49
    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {v2, v0, p2}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public ArchiveCompressMulti(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lh0/h;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh0/h;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lh0/h;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lh0/h;

    .line 21
    .line 22
    invoke-virtual {v4}, Lh0/h;->e()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v4, ", ..."

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    aput-object v2, v1, v0

    .line 39
    .line 40
    new-instance v1, Ls0/c;

    .line 41
    .line 42
    iget-object v2, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 43
    .line 44
    invoke-direct {v1, v2, v0}, Ls0/c;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;I)V

    .line 45
    .line 46
    .line 47
    iput-object p1, v1, Ls0/c;->i:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/4 v5, 0x1

    .line 54
    if-le v4, v5, :cond_1

    .line 55
    .line 56
    const/16 v4, -0x7d

    .line 57
    .line 58
    invoke-virtual {v1, v4}, Ls0/g;->r(B)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iput-object p3, v1, Ls0/c;->j:Ljava/util/List;

    .line 62
    .line 63
    iput-object p4, v1, Ls0/c;->k:Lh0/h;

    .line 64
    .line 65
    iput-object p2, v1, Ls0/c;->l:Ljava/lang/String;

    .line 66
    .line 67
    iput p5, v1, Ls0/g;->d:I

    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    check-cast p3, Lh0/h;

    .line 79
    .line 80
    invoke-virtual {p3}, Lh0/h;->e()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p3, " (1/"

    .line 88
    .line 89
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, ")"

    .line 100
    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const p2, 0x7f0c0110

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    const-string p3, "%1"

    .line 116
    .line 117
    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v2, v0, p1}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public ArchiveCreateFile(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 3

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    aput-object p1, v1, v0

    .line 11
    .line 12
    new-instance p1, Ls0/d;

    .line 13
    .line 14
    iget-object v2, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 15
    .line 16
    invoke-direct {p1, v2, v0}, Ls0/d;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;I)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p1, Ls0/d;->i:Lh0/h;

    .line 20
    .line 21
    iput-object p4, p1, Ls0/d;->j:Ljava/lang/String;

    .line 22
    .line 23
    iput-boolean p5, p1, Ls0/d;->k:Z

    .line 24
    .line 25
    iput-object p3, p1, Ls0/d;->l:Ljava/lang/String;

    .line 26
    .line 27
    iput p6, p1, Ls0/g;->d:I

    .line 28
    .line 29
    const p2, 0x7f0c010f

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    aget-object p3, v1, v0

    .line 37
    .line 38
    const-string p4, "%1"

    .line 39
    .line 40
    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {v2, v0, p2}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public ArchiveDelFiles(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    aput-object p1, v1, v0

    .line 11
    .line 12
    new-instance p1, Ls0/e;

    .line 13
    .line 14
    iget-object v2, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {p1, v2, v0, v3}, Ls0/e;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;II)V

    .line 18
    .line 19
    .line 20
    iget v3, p1, Ls0/e;->i:I

    .line 21
    .line 22
    packed-switch v3, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_0
    iput-object p2, p1, Ls0/e;->j:Ljava/lang/Object;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v3, p1, Ls0/e;->j:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :goto_1
    iput-object p4, p1, Ls0/e;->k:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {p1, p5, p3}, Ls0/e;->s(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const p2, 0x7f0c0112

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    aget-object p3, v1, v0

    .line 53
    .line 54
    const-string p4, "%1"

    .line 55
    .line 56
    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-static {v2, v0, p2}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ArchiveExtract(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;Lh0/h;I)V
    .locals 5

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    aput-object p1, v1, v0

    .line 11
    .line 12
    new-instance p1, Ls0/f;

    .line 13
    .line 14
    iget-object v2, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 15
    .line 16
    invoke-direct {p1, v2, v0}, Ls0/f;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;I)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p1, Ls0/f;->i:Ljava/util/List;

    .line 26
    .line 27
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    new-instance p2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p1, Ls0/f;->k:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    new-instance p2, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {p2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object p2, p1, Ls0/f;->l:Ljava/util/List;

    .line 46
    .line 47
    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    new-instance p2, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {p2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .line 54
    .line 55
    iput-object p2, p1, Ls0/f;->j:Ljava/util/List;

    .line 56
    .line 57
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    iput p6, p1, Ls0/g;->d:I

    .line 61
    .line 62
    const p2, 0x7f0c0113

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    aget-object p3, v1, v0

    .line 70
    .line 71
    const-string p4, "%1"

    .line 72
    .line 73
    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {v2, v0, p2}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public ArchiveExtractMulti(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lh0/h;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lh0/h;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, ", ..."

    .line 26
    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    aput-object v2, v1, v0

    .line 35
    .line 36
    new-instance v1, Ls0/f;

    .line 37
    .line 38
    iget-object v2, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 39
    .line 40
    invoke-direct {v1, v2, v0}, Ls0/f;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;I)V

    .line 41
    .line 42
    .line 43
    iput-object p2, v1, Ls0/f;->i:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    const/4 v4, 0x1

    .line 50
    if-le p2, v4, :cond_1

    .line 51
    .line 52
    const/16 p2, -0x7f

    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ls0/g;->r(B)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iput-object p4, v1, Ls0/f;->k:Ljava/util/List;

    .line 58
    .line 59
    iput-object p5, v1, Ls0/f;->l:Ljava/util/List;

    .line 60
    .line 61
    iput-object p3, v1, Ls0/f;->j:Ljava/util/List;

    .line 62
    .line 63
    iput p6, v1, Ls0/g;->d:I

    .line 64
    .line 65
    iput-object p1, v1, Ls0/f;->m:Ljava/util/List;

    .line 66
    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    check-cast p3, Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p3, " (1/"

    .line 82
    .line 83
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p1, ")"

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const p2, 0x7f0c0113

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    const-string p3, "%1"

    .line 110
    .line 111
    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v2, v0, p1}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public ArchiveOpenFile(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    aput-object p1, v1, v0

    .line 11
    .line 12
    new-instance p1, Ls0/f;

    .line 13
    .line 14
    iget-object v2, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 15
    .line 16
    invoke-direct {p1, v2, v0}, Ls0/f;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;I)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v3, p1, Ls0/f;->i:Ljava/util/List;

    .line 26
    .line 27
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    new-instance p2, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p1, Ls0/f;->k:Ljava/util/List;

    .line 36
    .line 37
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    new-instance p2, Lh0/h;

    .line 41
    .line 42
    const-string p4, "file"

    .line 43
    .line 44
    invoke-static {}, Ln0/e;->h()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-direct {p2, p4, v3}, Lh0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    or-int/lit8 p4, p5, 0x10

    .line 52
    .line 53
    new-instance p5, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {p5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    iput-object p5, p1, Ls0/f;->l:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    new-instance p2, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {p2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .line 67
    .line 68
    iput-object p2, p1, Ls0/f;->j:Ljava/util/List;

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    iput p4, p1, Ls0/g;->d:I

    .line 74
    .line 75
    const p2, 0x7f0c0115

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    aget-object p3, v1, v0

    .line 83
    .line 84
    const-string p4, "%1"

    .line 85
    .line 86
    invoke-virtual {p2, p4, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-static {v2, v0, p2}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public ArchiveRenFile(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    aput-object p1, v1, v0

    .line 11
    .line 12
    new-instance p1, Ls0/b;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iget-object v2, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 16
    .line 17
    invoke-direct {p1, v2, v0, v1}, Ls0/b;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ls0/b;->s(Lh0/h;)V

    .line 21
    .line 22
    .line 23
    iput-object p4, p1, Ls0/b;->k:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p5, p1, Ls0/b;->l:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {p1, p6, p3}, Ls0/b;->t(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const p2, 0x7f0c0114

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {v2, v0, p2}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public ArchiveTest(Ljava/lang/String;Lh0/h;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    aput-object p1, v1, v0

    .line 11
    .line 12
    new-instance p1, Ls0/e;

    .line 13
    .line 14
    iget-object v2, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {p1, v2, v0, v3}, Ls0/e;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;II)V

    .line 18
    .line 19
    .line 20
    iget v4, p1, Ls0/e;->i:I

    .line 21
    .line 22
    packed-switch v4, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_0
    iput-object p2, p1, Ls0/e;->j:Ljava/lang/Object;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v4, p1, Ls0/e;->j:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :goto_1
    const/4 p2, 0x0

    .line 40
    invoke-virtual {p1, p2, p3}, Ls0/e;->s(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 44
    .line 45
    .line 46
    const p1, 0x7f0c011a

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    aget-object p2, v1, v0

    .line 54
    .line 55
    const-string p3, "%1"

    .line 56
    .line 57
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v2, v0, p1}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ArchiveTestMulti(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lh0/h;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, ", ..."

    .line 26
    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    aput-object v2, v1, v0

    .line 35
    .line 36
    new-instance v1, Ls0/e;

    .line 37
    .line 38
    iget-object v2, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    invoke-direct {v1, v2, v0, v4}, Ls0/e;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;II)V

    .line 42
    .line 43
    .line 44
    iput-object p2, v1, Ls0/e;->j:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-le p2, v4, :cond_1

    .line 51
    .line 52
    const/16 p2, -0x75

    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ls0/g;->r(B)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iput-object p3, v1, Ls0/e;->k:Ljava/lang/Object;

    .line 58
    .line 59
    iput v3, v1, Ls0/g;->d:I

    .line 60
    .line 61
    iput-object p1, v1, Ls0/e;->l:Ljava/lang/Object;

    .line 62
    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    check-cast p3, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p3, " (1/"

    .line 78
    .line 79
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p1, ")"

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const p2, 0x7f0c011a

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const-string p3, "%1"

    .line 106
    .line 107
    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {v2, v0, p1}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public Copy(Lh0/h;Lh0/h;Ljava/util/List;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/h;",
            "Lh0/h;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    aput-object v2, v1, v0

    .line 13
    .line 14
    new-instance v1, Ls0/h;

    .line 15
    .line 16
    iget-object v2, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 17
    .line 18
    invoke-direct {v1, v2, p4, v0}, Ls0/h;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;ZI)V

    .line 19
    .line 20
    .line 21
    iput-object p1, v1, Ls0/h;->i:Lh0/h;

    .line 22
    .line 23
    iput-object p2, v1, Ls0/h;->j:Lh0/h;

    .line 24
    .line 25
    iput-object p3, v1, Ls0/h;->k:Ljava/util/List;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-object p1, v1, Ls0/h;->l:Ljava/util/List;

    .line 29
    .line 30
    iput p5, v1, Ls0/g;->d:I

    .line 31
    .line 32
    if-eqz p4, :cond_1

    .line 33
    .line 34
    const p1, 0x7f0c0114

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const p1, 0x7f0c0111

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v2, v0, p1}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public CopyList(Ljava/util/List;Lh0/h;ZI)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh0/h;",
            ">;",
            "Lh0/h;",
            "ZI)V"
        }
    .end annotation

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, ""

    .line 11
    .line 12
    aput-object v2, v1, v0

    .line 13
    .line 14
    new-instance v1, Ls0/h;

    .line 15
    .line 16
    iget-object v2, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 17
    .line 18
    invoke-direct {v1, v2, p3, v0}, Ls0/h;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;ZI)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    iput-object v3, v1, Ls0/h;->i:Lh0/h;

    .line 23
    .line 24
    iput-object p2, v1, Ls0/h;->j:Lh0/h;

    .line 25
    .line 26
    iput-object v3, v1, Ls0/h;->k:Ljava/util/List;

    .line 27
    .line 28
    iput-object p1, v1, Ls0/h;->l:Ljava/util/List;

    .line 29
    .line 30
    iput p4, v1, Ls0/g;->d:I

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    const p1, 0x7f0c0114

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const p1, 0x7f0c0111

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v2, v0, p1}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public GUIStatus(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 2
    .line 3
    iput-boolean p1, v0, Lru/zdevs/zarchiver/service/ZArchiverService;->a:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lru/zdevs/zarchiver/service/ZArchiverService;->r()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public GetProgPercent(I)I
    .locals 1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->h:[I

    aget p1, v0, p1

    return p1
.end method

.method public GetProgText(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    const-string p1, ""

    .line 5
    .line 6
    return-object p1

    .line 7
    :cond_0
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->g:[Ljava/lang/String;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    return-object p1
.end method

.method public GetStatusTask(I)I
    .locals 1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    const/high16 p1, 0x100000

    return p1

    :cond_0
    sget-object v0, La0/c;->j:[I

    aget p1, v0, p1

    return p1
.end method

.method public HideNotification(I)V
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    invoke-static {v0, p1}, Lru/zdevs/zarchiver/service/ZArchiverService;->c(Lru/zdevs/zarchiver/service/ZArchiverService;I)V

    return-void
.end method

.method public IsLock(Lh0/h;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 2
    .line 3
    iget-object v0, v0, Lru/zdevs/zarchiver/service/ZArchiverService;->c:Lru/zdevs/zarchiver/service/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lru/zdevs/zarchiver/service/a;->c(Lh0/h;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v1, -0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, p2, v1, v2, p1}, Lru/zdevs/zarchiver/service/a;->b(IIILjava/lang/String;)Lru/zdevs/zarchiver/service/a$a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    :cond_0
    return v2
.end method

.method public PluginOpenFile(Lh0/h;I)V
    .locals 4

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Lh0/h;->e()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    aput-object v2, v1, v0

    .line 15
    .line 16
    new-instance v2, Ls0/i;

    .line 17
    .line 18
    iget-object v3, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 19
    .line 20
    invoke-direct {v2, v3, v0}, Ls0/i;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v2, Ls0/i;->i:Lh0/h;

    .line 24
    .line 25
    iput p2, v2, Ls0/g;->d:I

    .line 26
    .line 27
    const p1, 0x7f0c0115

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    aget-object p2, v1, v0

    .line 35
    .line 36
    const-string v1, "%1"

    .line 37
    .line 38
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v3, v0, p1}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public Remove(Lh0/h;Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/h;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-le v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v1, p1, Lh0/h;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1}, La0/c;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_0
    sget-object v3, La0/c;->l:[Ljava/lang/String;

    .line 34
    .line 35
    aput-object v1, v3, v0

    .line 36
    .line 37
    new-instance v1, Ls0/e;

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    iget-object v5, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 41
    .line 42
    invoke-direct {v1, v5, v0, v4}, Ls0/e;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;II)V

    .line 43
    .line 44
    .line 45
    iput-object p1, v1, Ls0/e;->j:Ljava/lang/Object;

    .line 46
    .line 47
    iput-object p2, v1, Ls0/e;->k:Ljava/lang/Object;

    .line 48
    .line 49
    iput p3, v1, Ls0/g;->d:I

    .line 50
    .line 51
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-le p1, v2, :cond_2

    .line 56
    .line 57
    const p1, 0x7f0c0117

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const p1, 0x7f0c0116

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    aget-object p2, v3, v0

    .line 69
    .line 70
    const-string p3, "%1"

    .line 71
    .line 72
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v5, v0, p1}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public RemoveList(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh0/h;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, La0/c;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, La0/c;->l:[Ljava/lang/String;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lh0/h;

    .line 21
    .line 22
    invoke-virtual {v3}, Lh0/h;->e()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, ", ..."

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    aput-object v2, v1, v0

    .line 39
    .line 40
    new-instance v2, Ls0/e;

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    iget-object v4, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 44
    .line 45
    invoke-direct {v2, v4, v0, v3}, Ls0/e;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;II)V

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    iput-object v3, v2, Ls0/e;->j:Ljava/lang/Object;

    .line 50
    .line 51
    iput-object p1, v2, Ls0/e;->l:Ljava/lang/Object;

    .line 52
    .line 53
    iput p2, v2, Ls0/g;->d:I

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/4 p2, 0x1

    .line 60
    if-le p1, p2, :cond_1

    .line 61
    .line 62
    const p1, 0x7f0c0117

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const p1, 0x7f0c0116

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    aget-object p2, v1, v0

    .line 74
    .line 75
    const-string v1, "%1"

    .line 76
    .line 77
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {v4, v0, p1}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(Lru/zdevs/zarchiver/service/ZArchiverService;ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public SetOverwrite(II)V
    .locals 0

    invoke-static {p1, p2}, Lru/zdevs/zarchiver/archiver/C2JBridge;->a(II)V

    return-void
.end method

.method public SetPassword(ILjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lru/zdevs/zarchiver/archiver/C2JBridge;->b(ILjava/lang/String;)V

    return-void
.end method

.method public SetSettings(IILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lx0/d;->u(Ljava/util/ArrayList;)Z

    .line 3
    .line 4
    .line 5
    sput p1, Lru/zdevs/zarchiver/service/ZArchiverService;->f:I

    .line 6
    .line 7
    sput p2, Lru/zdevs/zarchiver/service/ZArchiverService;->g:I

    .line 8
    .line 9
    sget-object p1, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 10
    .line 11
    invoke-static {p1, p3}, Lz0/e;->k(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public SetStatusTask(II)V
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/service/ZArchiverService$2;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    invoke-static {v0, p1, p2}, La0/c;->h0(Lru/zdevs/zarchiver/service/ZArchiverService;II)V

    return-void
.end method
