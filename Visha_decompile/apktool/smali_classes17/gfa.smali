.class public interface abstract Lgfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw92;


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lgfa;->a(Lex7;Ljava/lang/Object;)Lza3;

    move-result-object p0

    return-object p0
.end method

.method public a(Lex7;Ljava/lang/Object;)Lza3;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, v0, p2}, Lgfa;->c(Lex7;Lza3;Ljava/lang/Object;)Lza3;

    move-result-object p0

    return-object p0
.end method

.method public abstract c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
.end method
