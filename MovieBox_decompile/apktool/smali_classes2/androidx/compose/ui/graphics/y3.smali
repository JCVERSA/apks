.class public abstract Landroidx/compose/ui/graphics/y3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/y3$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/graphics/y3$a;

.field private static final b:S

.field private static final c:S

.field private static final d:S

.field private static final e:S

.field private static final f:S

.field private static final g:S

.field private static final h:S

.field private static final i:S

.field private static final j:S

.field private static final k:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/y3$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/y3$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/graphics/y3;->a:Landroidx/compose/ui/graphics/y3$a;

    .line 8
    .line 9
    const/16 v0, 0x1400

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/ui/graphics/y3;->b(S)S

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput-short v0, Landroidx/compose/ui/graphics/y3;->b:S

    .line 16
    .line 17
    const/16 v0, -0x401

    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/ui/graphics/y3;->b(S)S

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput-short v0, Landroidx/compose/ui/graphics/y3;->c:S

    .line 24
    .line 25
    const/16 v0, 0x7bff

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/compose/ui/graphics/y3;->b(S)S

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput-short v0, Landroidx/compose/ui/graphics/y3;->d:S

    .line 32
    .line 33
    const/16 v0, 0x400

    .line 34
    .line 35
    invoke-static {v0}, Landroidx/compose/ui/graphics/y3;->b(S)S

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sput-short v0, Landroidx/compose/ui/graphics/y3;->e:S

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-static {v0}, Landroidx/compose/ui/graphics/y3;->b(S)S

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sput-short v0, Landroidx/compose/ui/graphics/y3;->f:S

    .line 47
    .line 48
    const/16 v0, 0x7e00

    .line 49
    .line 50
    invoke-static {v0}, Landroidx/compose/ui/graphics/y3;->b(S)S

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    sput-short v0, Landroidx/compose/ui/graphics/y3;->g:S

    .line 55
    .line 56
    const/16 v0, -0x400

    .line 57
    .line 58
    invoke-static {v0}, Landroidx/compose/ui/graphics/y3;->b(S)S

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    sput-short v0, Landroidx/compose/ui/graphics/y3;->h:S

    .line 63
    .line 64
    const/16 v0, -0x8000

    .line 65
    .line 66
    invoke-static {v0}, Landroidx/compose/ui/graphics/y3;->b(S)S

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    sput-short v0, Landroidx/compose/ui/graphics/y3;->i:S

    .line 71
    .line 72
    const/16 v0, 0x7c00

    .line 73
    .line 74
    invoke-static {v0}, Landroidx/compose/ui/graphics/y3;->b(S)S

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    sput-short v0, Landroidx/compose/ui/graphics/y3;->j:S

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-static {v0}, Landroidx/compose/ui/graphics/y3;->b(S)S

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    sput-short v0, Landroidx/compose/ui/graphics/y3;->k:S

    .line 86
    .line 87
    return-void
.end method

.method public static a(F)S
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    ushr-int/lit8 v0, p0, 0x1f

    .line 6
    .line 7
    ushr-int/lit8 v1, p0, 0x17

    .line 8
    .line 9
    const/16 v2, 0xff

    .line 10
    .line 11
    and-int/2addr v1, v2

    .line 12
    const v3, 0x7fffff

    .line 13
    .line 14
    .line 15
    and-int/2addr v3, p0

    .line 16
    const/16 v4, 0x1f

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    if-eqz v3, :cond_6

    .line 22
    .line 23
    const/16 v5, 0x200

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v1, v1, -0x70

    .line 27
    .line 28
    if-lt v1, v4, :cond_1

    .line 29
    .line 30
    const/16 v4, 0x31

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    if-gtz v1, :cond_4

    .line 34
    .line 35
    const/16 p0, -0xa

    .line 36
    .line 37
    if-lt v1, p0, :cond_3

    .line 38
    .line 39
    const/high16 p0, 0x800000

    .line 40
    .line 41
    or-int/2addr p0, v3

    .line 42
    rsub-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    shr-int/2addr p0, v1

    .line 45
    and-int/lit16 v1, p0, 0x1000

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    add-int/lit16 p0, p0, 0x2000

    .line 50
    .line 51
    :cond_2
    shr-int/lit8 p0, p0, 0xd

    .line 52
    .line 53
    move v4, v5

    .line 54
    move v5, p0

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move v4, v5

    .line 57
    goto :goto_1

    .line 58
    :cond_4
    shr-int/lit8 v5, v3, 0xd

    .line 59
    .line 60
    and-int/lit16 p0, p0, 0x1000

    .line 61
    .line 62
    if-eqz p0, :cond_5

    .line 63
    .line 64
    shl-int/lit8 p0, v1, 0xa

    .line 65
    .line 66
    or-int/2addr p0, v5

    .line 67
    add-int/lit8 p0, p0, 0x1

    .line 68
    .line 69
    shl-int/lit8 v0, v0, 0xf

    .line 70
    .line 71
    or-int/2addr p0, v0

    .line 72
    :goto_0
    int-to-short p0, p0

    .line 73
    goto :goto_2

    .line 74
    :cond_5
    move v4, v1

    .line 75
    :cond_6
    :goto_1
    shl-int/lit8 p0, v0, 0xf

    .line 76
    .line 77
    shl-int/lit8 v0, v4, 0xa

    .line 78
    .line 79
    or-int/2addr p0, v0

    .line 80
    or-int/2addr p0, v5

    .line 81
    goto :goto_0

    .line 82
    :goto_2
    invoke-static {p0}, Landroidx/compose/ui/graphics/y3;->b(S)S

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    return p0
.end method

.method public static b(S)S
    .locals 0

    .line 1
    return p0
.end method
