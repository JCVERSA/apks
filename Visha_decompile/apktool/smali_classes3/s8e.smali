.class public final Ls8e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrae;


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Ls8e;->a:[B

    return-void
.end method


# virtual methods
.method public final synthetic a(Lk8j;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lpae;->a(Lrae;Lk8j;IZ)I

    move-result p0

    return p0
.end method

.method public final b(Lu4h;II)V
    .locals 0

    invoke-virtual {p1, p2}, Lu4h;->m(I)V

    return-void
.end method

.method public final synthetic c(J)V
    .locals 0

    return-void
.end method

.method public final synthetic d(Lu4h;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lpae;->b(Lrae;Lu4h;I)V

    return-void
.end method

.method public final e(Lk8j;IZI)I
    .locals 0

    iget-object p0, p0, Ls8e;->a:[B

    const/16 p4, 0x1000

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p4, 0x0

    invoke-interface {p1, p0, p4, p2}, Lk8j;->b([BII)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    if-eqz p3, :cond_0

    return p1

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return p0
.end method

.method public final f(Lerj;)V
    .locals 0

    return-void
.end method

.method public final g(JIIILqae;)V
    .locals 0

    return-void
.end method
