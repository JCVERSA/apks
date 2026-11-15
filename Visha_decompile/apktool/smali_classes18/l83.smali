.class public final Ll83;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll83$a;
    }
.end annotation


# static fields
.field public static final e:Ll83$a;

.field public static final f:[J


# instance fields
.field public final a:Lkotlinx/serialization/descriptors/a;

.field public final b:Ls74;

.field public c:J

.field public final d:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll83$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll83$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ll83;->e:Ll83$a;

    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Ll83;->f:[J

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/descriptors/a;Ls74;)V
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readIfAbsent"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll83;->a:Lkotlinx/serialization/descriptors/a;

    iput-object p2, p0, Ll83;->b:Ls74;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/a;->e()I

    move-result p1

    const-wide/16 v0, 0x0

    const/16 p2, 0x40

    if-gt p1, p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    shl-long/2addr v0, p1

    :goto_0
    iput-wide v0, p0, Ll83;->c:J

    sget-object p1, Ll83;->f:[J

    iput-object p1, p0, Ll83;->d:[J

    goto :goto_1

    :cond_1
    iput-wide v0, p0, Ll83;->c:J

    invoke-virtual {p0, p1}, Ll83;->e(I)[J

    move-result-object p1

    iput-object p1, p0, Ll83;->d:[J

    :goto_1
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    const/16 v0, 0x40

    if-ge p1, v0, :cond_0

    iget-wide v0, p0, Ll83;->c:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Ll83;->c:J

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ll83;->b(I)V

    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 5

    ushr-int/lit8 v0, p1, 0x6

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 p1, p1, 0x3f

    iget-object p0, p0, Ll83;->d:[J

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    or-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-void
.end method

.method public final c()I
    .locals 10

    iget-object v0, p0, Ll83;->d:[J

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v3, v2, 0x40

    iget-object v4, p0, Ll83;->d:[J

    aget-wide v4, v4, v1

    :cond_0
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    not-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v6

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v6

    or-long/2addr v4, v7

    add-int/2addr v6, v3

    iget-object v7, p0, Ll83;->b:Ls74;

    iget-object v8, p0, Ll83;->a:Lkotlinx/serialization/descriptors/a;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object p0, p0, Ll83;->d:[J

    aput-wide v4, p0, v1

    return v6

    :cond_1
    iget-object v3, p0, Ll83;->d:[J

    aput-wide v4, v3, v1

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final d()I
    .locals 6

    iget-object v0, p0, Ll83;->a:Lkotlinx/serialization/descriptors/a;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/a;->e()I

    move-result v0

    :cond_0
    iget-wide v1, p0, Ll83;->c:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    not-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    iget-wide v2, p0, Ll83;->c:J

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Ll83;->c:J

    iget-object v2, p0, Ll83;->b:Ls74;

    iget-object v3, p0, Ll83;->a:Lkotlinx/serialization/descriptors/a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ls74;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_1
    const/16 v1, 0x40

    if-le v0, v1, :cond_2

    invoke-virtual {p0}, Ll83;->c()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final e(I)[J
    .locals 3

    add-int/lit8 p0, p1, -0x1

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 v0, p1, 0x3f

    new-array p0, p0, [J

    if-eqz v0, :cond_0

    invoke-static {p0}, Lhi;->c0([J)I

    move-result v0

    const-wide/16 v1, -0x1

    shl-long/2addr v1, p1

    aput-wide v1, p0, v0

    :cond_0
    return-object p0
.end method
