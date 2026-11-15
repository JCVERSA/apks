.class public Lzw6;
.super Ldj;
.source "SourceFile"


# instance fields
.field public final c:[S


# direct methods
.method public constructor <init>([S)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldj;-><init>(Z)V

    invoke-static {p1}, Lci;->j([S)[S

    move-result-object p1

    iput-object p1, p0, Lzw6;->c:[S

    return-void
.end method


# virtual methods
.method public b()[S
    .locals 0

    iget-object p0, p0, Lzw6;->c:[S

    invoke-static {p0}, Lci;->j([S)[S

    move-result-object p0

    return-object p0
.end method
