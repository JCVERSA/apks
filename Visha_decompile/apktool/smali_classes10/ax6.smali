.class public Lax6;
.super Ldj;
.source "SourceFile"


# instance fields
.field public final c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldj;-><init>(Z)V

    invoke-static {p1}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lax6;->c:[B

    return-void
.end method


# virtual methods
.method public b()[B
    .locals 0

    iget-object p0, p0, Lax6;->c:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method
