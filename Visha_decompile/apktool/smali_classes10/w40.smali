.class public Lw40;
.super Lt40;
.source "SourceFile"


# instance fields
.field public d:[B

.field public e:[B

.field public f:[B


# direct methods
.method public constructor <init>(Lv40;[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lt40;-><init>(ZLv40;)V

    invoke-static {p2}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lw40;->d:[B

    invoke-static {p3}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lw40;->e:[B

    invoke-static {p4}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lw40;->f:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lw40;->d:[B

    iget-object v1, p0, Lw40;->e:[B

    iget-object p0, p0, Lw40;->f:[B

    invoke-static {v0, v1, p0}, Lci;->l([B[B[B)[B

    move-result-object p0

    return-object p0
.end method
