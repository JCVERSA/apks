.class public Lsx6;
.super Lox6;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:[B


# direct methods
.method public constructor <init>(Lqx6;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lox6;-><init>(ZLqx6;)V

    const/16 p1, 0x20

    invoke-static {p2, v0, p1}, Lci;->q([BII)[B

    move-result-object p1

    iput-object p1, p0, Lsx6;->d:[B

    array-length p1, p1

    array-length v0, p2

    invoke-static {p2, p1, v0}, Lci;->q([BII)[B

    move-result-object p1

    iput-object p1, p0, Lsx6;->e:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 4

    invoke-virtual {p0}, Lox6;->b()Lqx6;

    move-result-object v0

    invoke-virtual {v0}, Lqx6;->c()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lsx6;->d:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lsx6;->e:[B

    iget-object p0, p0, Lsx6;->d:[B

    array-length p0, p0

    array-length v2, v1

    invoke-static {v1, v3, v0, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
