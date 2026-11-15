.class public final Luh0;
.super Lbf8;
.source "SourceFile"


# instance fields
.field public a:[Z

.field public b:I


# direct methods
.method public constructor <init>([Z)V
    .locals 1

    const-string v0, "bufferWithData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lbf8;-><init>()V

    iput-object p1, p0, Luh0;->a:[Z

    array-length p1, p1

    iput p1, p0, Luh0;->b:I

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Luh0;->b(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Luh0;->f()[Z

    move-result-object p0

    return-object p0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Luh0;->a:[Z

    array-length v1, v0

    if-ge v1, p1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Lwn8;->d(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Luh0;->a:[Z

    :cond_0
    return-void
.end method

.method public d()I
    .locals 0

    iget p0, p0, Luh0;->b:I

    return p0
.end method

.method public final e(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lbf8;->c(Lbf8;IILjava/lang/Object;)V

    iget-object v0, p0, Luh0;->a:[Z

    invoke-virtual {p0}, Luh0;->d()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Luh0;->b:I

    aput-boolean p1, v0, v1

    return-void
.end method

.method public f()[Z
    .locals 1

    iget-object v0, p0, Luh0;->a:[Z

    invoke-virtual {p0}, Luh0;->d()I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p0

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
