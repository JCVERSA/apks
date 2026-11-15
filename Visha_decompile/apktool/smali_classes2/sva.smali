.class public final Lsva;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[Lls8;

.field public final c:[Lqi3;

.field public final d:Lcom/google/android/exoplayer2/b0;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lls8;[Lqi3;Lcom/google/android/exoplayer2/b0;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsva;->b:[Lls8;

    invoke-virtual {p2}, [Lqi3;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lqi3;

    iput-object p2, p0, Lsva;->c:[Lqi3;

    iput-object p3, p0, Lsva;->d:Lcom/google/android/exoplayer2/b0;

    iput-object p4, p0, Lsva;->e:Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lsva;->a:I

    return-void
.end method


# virtual methods
.method public a(Lsva;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lsva;->c:[Lqi3;

    array-length v1, v1

    iget-object v2, p0, Lsva;->c:[Lqi3;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lsva;->c:[Lqi3;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, p1, v1}, Lsva;->b(Lsva;I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public b(Lsva;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lsva;->b:[Lls8;

    aget-object v1, v1, p2

    iget-object v2, p1, Lsva;->b:[Lls8;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lsva;->c:[Lqi3;

    aget-object p0, p0, p2

    iget-object p1, p1, Lsva;->c:[Lqi3;

    aget-object p1, p1, p2

    invoke-static {p0, p1}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public c(I)Z
    .locals 0

    iget-object p0, p0, Lsva;->b:[Lls8;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
