.class public Lkotlin/ranges/ULongProgression;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/ranges/ULongProgression$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lkotlin/ULong;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010(\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0017\u0018\u0000 #2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001$B!\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0086\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0096\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u001d\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010 \u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001a\u001a\u0004\u0008\u001f\u0010\u001cR\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001a\u001a\u0004\u0008\"\u0010\u001c\u00a8\u0006%"
    }
    d2 = {
        "Lkotlin/ranges/ULongProgression;",
        "",
        "Lkotlin/ULong;",
        "start",
        "endInclusive",
        "",
        "step",
        "<init>",
        "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "iterator",
        "()Ljava/util/Iterator;",
        "",
        "isEmpty",
        "()Z",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "",
        "toString",
        "()Ljava/lang/String;",
        "a",
        "J",
        "f",
        "()J",
        "first",
        "b",
        "i",
        "last",
        "c",
        "getStep",
        "d",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/SinceKotlin;
.end annotation

.annotation build Lkotlin/WasExperimental;
.end annotation


# static fields
.field public static final d:Lkotlin/ranges/ULongProgression$Companion;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/ranges/ULongProgression$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/ranges/ULongProgression$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/ranges/ULongProgression;->d:Lkotlin/ranges/ULongProgression$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(JJJ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p5, v0

    if-eqz v0, :cond_0

    .line 3
    iput-wide p1, p0, Lkotlin/ranges/ULongProgression;->a:J

    .line 4
    invoke-static/range {p1 .. p6}, Lkotlin/internal/UProgressionUtilKt;->c(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lkotlin/ranges/ULongProgression;->b:J

    .line 5
    iput-wide p5, p0, Lkotlin/ranges/ULongProgression;->c:J

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be greater than Long.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Step must be non-zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lkotlin/ranges/ULongProgression;-><init>(JJJ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lkotlin/ranges/ULongProgression;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    check-cast v0, Lkotlin/ranges/ULongProgression;

    .line 13
    .line 14
    invoke-virtual {v0}, Lkotlin/ranges/ULongProgression;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :cond_0
    iget-wide v0, p0, Lkotlin/ranges/ULongProgression;->a:J

    .line 21
    .line 22
    check-cast p1, Lkotlin/ranges/ULongProgression;

    .line 23
    .line 24
    iget-wide v2, p1, Lkotlin/ranges/ULongProgression;->a:J

    .line 25
    .line 26
    cmp-long v0, v0, v2

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-wide v0, p0, Lkotlin/ranges/ULongProgression;->b:J

    .line 31
    .line 32
    iget-wide v2, p1, Lkotlin/ranges/ULongProgression;->b:J

    .line 33
    .line 34
    cmp-long v0, v0, v2

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-wide v0, p0, Lkotlin/ranges/ULongProgression;->c:J

    .line 39
    .line 40
    iget-wide v2, p1, Lkotlin/ranges/ULongProgression;->c:J

    .line 41
    .line 42
    cmp-long p1, v0, v2

    .line 43
    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    :cond_1
    const/4 p1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 p1, 0x0

    .line 49
    :goto_0
    return p1
.end method

.method public final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/ranges/ULongProgression;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lkotlin/ranges/ULongProgression;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-wide v0, p0, Lkotlin/ranges/ULongProgression;->a:J

    .line 10
    .line 11
    const/16 v2, 0x20

    .line 12
    .line 13
    ushr-long v3, v0, v2

    .line 14
    .line 15
    invoke-static {v3, v4}, Lkotlin/ULong;->b(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    xor-long/2addr v0, v3

    .line 20
    invoke-static {v0, v1}, Lkotlin/ULong;->b(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    long-to-int v0, v0

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-wide v3, p0, Lkotlin/ranges/ULongProgression;->b:J

    .line 28
    .line 29
    ushr-long v5, v3, v2

    .line 30
    .line 31
    invoke-static {v5, v6}, Lkotlin/ULong;->b(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    xor-long/2addr v3, v5

    .line 36
    invoke-static {v3, v4}, Lkotlin/ULong;->b(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    long-to-int v1, v3

    .line 41
    add-int/2addr v0, v1

    .line 42
    mul-int/lit8 v0, v0, 0x1f

    .line 43
    .line 44
    iget-wide v3, p0, Lkotlin/ranges/ULongProgression;->c:J

    .line 45
    .line 46
    ushr-long v1, v3, v2

    .line 47
    .line 48
    xor-long/2addr v1, v3

    .line 49
    long-to-int v1, v1

    .line 50
    add-int/2addr v0, v1

    .line 51
    :goto_0
    return v0
.end method

.method public final i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lkotlin/ranges/ULongProgression;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isEmpty()Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lkotlin/ranges/ULongProgression;->c:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    iget-wide v3, p0, Lkotlin/ranges/ULongProgression;->a:J

    .line 10
    .line 11
    iget-wide v5, p0, Lkotlin/ranges/ULongProgression;->b:J

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    invoke-static {v3, v4, v5, v6}, Landroidx/collection/b0;->a(JJ)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    :goto_0
    move v1, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-static {v3, v4, v5, v6}, Landroidx/collection/b0;->a(JJ)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-gez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 9

    .line 1
    new-instance v8, Lkotlin/ranges/g;

    .line 2
    .line 3
    iget-wide v1, p0, Lkotlin/ranges/ULongProgression;->a:J

    .line 4
    .line 5
    iget-wide v3, p0, Lkotlin/ranges/ULongProgression;->b:J

    .line 6
    .line 7
    iget-wide v5, p0, Lkotlin/ranges/ULongProgression;->c:J

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    move-object v0, v8

    .line 11
    invoke-direct/range {v0 .. v7}, Lkotlin/ranges/g;-><init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lkotlin/ranges/ULongProgression;->c:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const-string v1, " step "

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-wide v2, p0, Lkotlin/ranges/ULongProgression;->a:J

    .line 17
    .line 18
    invoke-static {v2, v3}, Lkotlin/ULong;->g(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ".."

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-wide v2, p0, Lkotlin/ranges/ULongProgression;->b:J

    .line 31
    .line 32
    invoke-static {v2, v3}, Lkotlin/ULong;->g(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-wide v1, p0, Lkotlin/ranges/ULongProgression;->c:J

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-wide v2, p0, Lkotlin/ranges/ULongProgression;->a:J

    .line 58
    .line 59
    invoke-static {v2, v3}, Lkotlin/ULong;->g(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, " downTo "

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-wide v2, p0, Lkotlin/ranges/ULongProgression;->b:J

    .line 72
    .line 73
    invoke-static {v2, v3}, Lkotlin/ULong;->g(J)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-wide v1, p0, Lkotlin/ranges/ULongProgression;->c:J

    .line 84
    .line 85
    neg-long v1, v1

    .line 86
    goto :goto_0

    .line 87
    :goto_1
    return-object v0
.end method
