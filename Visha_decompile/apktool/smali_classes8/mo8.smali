.class public Lmo8;
.super Lnp1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ls0;)V
    .locals 1

    invoke-virtual {p1}, Ls0;->x()[B

    move-result-object v0

    invoke-virtual {p1}, Ls0;->i()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lnp1;-><init>([BI)V

    return-void
.end method
