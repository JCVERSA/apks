.class public Lsv5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Lpv5;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsv5;->a:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lsv5;->d:I

    iput v0, p0, Lsv5;->e:I

    iput v0, p0, Lsv5;->f:I

    iput v0, p0, Lsv5;->g:I

    iput v0, p0, Lsv5;->h:I

    iput v0, p0, Lsv5;->i:I

    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Lsv5;
    .locals 6

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object p0, Lrv5;->j:Ljava/util/regex/Pattern;

    invoke-static {p1, p0}, Law5;->m(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lrv5;->k:Ljava/util/regex/Pattern;

    invoke-static {p1, v0}, Law5;->m(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lrv5;->l:Ljava/util/regex/Pattern;

    invoke-static {p1, v1}, Law5;->m(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lrv5;->m:Ljava/util/regex/Pattern;

    invoke-static {p1, v2}, Law5;->m(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lrv5;->n:Ljava/util/regex/Pattern;

    invoke-static {p1, v3}, Law5;->m(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lrv5;->o:Ljava/util/regex/Pattern;

    invoke-static {p1, v4}, Law5;->m(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lsv5;

    invoke-direct {v4}, Lsv5;-><init>()V

    const/4 v5, -0x1

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v4, Lsv5;->h:I

    goto :goto_0

    :cond_1
    iput v5, v4, Lsv5;->h:I

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v4, Lsv5;->f:I

    goto :goto_1

    :cond_2
    iput v5, v4, Lsv5;->f:I

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v4, Lsv5;->g:I

    goto :goto_2

    :cond_3
    iput v5, v4, Lsv5;->g:I

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lsv5;->b:Ljava/lang/String;

    :cond_4
    if-eqz v2, :cond_5

    const-string p0, "x"

    invoke-virtual {v2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p1, p0, p1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v4, Lsv5;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v4, Lsv5;->e:I

    :cond_5
    if-eqz v3, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v4, Lsv5;->i:I

    :cond_6
    return-object v4

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lsv5;->g:I

    return p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lsv5;->f:I

    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsv5;->k:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsv5;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lsv5;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ".mp3"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lsv5;->m()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, ".aac"

    return-object p0

    :cond_1
    const-string p0, ".mp4"

    return-object p0
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Lsv5;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lsv5;->e:I

    :goto_0
    return p0
.end method

.method public h()Lpv5;
    .locals 0

    iget-object p0, p0, Lsv5;->j:Lpv5;

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsv5;->m:Ljava/lang/String;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lsv5;->d:I

    const-string v1, ""

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lsv5;->e:I

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsv5;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lsv5;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsv5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsv5;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()I
    .locals 1

    invoke-virtual {p0}, Lsv5;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lsv5;->d:I

    :goto_0
    return p0
.end method

.method public l()Z
    .locals 1

    invoke-virtual {p0}, Lsv5;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lsv5;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lsv5;->b:Ljava/lang/String;

    const-string v1, "mp4a.40.5"

    invoke-static {v0, v1}, Lr0a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lsv5;->b:Ljava/lang/String;

    const-string v0, "mp4a.40.2"

    invoke-static {p0, v0}, Lr0a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final n()Z
    .locals 1

    iget-object p0, p0, Lsv5;->b:Ljava/lang/String;

    const-string v0, "mp4a.40.34"

    invoke-static {p0, v0}, Lr0a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public o(Z)V
    .locals 0

    iput-boolean p1, p0, Lsv5;->l:Z

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsv5;->k:Ljava/lang/String;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsv5;->c:Ljava/lang/String;

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lsv5;->e:I

    return-void
.end method

.method public s(Lpv5;)V
    .locals 0

    iput-object p1, p0, Lsv5;->j:Lpv5;

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsv5;->m:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lsv5;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(I)V
    .locals 0

    iput p1, p0, Lsv5;->d:I

    return-void
.end method
