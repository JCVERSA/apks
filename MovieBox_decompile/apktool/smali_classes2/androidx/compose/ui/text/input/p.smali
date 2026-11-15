.class public final Landroidx/compose/ui/text/input/p;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/input/p$a;
    }
.end annotation


# static fields
.field public static final h:Landroidx/compose/ui/text/input/p$a;

.field private static final i:Landroidx/compose/ui/text/input/p;


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:I

.field private final f:Landroidx/compose/ui/text/input/x;

.field private final g:Ln0/i;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Landroidx/compose/ui/text/input/p$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/input/p$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/text/input/p;->h:Landroidx/compose/ui/text/input/p$a;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/text/input/p;

    .line 10
    .line 11
    const/16 v10, 0x7f

    .line 12
    .line 13
    const/4 v11, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x0

    .line 21
    move-object v2, v0

    .line 22
    invoke-direct/range {v2 .. v11}, Landroidx/compose/ui/text/input/p;-><init>(ZIZIILandroidx/compose/ui/text/input/x;Ln0/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Landroidx/compose/ui/text/input/p;->i:Landroidx/compose/ui/text/input/p;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(ZIZIILandroidx/compose/ui/text/input/x;Ln0/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Landroidx/compose/ui/text/input/p;->a:Z

    .line 4
    iput p2, p0, Landroidx/compose/ui/text/input/p;->b:I

    .line 5
    iput-boolean p3, p0, Landroidx/compose/ui/text/input/p;->c:Z

    .line 6
    iput p4, p0, Landroidx/compose/ui/text/input/p;->d:I

    .line 7
    iput p5, p0, Landroidx/compose/ui/text/input/p;->e:I

    .line 8
    iput-object p6, p0, Landroidx/compose/ui/text/input/p;->f:Landroidx/compose/ui/text/input/x;

    .line 9
    iput-object p7, p0, Landroidx/compose/ui/text/input/p;->g:Ln0/i;

    return-void
.end method

.method public synthetic constructor <init>(ZIZIILandroidx/compose/ui/text/input/x;Ln0/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    and-int/lit8 v1, p8, 0x2

    if-eqz v1, :cond_1

    .line 10
    sget-object v1, Landroidx/compose/ui/text/input/t;->a:Landroidx/compose/ui/text/input/t$a;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/t$a;->b()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    move v2, p3

    :goto_2
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_3

    .line 11
    sget-object v3, Landroidx/compose/ui/text/input/u;->a:Landroidx/compose/ui/text/input/u$a;

    invoke-virtual {v3}, Landroidx/compose/ui/text/input/u$a;->h()I

    move-result v3

    goto :goto_3

    :cond_3
    move v3, p4

    :goto_3
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_4

    .line 12
    sget-object v4, Landroidx/compose/ui/text/input/o;->b:Landroidx/compose/ui/text/input/o$a;

    invoke-virtual {v4}, Landroidx/compose/ui/text/input/o$a;->a()I

    move-result v4

    goto :goto_4

    :cond_4
    move v4, p5

    :goto_4
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    move-object v5, p6

    :goto_5
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_6

    .line 13
    sget-object v6, Ln0/i;->c:Ln0/i$a;

    invoke-virtual {v6}, Ln0/i$a;->b()Ln0/i;

    move-result-object v6

    goto :goto_6

    :cond_6
    move-object v6, p7

    :goto_6
    const/4 v7, 0x0

    move-object p1, p0

    move p2, v0

    move p3, v1

    move p4, v2

    move p5, v3

    move p6, v4

    move-object p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    .line 14
    invoke-direct/range {p1 .. p9}, Landroidx/compose/ui/text/input/p;-><init>(ZIZIILandroidx/compose/ui/text/input/x;Ln0/i;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ZIZIILandroidx/compose/ui/text/input/x;Ln0/i;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Landroidx/compose/ui/text/input/p;-><init>(ZIZIILandroidx/compose/ui/text/input/x;Ln0/i;)V

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/ui/text/input/p;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/input/p;->i:Landroidx/compose/ui/text/input/p;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/p;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/input/p;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/input/p;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/input/p;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/input/p;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    iget-boolean v1, p0, Landroidx/compose/ui/text/input/p;->a:Z

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/ui/text/input/p;

    .line 14
    .line 15
    iget-boolean v3, p1, Landroidx/compose/ui/text/input/p;->a:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Landroidx/compose/ui/text/input/p;->b:I

    .line 21
    .line 22
    iget v3, p1, Landroidx/compose/ui/text/input/p;->b:I

    .line 23
    .line 24
    invoke-static {v1, v3}, Landroidx/compose/ui/text/input/t;->f(II)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-boolean v1, p0, Landroidx/compose/ui/text/input/p;->c:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Landroidx/compose/ui/text/input/p;->c:Z

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget v1, p0, Landroidx/compose/ui/text/input/p;->d:I

    .line 39
    .line 40
    iget v3, p1, Landroidx/compose/ui/text/input/p;->d:I

    .line 41
    .line 42
    invoke-static {v1, v3}, Landroidx/compose/ui/text/input/u;->k(II)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget v1, p0, Landroidx/compose/ui/text/input/p;->e:I

    .line 50
    .line 51
    iget v3, p1, Landroidx/compose/ui/text/input/p;->e:I

    .line 52
    .line 53
    invoke-static {v1, v3}, Landroidx/compose/ui/text/input/o;->l(II)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-object v1, p0, Landroidx/compose/ui/text/input/p;->f:Landroidx/compose/ui/text/input/x;

    .line 61
    .line 62
    iget-object v3, p1, Landroidx/compose/ui/text/input/p;->f:Landroidx/compose/ui/text/input/x;

    .line 63
    .line 64
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget-object v1, p0, Landroidx/compose/ui/text/input/p;->g:Ln0/i;

    .line 72
    .line 73
    iget-object p1, p1, Landroidx/compose/ui/text/input/p;->g:Ln0/i;

    .line 74
    .line 75
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    return v0
.end method

.method public final f()Landroidx/compose/ui/text/input/x;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/input/p;->f:Landroidx/compose/ui/text/input/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/p;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/input/p;->a:Z

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/e;->a(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/ui/text/input/p;->b:I

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/compose/ui/text/input/t;->g(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-boolean v1, p0, Landroidx/compose/ui/text/input/p;->c:Z

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Landroidx/compose/ui/text/input/p;->d:I

    .line 28
    .line 29
    invoke-static {v1}, Landroidx/compose/ui/text/input/u;->l(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget v1, p0, Landroidx/compose/ui/text/input/p;->e:I

    .line 37
    .line 38
    invoke-static {v1}, Landroidx/compose/ui/text/input/o;->m(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Landroidx/compose/ui/text/input/p;->f:Landroidx/compose/ui/text/input/x;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 55
    :goto_0
    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/compose/ui/text/input/p;->g:Ln0/i;

    .line 59
    .line 60
    invoke-virtual {v1}, Ln0/i;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v0, v1

    .line 65
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ImeOptions(singleLine="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Landroidx/compose/ui/text/input/p;->a:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", capitalization="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Landroidx/compose/ui/text/input/p;->b:I

    .line 22
    .line 23
    invoke-static {v1}, Landroidx/compose/ui/text/input/t;->h(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", autoCorrect="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-boolean v1, p0, Landroidx/compose/ui/text/input/p;->c:Z

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", keyboardType="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v1, p0, Landroidx/compose/ui/text/input/p;->d:I

    .line 46
    .line 47
    invoke-static {v1}, Landroidx/compose/ui/text/input/u;->m(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", imeAction="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v1, p0, Landroidx/compose/ui/text/input/p;->e:I

    .line 60
    .line 61
    invoke-static {v1}, Landroidx/compose/ui/text/input/o;->n(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", platformImeOptions="

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Landroidx/compose/ui/text/input/p;->f:Landroidx/compose/ui/text/input/x;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", hintLocales="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Landroidx/compose/ui/text/input/p;->g:Ln0/i;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/16 v1, 0x29

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0
.end method
