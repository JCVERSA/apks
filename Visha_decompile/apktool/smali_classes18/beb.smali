.class public final Lbeb;
.super Lbf8;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const-string v0, "bufferWithData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lbf8;-><init>()V

    .line 3
    iput-object p1, p0, Lbeb;->a:[B

    .line 4
    invoke-static {p1}, Laeb;->q([B)I

    move-result p1

    iput p1, p0, Lbeb;->b:I

    const/16 p1, 0xa

    .line 5
    invoke-virtual {p0, p1}, Lbeb;->b(I)V

    return-void
.end method

.method public synthetic constructor <init>([BLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbeb;-><init>([B)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lbeb;->f()[B

    move-result-object p0

    invoke-static {p0}, Laeb;->b([B)Laeb;

    move-result-object p0

    return-object p0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lbeb;->a:[B

    invoke-static {v0}, Laeb;->q([B)I

    move-result v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lbeb;->a:[B

    invoke-static {v0}, Laeb;->q([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Lwn8;->d(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Laeb;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lbeb;->a:[B

    :cond_0
    return-void
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lbeb;->b:I

    return p0
.end method

.method public final e(B)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lbf8;->c(Lbf8;IILjava/lang/Object;)V

    iget-object v0, p0, Lbeb;->a:[B

    invoke-virtual {p0}, Lbeb;->d()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbeb;->b:I

    invoke-static {v0, v1, p1}, Laeb;->u([BIB)V

    return-void
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lbeb;->a:[B

    invoke-virtual {p0}, Lbeb;->d()I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Laeb;->f([B)[B

    move-result-object p0

    return-object p0
.end method
