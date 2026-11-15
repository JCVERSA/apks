.class public final Luc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lex7;
.implements Lgx7;


# instance fields
.field public final a:Lex7;

.field public final b:Ljava/util/List;

.field public final c:Llx7;


# direct methods
.method public constructor <init>(Lex7;)V
    .locals 1

    const-string v0, "baseContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luc3;->a:Lex7;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Luc3;->b:Ljava/util/List;

    new-instance p1, Ltc3;

    invoke-direct {p1, p0}, Ltc3;-><init>(Luc3;)V

    iput-object p1, p0, Luc3;->c:Llx7;

    return-void
.end method

.method public static synthetic d(Luc3;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Luc3;->f(Luc3;Ljava/lang/Exception;)V

    return-void
.end method

.method public static final f(Luc3;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Luc3;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Luc3;->b()Lex7;

    move-result-object p0

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public a()Lkga;
    .locals 0

    iget-object p0, p0, Luc3;->a:Lex7;

    invoke-interface {p0}, Lex7;->a()Lkga;

    move-result-object p0

    return-object p0
.end method

.method public b()Lex7;
    .locals 0

    iget-object p0, p0, Luc3;->a:Lex7;

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-object p0, p0, Luc3;->a:Lex7;

    invoke-interface {p0}, Lex7;->c()Z

    move-result p0

    return p0
.end method

.method public final e()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Luc3;->b:Ljava/util/List;

    return-object p0
.end method

.method public getLogger()Llx7;
    .locals 0

    iget-object p0, p0, Luc3;->c:Llx7;

    return-object p0
.end method
