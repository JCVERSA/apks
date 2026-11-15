.class public abstract Led1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lsc5;Lu95;)Lad1;
    .locals 1

    const-string v0, "sb"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ldd1;

    invoke-direct {v0, p0, p1}, Ldd1;-><init>(Lsc5;Lu95;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lad1;

    invoke-direct {v0, p0}, Lad1;-><init>(Lsc5;)V

    :goto_0
    return-object v0
.end method
