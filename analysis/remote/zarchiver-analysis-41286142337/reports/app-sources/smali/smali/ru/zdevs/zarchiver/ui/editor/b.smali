.class public final Lru/zdevs/zarchiver/ui/editor/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Editable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/ui/editor/b$d;,
        Lru/zdevs/zarchiver/ui/editor/b$e;,
        Lru/zdevs/zarchiver/ui/editor/b$c;,
        Lru/zdevs/zarchiver/ui/editor/b$a;,
        Lru/zdevs/zarchiver/ui/editor/b$b;
    }
.end annotation


# instance fields
.field public final a:Lru/zdevs/zarchiver/ui/editor/e;

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public d:Lru/zdevs/zarchiver/ui/editor/b$d;

.field public e:Z

.field public f:I

.field public final g:[I

.field public final h:[I

.field public final i:[Lru/zdevs/zarchiver/ui/editor/b$e;

.field public final j:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lru/zdevs/zarchiver/ui/editor/a;

.field public l:Ld1/b;

.field public m:B


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/editor/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->a:Lru/zdevs/zarchiver/ui/editor/e;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->d:Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 18
    .line 19
    iput-boolean p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->e:Z

    .line 20
    .line 21
    iput p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->f:I

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    new-array v1, v0, [I

    .line 25
    .line 26
    iput-object v1, p0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 27
    .line 28
    new-array v0, v0, [I

    .line 29
    .line 30
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->h:[I

    .line 31
    .line 32
    const/16 v0, 0xa

    .line 33
    .line 34
    new-array v0, v0, [Lru/zdevs/zarchiver/ui/editor/b$e;

    .line 35
    .line 36
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->i:[Lru/zdevs/zarchiver/ui/editor/b$e;

    .line 37
    .line 38
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->j:Ljava/util/IdentityHashMap;

    .line 44
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v1, 0x18

    .line 48
    .line 49
    if-ge v0, v1, :cond_0

    .line 50
    .line 51
    new-instance v0, Lru/zdevs/zarchiver/ui/editor/a$b;

    .line 52
    .line 53
    invoke-direct {v0}, Lru/zdevs/zarchiver/ui/editor/a$b;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->k:Lru/zdevs/zarchiver/ui/editor/a;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lru/zdevs/zarchiver/ui/editor/a$a;

    .line 60
    .line 61
    invoke-direct {v0}, Lru/zdevs/zarchiver/ui/editor/a$a;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->k:Lru/zdevs/zarchiver/ui/editor/a;

    .line 65
    .line 66
    :goto_0
    iput-byte p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->m:B

    .line 67
    .line 68
    return-void
.end method

.method public static a(II)V
    .locals 3

    .line 1
    const-string v0, "charAt: "

    .line 2
    .line 3
    if-ltz p0, :cond_1

    .line 4
    .line 5
    if-ge p0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p0, " >= length "

    .line 19
    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v1

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p0, " < 0"

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public static b(IIILjava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, ", "

    .line 2
    .line 3
    const-string v1, " ("

    .line 4
    .line 5
    if-lt p1, p0, :cond_2

    .line 6
    .line 7
    if-gt p0, p2, :cond_1

    .line 8
    .line 9
    if-gt p1, p2, :cond_1

    .line 10
    .line 11
    if-ltz p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, ") starts before 0"

    .line 37
    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p2

    .line 49
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p0, ") ends beyond length "

    .line 72
    .line 73
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {v2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v2

    .line 87
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p0, ") has end before start"

    .line 110
    .line 111
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p2
.end method

.method public static c(Lru/zdevs/zarchiver/ui/editor/b$d;IIC)I
    .locals 3

    .line 1
    move v0, p1

    .line 2
    :goto_0
    if-ltz v0, :cond_4

    .line 3
    .line 4
    iget v1, p0, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 5
    .line 6
    if-ge v0, v1, :cond_4

    .line 7
    .line 8
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 9
    .line 10
    aget-char v1, v1, v0

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    const/16 v2, 0x2d

    .line 27
    .line 28
    if-eq v1, v2, :cond_0

    .line 29
    .line 30
    const/16 v2, 0x5f

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    :cond_0
    if-eqz p3, :cond_3

    .line 35
    .line 36
    if-eq p3, v1, :cond_3

    .line 37
    .line 38
    :cond_1
    const/4 p0, -0x1

    .line 39
    if-ne p2, p0, :cond_2

    .line 40
    .line 41
    if-ge v0, p1, :cond_2

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    :cond_2
    return v0

    .line 46
    :cond_3
    add-int/2addr v0, p2

    .line 47
    goto :goto_0

    .line 48
    :cond_4
    const/4 p0, 0x0

    .line 49
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public static m(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    .line 8
    .line 9
    if-ne p0, v0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    const/4 p0, -0x1

    .line 14
    return p0
.end method


# virtual methods
.method public final append(C)Landroid/text/Editable;
    .locals 0

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 6

    .line 5
    iget v2, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    const/4 v4, 0x0

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/ui/editor/b;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 6

    .line 7
    iget v2, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    move-object v0, p0

    move v1, v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 8
    invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/ui/editor/b;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    return-object p0
.end method

.method public final bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->append(C)Landroid/text/Editable;

    return-object p0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    return-object p0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lru/zdevs/zarchiver/ui/editor/b;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    return-object p0
.end method

.method public final declared-synchronized charAt(I)C
    .locals 3

    .line 1
    const-string v0, "charAt: line "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget v1, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 5
    .line 6
    invoke-static {p1, v1}, Lru/zdevs/zarchiver/ui/editor/b;->a(II)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/b;->d:Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lru/zdevs/zarchiver/ui/editor/b$d;->d(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->f(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0, v1}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, p0, Lru/zdevs/zarchiver/ui/editor/b;->d:Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->d:Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 32
    .line 33
    iget-object v1, v0, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 34
    .line 35
    iget v0, v0, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 36
    .line 37
    sub-int/2addr p1, v0

    .line 38
    aget-char p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return p1

    .line 42
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, " not found"

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    monitor-exit p0

    .line 67
    throw p1
.end method

.method public final declared-synchronized clear()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 9
    .line 10
    invoke-virtual {p0, v0, v0}, Lru/zdevs/zarchiver/ui/editor/b;->k(II)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/b;->clearSpans()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v0, v0, v0}, Lru/zdevs/zarchiver/ui/editor/b;->q(IZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method

.method public final clearSpans()V
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, -0x1

    .line 8
    if-eq v2, v4, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    :goto_0
    aput v4, v0, v3

    .line 14
    .line 15
    aput v4, v0, v1

    .line 16
    .line 17
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->j:Ljava/util/IdentityHashMap;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->i:[Lru/zdevs/zarchiver/ui/editor/b$e;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ui/editor/b;->n(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final declared-synchronized d(I)Lru/zdevs/zarchiver/ui/editor/b$d;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_1

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lt p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lru/zdevs/zarchiver/ui/editor/b$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0

    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    monitor-exit p0

    .line 27
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public final delete(II)Landroid/text/Editable;
    .locals 6

    .line 1
    const-string v3, ""

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/ui/editor/b;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final declared-synchronized e(II)Lru/zdevs/zarchiver/ui/editor/b$d;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lt p1, v0, :cond_1

    .line 9
    .line 10
    if-ltz p2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lru/zdevs/zarchiver/ui/editor/b;->k(II)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 13
    .line 14
    .line 15
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-object p1

    .line 18
    :cond_0
    :try_start_1
    new-instance p1, Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-direct {p1, p2, p2}, Lru/zdevs/zarchiver/ui/editor/b$d;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object p1

    .line 26
    :cond_1
    :try_start_2
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lru/zdevs/zarchiver/ui/editor/b$d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-object p1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    .line 38
    throw p1
.end method

.method public final declared-synchronized f(I)I
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Lru/zdevs/zarchiver/ui/editor/b$d;->d(I)Z

    .line 22
    .line 23
    .line 24
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    monitor-exit p0

    .line 32
    return v1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit p0

    .line 35
    goto :goto_3

    .line 36
    :goto_2
    throw p1

    .line 37
    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized g(I[I)I
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 22
    .line 23
    iget v4, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->e:I

    .line 24
    .line 25
    add-int/2addr v2, v4

    .line 26
    if-ge p1, v2, :cond_0

    .line 27
    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    add-int/2addr p1, v4

    .line 31
    sub-int/2addr p1, v2

    .line 32
    aput p1, p2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    monitor-exit p0

    .line 39
    return v3

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0

    .line 42
    goto :goto_3

    .line 43
    :goto_2
    throw p1

    .line 44
    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized getChars(II[CI)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "getChars"

    .line 3
    .line 4
    iget v1, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 5
    .line 6
    invoke-static {p1, p2, v1, v0}, Lru/zdevs/zarchiver/ui/editor/b;->b(IIILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->f(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v1, p2, -0x1

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lru/zdevs/zarchiver/ui/editor/b;->f(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, -0x1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v0, v2}, Lru/zdevs/zarchiver/ui/editor/b;->e(II)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, v0, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 27
    .line 28
    iget v0, v0, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 29
    .line 30
    sub-int v0, p1, v0

    .line 31
    .line 32
    sub-int/2addr p2, p1

    .line 33
    invoke-static {v1, v0, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    move v3, v0

    .line 38
    :goto_0
    if-gt v3, v1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0, v3, v2}, Lru/zdevs/zarchiver/ui/editor/b;->e(II)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-ne v3, v0, :cond_1

    .line 45
    .line 46
    iget v5, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 47
    .line 48
    sub-int v5, p1, v5

    .line 49
    .line 50
    iget v6, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 51
    .line 52
    sub-int/2addr v6, v5

    .line 53
    iget-object v4, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 54
    .line 55
    invoke-static {v4, v5, p3, p4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v5, 0x0

    .line 60
    if-ne v3, v1, :cond_2

    .line 61
    .line 62
    iget v6, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 63
    .line 64
    sub-int v6, p2, v6

    .line 65
    .line 66
    iget-object v4, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 67
    .line 68
    invoke-static {v4, v5, p3, p4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget v6, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 73
    .line 74
    iget-object v4, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 75
    .line 76
    invoke-static {v4, v5, p3, p4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    :goto_1
    add-int/2addr p4, v6

    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    :goto_2
    monitor-exit p0

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    monitor-exit p0

    .line 87
    goto :goto_4

    .line 88
    :goto_3
    throw p1

    .line 89
    :goto_4
    goto :goto_3
.end method

.method public final getFilters()[Landroid/text/InputFilter;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    return-object v0
.end method

.method public final getSpanEnd(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lru/zdevs/zarchiver/ui/editor/b;->m(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 8
    .line 9
    aget p1, p1, v0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->h(Ljava/lang/Object;)Lru/zdevs/zarchiver/ui/editor/b$e;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    return p1

    .line 20
    :cond_1
    iget p1, p1, Lru/zdevs/zarchiver/ui/editor/b$e;->c:I

    .line 21
    .line 22
    return p1
.end method

.method public final getSpanFlags(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lru/zdevs/zarchiver/ui/editor/b;->m(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->h:[I

    .line 8
    .line 9
    aget p1, p1, v0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->h(Ljava/lang/Object;)Lru/zdevs/zarchiver/ui/editor/b$e;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_1
    iget p1, p1, Lru/zdevs/zarchiver/ui/editor/b$e;->d:I

    .line 21
    .line 22
    return p1
.end method

.method public final getSpanStart(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lru/zdevs/zarchiver/ui/editor/b;->m(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 8
    .line 9
    aget p1, p1, v0

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->h(Ljava/lang/Object;)Lru/zdevs/zarchiver/ui/editor/b$e;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    return p1

    .line 20
    :cond_1
    iget p1, p1, Lru/zdevs/zarchiver/ui/editor/b$e;->b:I

    .line 21
    .line 22
    return p1
.end method

.method public final getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p3, :cond_8

    .line 3
    .line 4
    const/4 p2, 0x2

    .line 5
    const-class v0, Ljava/lang/Object;

    .line 6
    .line 7
    if-ne v0, p3, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/editor/b;->i:[Lru/zdevs/zarchiver/ui/editor/b$e;

    .line 13
    .line 14
    array-length v3, v2

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_1
    if-ge v4, v3, :cond_3

    .line 17
    .line 18
    aget-object v5, v2, v4

    .line 19
    .line 20
    if-eqz v5, :cond_2

    .line 21
    .line 22
    if-eq v0, p3, :cond_1

    .line 23
    .line 24
    iget-object v5, v5, Lru/zdevs/zarchiver/ui/editor/b$e;->a:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {p3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_2

    .line 31
    .line 32
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    if-lez v1, :cond_8

    .line 38
    .line 39
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, [Ljava/lang/Object;

    .line 44
    .line 45
    if-ne v0, p3, :cond_4

    .line 46
    .line 47
    sget-object v3, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 48
    .line 49
    aput-object v3, v1, p1

    .line 50
    .line 51
    sget-object v3, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    aput-object v3, v1, v4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    const/4 p2, 0x0

    .line 58
    :goto_2
    array-length v3, v2

    .line 59
    :goto_3
    if-ge p1, v3, :cond_7

    .line 60
    .line 61
    aget-object v4, v2, p1

    .line 62
    .line 63
    if-eqz v4, :cond_6

    .line 64
    .line 65
    iget-object v4, v4, Lru/zdevs/zarchiver/ui/editor/b$e;->a:Ljava/lang/Object;

    .line 66
    .line 67
    if-eq v0, p3, :cond_5

    .line 68
    .line 69
    invoke-virtual {p3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_6

    .line 74
    .line 75
    :cond_5
    aput-object v4, v1, p2

    .line 76
    .line 77
    add-int/lit8 p2, p2, 0x1

    .line 78
    .line 79
    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_7
    return-object v1

    .line 83
    :cond_8
    invoke-static {p3, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, [Ljava/lang/Object;

    .line 88
    .line 89
    return-object p1
.end method

.method public final h(Ljava/lang/Object;)Lru/zdevs/zarchiver/ui/editor/b$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->j:Ljava/util/IdentityHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->i:[Lru/zdevs/zarchiver/ui/editor/b$e;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    aget-object p1, v0, p1

    .line 20
    .line 21
    return-object p1
.end method

.method public final declared-synchronized i(I)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    aget v0, v0, v1

    .line 6
    .line 7
    if-ltz v0, :cond_4

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ui/editor/b;->f(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0, v1}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object p1

    .line 26
    :cond_1
    if-lez p1, :cond_2

    .line 27
    .line 28
    :try_start_1
    iget v2, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 29
    .line 30
    sub-int/2addr v0, v2

    .line 31
    iget v2, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 32
    .line 33
    sub-int/2addr v2, v0

    .line 34
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget v2, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 40
    .line 41
    sub-int/2addr v0, v2

    .line 42
    neg-int p1, p1

    .line 43
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    sub-int/2addr v0, p1

    .line 48
    :goto_0
    if-gtz p1, :cond_3

    .line 49
    .line 50
    const-string p1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    return-object p1

    .line 54
    :cond_3
    :try_start_2
    new-instance v2, Lru/zdevs/zarchiver/ui/editor/b$c;

    .line 55
    .line 56
    iget-object v1, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 57
    .line 58
    invoke-direct {v2, v1, v0, p1}, Lru/zdevs/zarchiver/ui/editor/b$c;-><init>([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .line 60
    .line 61
    monitor-exit p0

    .line 62
    return-object v2

    .line 63
    :cond_4
    :goto_1
    :try_start_3
    const-string p1, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    .line 65
    monitor-exit p0

    .line 66
    return-object p1

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    monitor-exit p0

    .line 69
    throw p1
.end method

.method public final insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 6

    const/4 v4, 0x0

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/ui/editor/b;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    return-object p0
.end method

.method public final insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/ui/editor/b;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    return-object p0
.end method

.method public final declared-synchronized j(I)[I
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->f(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-array v0, v1, [I

    .line 16
    .line 17
    aput p1, v0, v2

    .line 18
    .line 19
    aput p1, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-object v0

    .line 23
    :cond_0
    :try_start_1
    iget v4, v0, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 24
    .line 25
    sub-int/2addr p1, v4

    .line 26
    const/4 v4, -0x1

    .line 27
    invoke-static {v0, p1, v4, v2}, Lru/zdevs/zarchiver/ui/editor/b;->c(Lru/zdevs/zarchiver/ui/editor/b$d;IIC)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-static {v0, p1, v3, v2}, Lru/zdevs/zarchiver/ui/editor/b;->c(Lru/zdevs/zarchiver/ui/editor/b$d;IIC)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-ne v5, p1, :cond_2

    .line 36
    .line 37
    if-ne v6, p1, :cond_2

    .line 38
    .line 39
    iget v7, v0, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 40
    .line 41
    iget v8, v0, Lru/zdevs/zarchiver/ui/editor/b$d;->b:I

    .line 42
    .line 43
    and-int/2addr v8, v3

    .line 44
    sub-int/2addr v7, v8

    .line 45
    if-lez v7, :cond_2

    .line 46
    .line 47
    add-int/lit8 v5, p1, 0x1

    .line 48
    .line 49
    if-le v5, v7, :cond_1

    .line 50
    .line 51
    add-int/lit8 p1, p1, -0x1

    .line 52
    .line 53
    :cond_1
    iget-object v5, v0, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 54
    .line 55
    aget-char v5, v5, p1

    .line 56
    .line 57
    invoke-static {v0, p1, v4, v5}, Lru/zdevs/zarchiver/ui/editor/b;->c(Lru/zdevs/zarchiver/ui/editor/b$d;IIC)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {v0, p1, v3, v5}, Lru/zdevs/zarchiver/ui/editor/b;->c(Lru/zdevs/zarchiver/ui/editor/b$d;IIC)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    move v5, v4

    .line 66
    :cond_2
    new-array p1, v1, [I

    .line 67
    .line 68
    iget v0, v0, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 69
    .line 70
    add-int/2addr v5, v0

    .line 71
    aput v5, p1, v2

    .line 72
    .line 73
    add-int/2addr v0, v6

    .line 74
    aput v0, p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    monitor-exit p0

    .line 77
    return-object p1

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    monitor-exit p0

    .line 80
    throw p1
.end method

.method public final declared-synchronized k(II)Lru/zdevs/zarchiver/ui/editor/b$d;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, p2, v1}, Lru/zdevs/zarchiver/ui/editor/b$d;-><init>(II)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-ne p1, p2, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 22
    .line 23
    iput p1, v0, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :goto_0
    monitor-exit p0

    .line 32
    return-object v0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit p0

    .line 35
    throw p1
.end method

.method public final l(Ljava/lang/CharSequence;III)V
    .locals 8

    .line 1
    :cond_0
    move v0, p3

    .line 2
    :cond_1
    const/16 v1, 0xa

    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    if-ge v0, p4, :cond_2

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    if-ne v3, v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    const/4 v0, -0x1

    .line 17
    :goto_0
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-eq v0, v2, :cond_4

    .line 20
    .line 21
    sub-int v2, v0, p3

    .line 22
    .line 23
    invoke-virtual {p0, p2, v2}, Lru/zdevs/zarchiver/ui/editor/b;->k(II)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    iget-object v6, v5, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 28
    .line 29
    invoke-static {p1, p3, v0, v6, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 30
    .line 31
    .line 32
    iput v2, v5, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 33
    .line 34
    iget-object p3, v5, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 35
    .line 36
    sub-int/2addr v2, v4

    .line 37
    aget-char p3, p3, v2

    .line 38
    .line 39
    if-ne p3, v1, :cond_3

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    :cond_3
    invoke-virtual {v5, v3}, Lru/zdevs/zarchiver/ui/editor/b$d;->i(Z)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 p2, p2, 0x1

    .line 46
    .line 47
    move p3, v0

    .line 48
    goto :goto_4

    .line 49
    :cond_4
    sub-int v0, p4, p3

    .line 50
    .line 51
    invoke-virtual {p0, p2, v0}, Lru/zdevs/zarchiver/ui/editor/b;->e(II)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget v5, v2, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 56
    .line 57
    if-gtz v5, :cond_6

    .line 58
    .line 59
    iget-object v6, v2, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 60
    .line 61
    array-length v7, v6

    .line 62
    if-ge v7, v0, :cond_5

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_5
    invoke-static {p1, p3, p4, v6, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 66
    .line 67
    .line 68
    iput v0, v2, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_6
    :goto_1
    add-int/2addr v5, v0

    .line 72
    add-int/2addr v5, v1

    .line 73
    new-array v5, v5, [C

    .line 74
    .line 75
    invoke-static {p1, p3, p4, v5, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 76
    .line 77
    .line 78
    iget p3, v2, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 79
    .line 80
    if-lez p3, :cond_7

    .line 81
    .line 82
    iget-object v6, v2, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 83
    .line 84
    invoke-static {v6, v3, v5, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    .line 86
    .line 87
    :cond_7
    iput-object v5, v2, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 88
    .line 89
    iget p3, v2, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 90
    .line 91
    add-int/2addr p3, v0

    .line 92
    iput p3, v2, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 93
    .line 94
    :goto_2
    iget-object p3, v2, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 95
    .line 96
    iget v0, v2, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 97
    .line 98
    sub-int/2addr v0, v4

    .line 99
    aget-char p3, p3, v0

    .line 100
    .line 101
    if-ne p3, v1, :cond_8

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_8
    const/4 v4, 0x0

    .line 105
    :goto_3
    invoke-virtual {v2, v4}, Lru/zdevs/zarchiver/ui/editor/b$d;->i(Z)V

    .line 106
    .line 107
    .line 108
    const/4 p3, 0x0

    .line 109
    iput-object p3, v2, Lru/zdevs/zarchiver/ui/editor/b$d;->h:[I

    .line 110
    .line 111
    iput v3, v2, Lru/zdevs/zarchiver/ui/editor/b$d;->e:I

    .line 112
    .line 113
    move p3, p4

    .line 114
    :goto_4
    if-lt p3, p4, :cond_0

    .line 115
    .line 116
    return-void
.end method

.method public final length()I
    .locals 1

    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    return v0
.end method

.method public final n(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->f:I

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->f:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->a:Lru/zdevs/zarchiver/ui/editor/e;

    .line 12
    .line 13
    check-cast v0, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->n(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final nextSpanTransition(IILjava/lang/Class;)I
    .locals 0

    return p2
.end method

.method public final o(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 6
    .line 7
    invoke-direct {v1, p1, v0}, Lru/zdevs/zarchiver/ui/editor/b$d;-><init>(Ljava/lang/StringBuilder;I)V

    .line 8
    .line 9
    .line 10
    iget p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 11
    .line 12
    iput p1, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 13
    .line 14
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->k:Lru/zdevs/zarchiver/ui/editor/a;

    .line 15
    .line 16
    monitor-enter p1

    .line 17
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->k:Lru/zdevs/zarchiver/ui/editor/a;

    .line 18
    .line 19
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/editor/b;->l:Ld1/b;

    .line 20
    .line 21
    iget-byte v3, p0, Lru/zdevs/zarchiver/ui/editor/b;->m:B

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v1, v0, v2, v3, v4}, Lru/zdevs/zarchiver/ui/editor/b$d;->f(Lru/zdevs/zarchiver/ui/editor/a;Ld1/b;BZ)B

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput-byte v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->m:B

    .line 29
    .line 30
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->a:Lru/zdevs/zarchiver/ui/editor/e;

    .line 32
    .line 33
    check-cast p1, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->m(Lru/zdevs/zarchiver/ui/editor/b$d;)V

    .line 36
    .line 37
    .line 38
    monitor-enter p0

    .line 39
    :try_start_1
    iget p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 40
    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_0

    .line 50
    .line 51
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    iget p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 63
    .line 64
    iget v0, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 65
    .line 66
    add-int/2addr p1, v0

    .line 67
    iput p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw p1

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 75
    throw v0
.end method

.method public final p(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-gtz p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->l:Ld1/b;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->l:Ld1/b;

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_1
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/editor/b;->l:Ld1/b;

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {v2}, Ld1/b;->c()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-ne v2, p1, :cond_2

    .line 23
    .line 24
    return v1

    .line 25
    :cond_2
    const/16 v2, 0xb

    .line 26
    .line 27
    if-ne p1, v2, :cond_3

    .line 28
    .line 29
    new-instance v2, Ld1/a;

    .line 30
    .line 31
    invoke-direct {v2, p1, v0}, Ld1/a;-><init>(II)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    const/16 v2, 0xc

    .line 36
    .line 37
    if-eq p1, v2, :cond_5

    .line 38
    .line 39
    const/16 v2, 0xd

    .line 40
    .line 41
    if-ne p1, v2, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    new-instance v2, Ld1/c;

    .line 45
    .line 46
    invoke-direct {v2, p1}, Ld1/c;-><init>(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_5
    :goto_0
    new-instance v2, Ld1/a;

    .line 51
    .line 52
    invoke-direct {v2, p1, v1}, Ld1/a;-><init>(II)V

    .line 53
    .line 54
    .line 55
    :goto_1
    iput-object v2, p0, Lru/zdevs/zarchiver/ui/editor/b;->l:Ld1/b;

    .line 56
    .line 57
    :goto_2
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->l:Ld1/b;

    .line 58
    .line 59
    if-eqz p1, :cond_6

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ld1/b;->d(B)B

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    goto :goto_3

    .line 66
    :cond_6
    const/4 p1, 0x0

    .line 67
    :goto_3
    iput-byte p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->m:B

    .line 68
    .line 69
    invoke-virtual {p0, v0, v1, v1}, Lru/zdevs/zarchiver/ui/editor/b;->r(ZZZ)V

    .line 70
    .line 71
    .line 72
    return v0
.end method

.method public final declared-synchronized q(IZZZ)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/b;->l:Ld1/b;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    if-lez p1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 21
    .line 22
    add-int/lit8 v4, p1, -0x1

    .line 23
    .line 24
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 29
    .line 30
    iget v4, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->g:I

    .line 31
    .line 32
    if-lez v4, :cond_2

    .line 33
    .line 34
    iget-object v1, v1, Lru/zdevs/zarchiver/ui/editor/b$d;->i:[B

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    sub-int/2addr v4, v3

    .line 39
    aget-byte v1, v1, v4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v1, v2}, Ld1/b;->d(B)B

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v1, 0x0

    .line 48
    :goto_0
    if-ltz p1, :cond_5

    .line 49
    .line 50
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 57
    .line 58
    iget-object v5, p0, Lru/zdevs/zarchiver/ui/editor/b;->k:Lru/zdevs/zarchiver/ui/editor/a;

    .line 59
    .line 60
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 61
    :try_start_2
    iget-object v6, p0, Lru/zdevs/zarchiver/ui/editor/b;->l:Ld1/b;

    .line 62
    .line 63
    if-eqz v6, :cond_3

    .line 64
    .line 65
    iget v7, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->g:I

    .line 66
    .line 67
    if-lez v7, :cond_3

    .line 68
    .line 69
    iget-object v8, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->i:[B

    .line 70
    .line 71
    if-eqz v8, :cond_3

    .line 72
    .line 73
    sub-int/2addr v7, v3

    .line 74
    aget-byte v2, v8, v7

    .line 75
    .line 76
    :cond_3
    iget-object v7, p0, Lru/zdevs/zarchiver/ui/editor/b;->k:Lru/zdevs/zarchiver/ui/editor/a;

    .line 77
    .line 78
    invoke-virtual {v4, v7, v6, v1, p4}, Lru/zdevs/zarchiver/ui/editor/b$d;->f(Lru/zdevs/zarchiver/ui/editor/a;Ld1/b;BZ)B

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eq v2, v1, :cond_4

    .line 83
    .line 84
    const/4 p2, 0x1

    .line 85
    :cond_4
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :try_start_3
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/editor/b;->a:Lru/zdevs/zarchiver/ui/editor/e;

    .line 87
    .line 88
    check-cast v2, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 89
    .line 90
    invoke-virtual {v2, v4}, Lru/zdevs/zarchiver/ui/editor/EditableView;->m(Lru/zdevs/zarchiver/ui/editor/b$d;)V

    .line 91
    .line 92
    .line 93
    iget v2, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 94
    .line 95
    iget v4, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 96
    .line 97
    add-int/2addr v2, v4

    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    :try_start_5
    throw p1

    .line 102
    :cond_5
    :goto_1
    add-int/2addr p1, v3

    .line 103
    :goto_2
    if-ge p1, v0, :cond_a

    .line 104
    .line 105
    iget-object v3, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 112
    .line 113
    iput v2, v3, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 114
    .line 115
    iget v4, v3, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 116
    .line 117
    add-int/2addr v2, v4

    .line 118
    iget-object v4, v3, Lru/zdevs/zarchiver/ui/editor/b$d;->h:[I

    .line 119
    .line 120
    if-eqz v4, :cond_6

    .line 121
    .line 122
    if-eqz p2, :cond_7

    .line 123
    .line 124
    :cond_6
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/editor/b;->k:Lru/zdevs/zarchiver/ui/editor/a;

    .line 125
    .line 126
    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 127
    :try_start_6
    iget-object v5, p0, Lru/zdevs/zarchiver/ui/editor/b;->k:Lru/zdevs/zarchiver/ui/editor/a;

    .line 128
    .line 129
    iget-object v6, p0, Lru/zdevs/zarchiver/ui/editor/b;->l:Ld1/b;

    .line 130
    .line 131
    invoke-virtual {v3, v5, v6, v1, p4}, Lru/zdevs/zarchiver/ui/editor/b$d;->f(Lru/zdevs/zarchiver/ui/editor/a;Ld1/b;BZ)B

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 136
    :cond_7
    :try_start_7
    iget v4, v3, Lru/zdevs/zarchiver/ui/editor/b$d;->e:I

    .line 137
    .line 138
    if-eqz v4, :cond_8

    .line 139
    .line 140
    if-eqz p3, :cond_9

    .line 141
    .line 142
    :cond_8
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/editor/b;->a:Lru/zdevs/zarchiver/ui/editor/e;

    .line 143
    .line 144
    check-cast v4, Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 145
    .line 146
    invoke-virtual {v4, v3}, Lru/zdevs/zarchiver/ui/editor/EditableView;->m(Lru/zdevs/zarchiver/ui/editor/b$d;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 147
    .line 148
    .line 149
    :cond_9
    add-int/lit8 p1, p1, 0x1

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :catchall_1
    move-exception p1

    .line 153
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 154
    :try_start_9
    throw p1

    .line 155
    :cond_a
    iput-byte v1, p0, Lru/zdevs/zarchiver/ui/editor/b;->m:B

    .line 156
    .line 157
    iput v2, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 158
    .line 159
    monitor-exit p0

    .line 160
    return-void

    .line 161
    :catchall_2
    move-exception p1

    .line 162
    monitor-exit p0

    .line 163
    goto :goto_4

    .line 164
    :goto_3
    throw p1

    .line 165
    :goto_4
    goto :goto_3
.end method

.method public final declared-synchronized r(ZZZ)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p3, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/b;->k:Lru/zdevs/zarchiver/ui/editor/a;

    .line 10
    .line 11
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v2, :cond_1

    .line 20
    .line 21
    iget-object v4, p0, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_1
    iget v6, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->g:I

    .line 31
    .line 32
    if-ge v5, v6, :cond_0

    .line 33
    .line 34
    iget-object v6, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->h:[I

    .line 35
    .line 36
    aget v7, v6, v5

    .line 37
    .line 38
    const v8, 0x7fffff

    .line 39
    .line 40
    .line 41
    and-int/2addr v7, v8

    .line 42
    aput v7, v6, v5

    .line 43
    .line 44
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    monitor-exit v1

    .line 51
    goto :goto_2

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    throw p1

    .line 55
    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 56
    if-nez p2, :cond_3

    .line 57
    .line 58
    if-eqz p3, :cond_4

    .line 59
    .line 60
    :cond_3
    const/4 v0, 0x1

    .line 61
    :cond_4
    xor-int/lit8 p2, p3, 0x1

    .line 62
    .line 63
    const/4 p3, -0x1

    .line 64
    invoke-virtual {p0, p3, p1, v0, p2}, Lru/zdevs/zarchiver/ui/editor/b;->q(IZZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    .line 66
    .line 67
    :cond_5
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :catchall_1
    move-exception p1

    .line 70
    monitor-exit p0

    .line 71
    goto :goto_4

    .line 72
    :goto_3
    throw p1

    .line 73
    :goto_4
    goto :goto_3
.end method

.method public final removeSpan(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lru/zdevs/zarchiver/ui/editor/b;->m(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    aput v1, p1, v0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->n(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->j:Ljava/util/IdentityHashMap;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/Integer;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v0, 0x0

    .line 34
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/b;->i:[Lru/zdevs/zarchiver/ui/editor/b$e;

    .line 35
    .line 36
    aput-object v0, v1, p1

    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public final replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 6

    const/4 v4, 0x0

    .line 55
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lru/zdevs/zarchiver/ui/editor/b;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    return-object p0
.end method

.method public final declared-synchronized replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface/range {p3 .. p5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, La0/b;->d(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v6, v2, v0

    sub-int v7, v5, v4

    if-nez v6, :cond_0

    if-nez v7, :cond_0

    .line 2
    monitor-exit p0

    return-object v1

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lru/zdevs/zarchiver/ui/editor/b;->f(I)I

    move-result v8

    if-ne v0, v2, :cond_1

    move v9, v8

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1, v2}, Lru/zdevs/zarchiver/ui/editor/b;->f(I)I

    move-result v9

    :goto_0
    move v10, v4

    :cond_2
    const/16 v11, 0xa

    const/4 v12, -0x1

    if-ge v10, v5, :cond_3

    .line 5
    invoke-interface {v3, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    add-int/lit8 v10, v10, 0x1

    if-ne v13, v11, :cond_2

    goto :goto_1

    :cond_3
    const/4 v10, -0x1

    :goto_1
    if-ne v10, v12, :cond_4

    move v13, v5

    goto :goto_2

    :cond_4
    move v13, v10

    :goto_2
    sub-int/2addr v13, v4

    .line 6
    invoke-virtual {v1, v8, v13}, Lru/zdevs/zarchiver/ui/editor/b;->e(II)Lru/zdevs/zarchiver/ui/editor/b$d;

    move-result-object v14

    const/4 v15, 0x0

    if-ne v8, v9, :cond_5

    move-object v15, v14

    goto :goto_3

    .line 7
    :cond_5
    invoke-virtual {v1, v9, v15}, Lru/zdevs/zarchiver/ui/editor/b;->e(II)Lru/zdevs/zarchiver/ui/editor/b$d;

    move-result-object v16

    move-object/from16 v15, v16

    .line 8
    :goto_3
    iget v11, v14, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    sub-int v11, v0, v11

    .line 9
    iget v12, v15, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    sub-int/2addr v2, v12

    const/4 v12, -0x1

    if-eq v10, v12, :cond_8

    .line 10
    iget v12, v15, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    if-ne v2, v12, :cond_7

    const/4 v0, 0x1

    .line 11
    invoke-virtual {v15, v0}, Lru/zdevs/zarchiver/ui/editor/b$d;->i(Z)V

    .line 12
    iget-object v12, v1, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v0

    if-ne v9, v12, :cond_6

    add-int/lit8 v0, v9, 0x1

    const/16 v12, 0xa

    .line 13
    invoke-virtual {v1, v0, v12}, Lru/zdevs/zarchiver/ui/editor/b;->k(II)Lru/zdevs/zarchiver/ui/editor/b$d;

    :cond_6
    move/from16 v18, v6

    move/from16 v17, v7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    sub-int/2addr v12, v2

    add-int/lit8 v0, v9, 0x1

    .line 14
    invoke-virtual {v1, v0, v12}, Lru/zdevs/zarchiver/ui/editor/b;->k(II)Lru/zdevs/zarchiver/ui/editor/b$d;

    move-result-object v0

    .line 15
    iput v12, v0, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    const/4 v12, 0x1

    .line 16
    invoke-virtual {v0, v12}, Lru/zdevs/zarchiver/ui/editor/b$d;->i(Z)V

    .line 17
    iget-object v12, v15, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    move/from16 v17, v7

    iget-object v7, v0, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    iget v0, v0, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    move/from16 v18, v6

    const/4 v6, 0x0

    invoke-static {v12, v2, v7, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_4
    const/4 v6, 0x4

    .line 18
    invoke-virtual {v1, v6}, Lru/zdevs/zarchiver/ui/editor/b;->n(I)V

    goto :goto_5

    :cond_8
    move/from16 v18, v6

    move/from16 v17, v7

    const/4 v0, 0x1

    :goto_5
    add-int v6, v11, v13

    if-eqz v0, :cond_9

    .line 19
    iget v7, v15, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    sub-int/2addr v7, v2

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    :goto_6
    add-int/2addr v7, v6

    .line 20
    iget-object v12, v14, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    array-length v5, v12

    if-ge v5, v7, :cond_c

    add-int/lit8 v5, v7, 0xa

    .line 21
    new-array v5, v5, [C

    if-lez v11, :cond_a

    move/from16 v19, v10

    const/4 v10, 0x0

    .line 22
    invoke-static {v12, v10, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_a
    move/from16 v19, v10

    .line 23
    :goto_7
    invoke-static {v3, v4, v13, v5, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-eqz v0, :cond_b

    .line 24
    iget-object v0, v15, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    iget v10, v15, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    sub-int/2addr v10, v2

    invoke-static {v0, v2, v5, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    :cond_b
    iput-object v5, v14, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    goto :goto_8

    :cond_c
    move/from16 v19, v10

    if-eqz v0, :cond_d

    .line 26
    iget-object v0, v15, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    iget v5, v15, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    sub-int/2addr v5, v2

    invoke-static {v0, v2, v12, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    :cond_d
    iget-object v0, v14, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    invoke-static {v3, v4, v13, v0, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 28
    :goto_8
    iput v7, v14, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    if-lez v7, :cond_e

    .line 29
    iget-object v0, v14, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    const/4 v2, 0x1

    sub-int/2addr v7, v2

    aget-char v0, v0, v7

    const/16 v2, 0xa

    if-ne v0, v2, :cond_e

    const/4 v0, 0x1

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v14, v0}, Lru/zdevs/zarchiver/ui/editor/b$d;->i(Z)V

    if-eq v14, v15, :cond_10

    .line 30
    iget v0, v15, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    if-lez v0, :cond_f

    .line 31
    iget-object v2, v15, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    aget-char v0, v2, v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_f

    const/4 v0, 0x1

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v15, v0}, Lru/zdevs/zarchiver/ui/editor/b$d;->i(Z)V

    :cond_10
    if-ge v8, v9, :cond_11

    .line 32
    iget-object v0, v1, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_11

    .line 33
    iget-object v0, v1, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    add-int/lit8 v2, v8, 0x1

    const/4 v5, 0x1

    add-int/2addr v9, v5

    invoke-virtual {v0, v2, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 35
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x4

    .line 36
    invoke-virtual {v1, v0}, Lru/zdevs/zarchiver/ui/editor/b;->n(I)V

    :cond_11
    move/from16 v10, v19

    const/4 v0, -0x1

    if-eq v10, v0, :cond_12

    add-int/lit8 v0, v10, 0x1

    move/from16 v2, p5

    if-ge v0, v2, :cond_13

    add-int/lit8 v0, v8, 0x1

    .line 37
    invoke-virtual {v1, v3, v0, v10, v2}, Lru/zdevs/zarchiver/ui/editor/b;->l(Ljava/lang/CharSequence;III)V

    const/4 v0, 0x4

    .line 38
    invoke-virtual {v1, v0}, Lru/zdevs/zarchiver/ui/editor/b;->n(I)V

    goto :goto_b

    :cond_12
    move/from16 v2, p5

    :cond_13
    :goto_b
    move/from16 v0, v18

    const/4 v5, 0x1

    if-gt v0, v5, :cond_14

    move/from16 v0, v17

    if-gt v0, v5, :cond_15

    const/4 v5, 0x1

    goto :goto_c

    :cond_14
    move/from16 v0, v17

    :cond_15
    const/4 v5, 0x0

    :goto_c
    const/4 v6, 0x0

    .line 39
    invoke-virtual {v1, v8, v6, v6, v5}, Lru/zdevs/zarchiver/ui/editor/b;->q(IZZZ)V

    .line 40
    iget-object v5, v1, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    aget v7, v5, v6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_16

    add-int v0, p1, v0

    .line 41
    aput v0, v5, v6

    const/4 v7, 0x1

    aput v0, v5, v7

    const/16 v0, 0x101

    .line 42
    invoke-virtual {v1, v0}, Lru/zdevs/zarchiver/ui/editor/b;->n(I)V

    .line 43
    :cond_16
    iget-object v0, v1, Lru/zdevs/zarchiver/ui/editor/b;->j:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 44
    iget-object v0, v1, Lru/zdevs/zarchiver/ui/editor/b;->i:[Lru/zdevs/zarchiver/ui/editor/b$e;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    instance-of v0, v3, Landroid/text/Spanned;

    if-eqz v0, :cond_1a

    .line 46
    move-object v0, v3

    check-cast v0, Landroid/text/Spanned;

    .line 47
    const-class v3, Ljava/lang/Object;

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 48
    array-length v5, v3

    const/4 v15, 0x0

    :goto_d
    if-ge v15, v5, :cond_1a

    aget-object v6, v3, v15

    .line 49
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 50
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-ge v7, v4, :cond_17

    move v7, v4

    :cond_17
    if-le v8, v2, :cond_18

    move v8, v2

    .line 51
    :cond_18
    invoke-virtual {v1, v6}, Lru/zdevs/zarchiver/ui/editor/b;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_19

    add-int v7, p1, v7

    add-int v8, p1, v8

    .line 52
    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v1, v6, v7, v8, v9}, Lru/zdevs/zarchiver/ui/editor/b;->setSpan(Ljava/lang/Object;III)V

    :cond_19
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    :cond_1a
    const/4 v0, 0x2

    .line 53
    invoke-virtual {v1, v0}, Lru/zdevs/zarchiver/ui/editor/b;->n(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method

.method public final setFilters([Landroid/text/InputFilter;)V
    .locals 0

    return-void
.end method

.method public final setSpan(Ljava/lang/Object;III)V
    .locals 2

    .line 1
    invoke-static {p1}, Lru/zdevs/zarchiver/ui/editor/b;->m(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ltz v0, :cond_2

    .line 7
    .line 8
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 9
    .line 10
    aput p2, p1, v0

    .line 11
    .line 12
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/editor/b;->h:[I

    .line 13
    .line 14
    aput p4, p2, v0

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    if-ne v0, p2, :cond_1

    .line 18
    .line 19
    aget p3, p1, v1

    .line 20
    .line 21
    aget p4, p1, p2

    .line 22
    .line 23
    if-le p3, p4, :cond_0

    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    if-eq p4, v0, :cond_0

    .line 27
    .line 28
    aput p4, p1, v1

    .line 29
    .line 30
    aput p3, p1, p2

    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0, p2}, Lru/zdevs/zarchiver/ui/editor/b;->n(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    :cond_2
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->h(Ljava/lang/Object;)Lru/zdevs/zarchiver/ui/editor/b$e;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iput p2, v0, Lru/zdevs/zarchiver/ui/editor/b$e;->b:I

    .line 43
    .line 44
    iput p3, v0, Lru/zdevs/zarchiver/ui/editor/b$e;->c:I

    .line 45
    .line 46
    iput p4, v0, Lru/zdevs/zarchiver/ui/editor/b$e;->d:I

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    new-instance v0, Lru/zdevs/zarchiver/ui/editor/b$e;

    .line 50
    .line 51
    invoke-direct {v0, p1, p2, p3, p4}, Lru/zdevs/zarchiver/ui/editor/b$e;-><init>(Ljava/lang/Object;III)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/editor/b;->i:[Lru/zdevs/zarchiver/ui/editor/b$e;

    .line 55
    .line 56
    array-length p3, p2

    .line 57
    if-ge v1, p3, :cond_5

    .line 58
    .line 59
    aget-object p3, p2, v1

    .line 60
    .line 61
    if-nez p3, :cond_4

    .line 62
    .line 63
    aput-object v0, p2, v1

    .line 64
    .line 65
    iget-object p2, p0, Lru/zdevs/zarchiver/ui/editor/b;->j:Ljava/util/IdentityHashMap;

    .line 66
    .line 67
    iget-object p3, v0, Lru/zdevs/zarchiver/ui/editor/b$e;->a:Ljava/lang/Object;

    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    invoke-virtual {p2, p3, p4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    :goto_1
    instance-of p2, p1, Landroid/text/SpanWatcher;

    .line 81
    .line 82
    instance-of p1, p1, Landroid/text/TextWatcher;

    .line 83
    .line 84
    return-void
.end method

.method public final declared-synchronized subSequence(II)Ljava/lang/CharSequence;
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-object p1

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lru/zdevs/zarchiver/ui/editor/b;->f(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    add-int/lit8 v1, p2, -0x1

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lru/zdevs/zarchiver/ui/editor/b;->f(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-virtual {p0, v0, v1}, Lru/zdevs/zarchiver/ui/editor/b;->e(II)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lru/zdevs/zarchiver/ui/editor/b$c;

    .line 26
    .line 27
    iget-object v2, v0, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 28
    .line 29
    iget v0, v0, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 30
    .line 31
    sub-int v0, p1, v0

    .line 32
    .line 33
    sub-int/2addr p2, p1

    .line 34
    invoke-direct {v1, v2, v0, p2}, Lru/zdevs/zarchiver/ui/editor/b$c;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-object v1

    .line 39
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    move v3, v0

    .line 45
    :goto_0
    if-gt v3, v1, :cond_5

    .line 46
    .line 47
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    if-ne v3, v0, :cond_3

    .line 55
    .line 56
    iget v5, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 57
    .line 58
    sub-int v5, p1, v5

    .line 59
    .line 60
    iget-object v6, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 61
    .line 62
    iget v4, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 63
    .line 64
    sub-int/2addr v4, v5

    .line 65
    invoke-virtual {v2, v6, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const/4 v5, 0x0

    .line 70
    if-ne v3, v1, :cond_4

    .line 71
    .line 72
    iget-object v6, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 73
    .line 74
    iget v7, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 75
    .line 76
    sub-int v7, p2, v7

    .line 77
    .line 78
    iget v4, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 79
    .line 80
    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {v2, v6, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    iget-object v6, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->c:[C

    .line 89
    .line 90
    iget v4, v4, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 91
    .line 92
    invoke-virtual {v2, v6, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    .line 94
    .line 95
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    :goto_2
    monitor-exit p0

    .line 99
    return-object v2

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    monitor-exit p0

    .line 102
    goto :goto_4

    .line 103
    :goto_3
    throw p1

    .line 104
    :goto_4
    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
