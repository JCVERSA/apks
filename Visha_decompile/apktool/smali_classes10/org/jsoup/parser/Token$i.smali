.class public abstract Lorg/jsoup/parser/Token$i;
.super Lorg/jsoup/parser/Token;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/StringBuilder;

.field public e:Ljava/lang/String;

.field public f:Z

.field public final g:Ljava/lang/StringBuilder;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lorg/jsoup/nodes/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->f:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->i:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->j:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->k:Z

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final B()Z
    .locals 0

    iget-boolean p0, p0, Lorg/jsoup/parser/Token$i;->k:Z

    return p0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ldnb;->b(Z)V

    iget-object p0, p0, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final D(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    invoke-static {p1}, Lv17;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Token$i;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final E()V
    .locals 4

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jsoup/nodes/b;

    invoke-direct {v0}, Lorg/jsoup/nodes/b;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$i;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->size()I

    move-result v0

    const/16 v2, 0x200

    if-ge v0, v2, :cond_5

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->e:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    iget-boolean v2, p0, Lorg/jsoup/parser/Token$i;->i:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/jsoup/parser/Token$i;->h:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lorg/jsoup/parser/Token$i;->j:Z

    if-eqz v2, :cond_4

    const-string v2, ""

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    iget-object v3, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v3, v0, v2}, Lorg/jsoup/nodes/b;->j(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    :cond_5
    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token;->n(Ljava/lang/StringBuilder;)V

    iput-object v1, p0, Lorg/jsoup/parser/Token$i;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->f:Z

    iget-object v2, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jsoup/parser/Token;->n(Ljava/lang/StringBuilder;)V

    iput-object v1, p0, Lorg/jsoup/parser/Token$i;->h:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->i:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->j:Z

    return-void
.end method

.method public final F()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/Token$i;->c:Ljava/lang/String;

    return-object p0
.end method

.method public G()Lorg/jsoup/parser/Token$i;
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->c:Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/jsoup/parser/Token;->n(Ljava/lang/StringBuilder;)V

    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->e:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$i;->f:Z

    iget-object v2, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jsoup/parser/Token;->n(Ljava/lang/StringBuilder;)V

    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$i;->j:Z

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$i;->i:Z

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$i;->k:Z

    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    return-object p0
.end method

.method public final H()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->j:Z

    return-void
.end method

.method public final I()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "[unset]"

    :goto_0
    return-object p0
.end method

.method public bridge synthetic m()Lorg/jsoup/parser/Token;
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$i;->G()Lorg/jsoup/parser/Token$i;

    move-result-object p0

    return-object p0
.end method

.method public final p(C)V
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$i;->w()V

    iget-object p0, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0xfffd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$i;->w()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jsoup/parser/Token$i;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public final r(C)V
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$i;->x()V

    iget-object p0, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$i;->x()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jsoup/parser/Token$i;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public final t([I)V
    .locals 4

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$i;->x()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    iget-object v3, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$i;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0xfffd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    invoke-static {p1}, Lv17;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Token$i;->c:Ljava/lang/String;

    return-void
.end method

.method public final w()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->f:Z

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jsoup/parser/Token$i;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$i;->i:Z

    iget-object v0, p0, Lorg/jsoup/parser/Token$i;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jsoup/parser/Token$i;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$i;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final y()V
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/Token$i;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$i;->E()V

    :cond_0
    return-void
.end method

.method public final z(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/b;->s(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
