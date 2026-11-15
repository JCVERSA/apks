.class public Lex9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lfx9;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfx9;

    invoke-direct {v0}, Lfx9;-><init>()V

    iput-object v0, p0, Lex9;->a:Lfx9;

    invoke-virtual {v0, p1}, Lfx9;->k(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lcl4;->f()Lcl4;

    move-result-object v0

    iget-object p0, p0, Lex9;->a:Lfx9;

    invoke-virtual {v0, p0}, Lcl4;->i(Lfx9;)V

    return-void
.end method

.method public b(Z)Lex9;
    .locals 1

    iget-object v0, p0, Lex9;->a:Lfx9;

    invoke-virtual {v0, p1}, Lfx9;->j(Z)V

    return-object p0
.end method

.method public c(Z)Lex9;
    .locals 1

    iget-object v0, p0, Lex9;->a:Lfx9;

    invoke-virtual {v0, p1}, Lfx9;->l(Z)V

    return-object p0
.end method

.method public d(J)Lex9;
    .locals 1

    iget-object v0, p0, Lex9;->a:Lfx9;

    invoke-virtual {v0, p1, p2}, Lfx9;->m(J)V

    return-object p0
.end method

.method public e(Z)Lex9;
    .locals 1

    iget-object v0, p0, Lex9;->a:Lfx9;

    invoke-virtual {v0, p1}, Lfx9;->n(Z)V

    return-object p0
.end method

.method public f(I)Lex9;
    .locals 1

    iget-object v0, p0, Lex9;->a:Lfx9;

    invoke-virtual {v0, p1}, Lfx9;->p(I)V

    return-object p0
.end method

.method public g(I)Lex9;
    .locals 1

    iget-object v0, p0, Lex9;->a:Lfx9;

    invoke-virtual {v0, p1}, Lfx9;->q(I)V

    return-object p0
.end method

.method public h(Lcl4$e;)Lex9;
    .locals 1

    invoke-static {}, Lcl4;->f()Lcl4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcl4;->q(Lcl4$e;)V

    return-object p0
.end method
