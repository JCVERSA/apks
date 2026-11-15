.class public abstract Lfx7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lex7;)Lex7;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Luc3;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Luc3;

    invoke-direct {v0, p0}, Luc3;-><init>(Lex7;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final b(Lex7;)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Luc3;

    if-eqz v0, :cond_0

    check-cast p0, Luc3;

    invoke-virtual {p0}, Luc3;->e()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lgx7;

    if-eqz v0, :cond_1

    check-cast p0, Lgx7;

    invoke-interface {p0}, Lgx7;->b()Lex7;

    move-result-object p0

    invoke-static {p0}, Lfx7;->b(Lex7;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final c(Lex7;)Lex7;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lju7;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lju7;

    invoke-direct {v0, p0}, Lju7;-><init>(Lex7;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
