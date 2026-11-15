.class public final Lju7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lex7;
.implements Lgx7;


# instance fields
.field public final a:Lex7;


# direct methods
.method public constructor <init>(Lex7;)V
    .locals 1

    const-string v0, "baseContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lju7;->a:Lex7;

    return-void
.end method


# virtual methods
.method public a()Lkga;
    .locals 0

    iget-object p0, p0, Lju7;->a:Lex7;

    invoke-interface {p0}, Lex7;->a()Lkga;

    move-result-object p0

    return-object p0
.end method

.method public b()Lex7;
    .locals 0

    iget-object p0, p0, Lju7;->a:Lex7;

    return-object p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLogger()Llx7;
    .locals 0

    iget-object p0, p0, Lju7;->a:Lex7;

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    return-object p0
.end method
