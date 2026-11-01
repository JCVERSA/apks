.class public final Lru/zdevs/zarchiver/ui/FSSelect$d;
.super Lw0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/FSSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final e:Lru/zdevs/zarchiver/b;

.field public final f:Lh0/h;

.field public final g:[Lh0/b;

.field public final h:I


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/b;Lh0/h;[Lh0/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->e:Lru/zdevs/zarchiver/b;

    .line 5
    .line 6
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->f:Lh0/h;

    .line 7
    .line 8
    iput-object p3, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->g:[Lh0/b;

    .line 9
    .line 10
    iput p4, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->h:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final f()Lw0/a$b;
    .locals 9

    .line 1
    new-instance v0, Ld0/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ld0/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->g:[Lh0/b;

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    const v5, 0x7f0c00d7

    .line 12
    .line 13
    .line 14
    iget-object v6, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->f:Lh0/h;

    .line 15
    .line 16
    if-ge v4, v3, :cond_2

    .line 17
    .line 18
    aget-object v7, v2, v4

    .line 19
    .line 20
    if-nez v7, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget v8, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->h:I

    .line 24
    .line 25
    invoke-interface {v7, v6, v0, v8}, Lh0/b;->g(Lh0/h;Ld0/b;I)Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-eqz v8, :cond_1

    .line 30
    .line 31
    invoke-interface {v7}, Lh0/b;->f()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const v2, 0x7f0c00d7

    .line 40
    .line 41
    .line 42
    :goto_2
    invoke-virtual {v0}, Ld0/b;->size()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/4 v4, 0x1

    .line 47
    if-le v3, v4, :cond_3

    .line 48
    .line 49
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->e:Lru/zdevs/zarchiver/b;

    .line 50
    .line 51
    iget v1, v1, Lru/zdevs/zarchiver/b;->h:I

    .line 52
    .line 53
    invoke-static {v1, v0}, Lh0/e;->i(ILd0/b;)V

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    if-nez v3, :cond_4

    .line 58
    .line 59
    if-ne v2, v5, :cond_4

    .line 60
    .line 61
    new-instance v3, Ld0/d;

    .line 62
    .line 63
    const-string v4, ".."

    .line 64
    .line 65
    const/4 v5, 0x3

    .line 66
    invoke-direct {v3, v4, v5}, Ld0/d;-><init>(Ljava/lang/String;B)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, v3}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_3
    new-instance v1, Lru/zdevs/zarchiver/ui/FSSelect$a;

    .line 73
    .line 74
    invoke-direct {v1, v6, v0, v2}, Lru/zdevs/zarchiver/ui/FSSelect$a;-><init>(Lh0/h;Ld0/b;I)V

    .line 75
    .line 76
    .line 77
    return-object v1
.end method
