.class public final Ly91;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly91$a;
    }
.end annotation


# static fields
.field public static final c:Ly91$a;

.field public static final d:Ly91;


# instance fields
.field public final a:[I

.field public final b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ly91$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly91$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ly91;->c:Ly91$a;

    new-instance v0, Ly91;

    const/4 v2, 0x0

    new-array v2, v2, [I

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3, v1}, Ly91;-><init>([I[FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ly91;->d:Ly91;

    return-void
.end method

.method public constructor <init>([I[F)V
    .locals 1

    const-string v0, "colors"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly91;->a:[I

    .line 3
    iput-object p2, p0, Ly91;->b:[F

    .line 4
    array-length p0, p1

    if-eqz p2, :cond_0

    array-length p1, p2

    goto :goto_0

    :cond_0
    array-length p1, p1

    :goto_0
    if-ne p0, p1, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>([I[FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Ly91;-><init>([I[F)V

    return-void
.end method


# virtual methods
.method public final a()[I
    .locals 0

    iget-object p0, p0, Ly91;->a:[I

    return-object p0
.end method

.method public final b()[F
    .locals 0

    iget-object p0, p0, Ly91;->b:[F

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Ly91;

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.yandex.div.internal.graphics.Colormap"

    invoke-static {p1, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ly91;

    iget-object v1, p0, Ly91;->a:[I

    iget-object v3, p1, Ly91;->a:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Ly91;->b:[F

    iget-object p1, p1, Ly91;->b:[F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ly91;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ly91;->b:[F

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method
