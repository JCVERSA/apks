.class public final Lz95;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Z

.field public m:Ltd9;


# direct methods
.method public constructor <init>(Lu95;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->e()Z

    move-result v0

    iput-boolean v0, p0, Lz95;->a:Z

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->f()Z

    move-result v0

    iput-boolean v0, p0, Lz95;->b:Z

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->g()Z

    move-result v0

    iput-boolean v0, p0, Lz95;->c:Z

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->m()Z

    move-result v0

    iput-boolean v0, p0, Lz95;->d:Z

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->b()Z

    move-result v0

    iput-boolean v0, p0, Lz95;->e:Z

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->i()Z

    move-result v0

    iput-boolean v0, p0, Lz95;->f:Z

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz95;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->d()Z

    move-result v0

    iput-boolean v0, p0, Lz95;->h:Z

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->l()Z

    move-result v0

    iput-boolean v0, p0, Lz95;->i:Z

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz95;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->a()Z

    move-result v0

    iput-boolean v0, p0, Lz95;->k:Z

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->k()Z

    move-result v0

    iput-boolean v0, p0, Lz95;->l:Z

    invoke-virtual {p1}, Lu95;->d()Lda5;

    move-result-object v0

    invoke-virtual {v0}, Lda5;->h()Lab5;

    invoke-virtual {p1}, Lu95;->a()Ltd9;

    move-result-object p1

    iput-object p1, p0, Lz95;->m:Ltd9;

    return-void
.end method


# virtual methods
.method public final a()Lda5;
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lz95;->i:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lz95;->j:Ljava/lang/String;

    const-string v2, "type"

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class discriminator should not be specified when array polymorphism is specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-boolean v1, v0, Lz95;->f:Z

    const-string v2, "    "

    if-nez v1, :cond_3

    iget-object v1, v0, Lz95;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Indent should not be specified when default printing mode is used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, v0, Lz95;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lz95;->g:Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_5

    const/16 v4, 0x9

    if-eq v3, v4, :cond_5

    const/16 v4, 0xd

    if-eq v3, v4, :cond_5

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lz95;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    new-instance v1, Lda5;

    iget-boolean v4, v0, Lz95;->a:Z

    iget-boolean v5, v0, Lz95;->c:Z

    iget-boolean v6, v0, Lz95;->d:Z

    iget-boolean v7, v0, Lz95;->e:Z

    iget-boolean v8, v0, Lz95;->f:Z

    iget-boolean v9, v0, Lz95;->b:Z

    iget-object v10, v0, Lz95;->g:Ljava/lang/String;

    iget-boolean v11, v0, Lz95;->h:Z

    iget-boolean v12, v0, Lz95;->i:Z

    iget-object v13, v0, Lz95;->j:Ljava/lang/String;

    iget-boolean v14, v0, Lz95;->k:Z

    iget-boolean v15, v0, Lz95;->l:Z

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lda5;-><init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZLab5;)V

    return-object v1
.end method

.method public final b()Ltd9;
    .locals 0

    iget-object p0, p0, Lz95;->m:Ltd9;

    return-object p0
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lz95;->a:Z

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lz95;->b:Z

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lz95;->c:Z

    return-void
.end method
