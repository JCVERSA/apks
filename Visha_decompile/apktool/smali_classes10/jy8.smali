.class public Ljy8;
.super Lfy8;
.source "SourceFile"


# instance fields
.field public final d:[B


# direct methods
.method public constructor <init>(Lhy8;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lfy8;-><init>(ZLhy8;)V

    invoke-static {p2}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Ljy8;->d:[B

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 0

    iget-object p0, p0, Ljy8;->d:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method
