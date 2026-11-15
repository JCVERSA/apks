.class public Lx40;
.super Lt40;
.source "SourceFile"


# instance fields
.field public d:[B


# direct methods
.method public constructor <init>(Lv40;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lt40;-><init>(ZLv40;)V

    invoke-static {p2}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lx40;->d:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 0

    iget-object p0, p0, Lx40;->d:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method
