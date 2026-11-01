.class public final Lru/zdevs/zarchiver/ZTextEditor$u;
.super Lw0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ZTextEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "u"
.end annotation


# instance fields
.field public final e:Ljava/lang/CharSequence;

.field public final f:Ljava/lang/CharSequence;

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lru/zdevs/zarchiver/ui/editor/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$u;->e:Ljava/lang/CharSequence;

    .line 5
    .line 6
    iput-object p2, p0, Lru/zdevs/zarchiver/ZTextEditor$u;->f:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput p3, p0, Lru/zdevs/zarchiver/ZTextEditor$u;->g:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f()Lw0/a$b;
    .locals 10

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$u;->e:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v2, p0, Lru/zdevs/zarchiver/ZTextEditor$u;->f:Ljava/lang/CharSequence;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget v4, p0, Lru/zdevs/zarchiver/ZTextEditor$u;->g:I

    .line 18
    .line 19
    move v9, v4

    .line 20
    move v4, v3

    .line 21
    move v3, v9

    .line 22
    :goto_0
    move v5, v3

    .line 23
    :goto_1
    const/4 v6, 0x0

    .line 24
    if-ge v5, v4, :cond_3

    .line 25
    .line 26
    :goto_2
    if-ge v6, v1, :cond_2

    .line 27
    .line 28
    add-int v7, v5, v6

    .line 29
    .line 30
    invoke-interface {v2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    if-ne v7, v8, :cond_2

    .line 47
    .line 48
    add-int/lit8 v7, v1, -0x1

    .line 49
    .line 50
    if-ne v6, v7, :cond_1

    .line 51
    .line 52
    new-instance v0, Lru/zdevs/zarchiver/ZTextEditor$t;

    .line 53
    .line 54
    invoke-direct {v0, v5, v1}, Lru/zdevs/zarchiver/ZTextEditor$t;-><init>(II)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    if-lez v3, :cond_4

    .line 65
    .line 66
    move v4, v3

    .line 67
    const/4 v3, 0x0

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    new-instance v0, Lru/zdevs/zarchiver/ZTextEditor$t;

    .line 70
    .line 71
    const/4 v1, -0x1

    .line 72
    invoke-direct {v0, v1, v6}, Lru/zdevs/zarchiver/ZTextEditor$t;-><init>(II)V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
