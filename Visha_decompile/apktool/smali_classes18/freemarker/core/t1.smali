.class public abstract Lfreemarker/core/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public b:Lfreemarker/template/Template;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/t1;)V
    .locals 6

    iget v2, p2, Lfreemarker/core/t1;->c:I

    iget v3, p2, Lfreemarker/core/t1;->d:I

    iget v4, p3, Lfreemarker/core/t1;->e:I

    iget v5, p3, Lfreemarker/core/t1;->f:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/t1;->z(Lfreemarker/template/Template;IIII)V

    return-void
.end method

.method public final B(Lfreemarker/template/Template;Lfreemarker/core/t1;Lfreemarker/core/Token;)V
    .locals 6

    iget v2, p2, Lfreemarker/core/t1;->c:I

    iget v3, p2, Lfreemarker/core/t1;->d:I

    iget v4, p3, Lfreemarker/core/Token;->endColumn:I

    iget v5, p3, Lfreemarker/core/Token;->endLine:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/t1;->z(Lfreemarker/template/Template;IIII)V

    return-void
.end method

.method public final C(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/t1;)V
    .locals 6

    iget v2, p2, Lfreemarker/core/Token;->beginColumn:I

    iget v3, p2, Lfreemarker/core/Token;->beginLine:I

    iget v4, p3, Lfreemarker/core/t1;->e:I

    iget v5, p3, Lfreemarker/core/t1;->f:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/t1;->z(Lfreemarker/template/Template;IIII)V

    return-void
.end method

.method public final E(Lfreemarker/template/Template;Lfreemarker/core/Token;Lfreemarker/core/Token;)V
    .locals 6

    iget v2, p2, Lfreemarker/core/Token;->beginColumn:I

    iget v3, p2, Lfreemarker/core/Token;->beginLine:I

    iget v4, p3, Lfreemarker/core/Token;->endColumn:I

    iget v5, p3, Lfreemarker/core/Token;->endLine:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/t1;->z(Lfreemarker/template/Template;IIII)V

    return-void
.end method

.method public l(Lfreemarker/core/t1;)Lfreemarker/core/t1;
    .locals 1

    iget-object v0, p1, Lfreemarker/core/t1;->b:Lfreemarker/template/Template;

    iput-object v0, p0, Lfreemarker/core/t1;->b:Lfreemarker/template/Template;

    iget v0, p1, Lfreemarker/core/t1;->c:I

    iput v0, p0, Lfreemarker/core/t1;->c:I

    iget v0, p1, Lfreemarker/core/t1;->d:I

    iput v0, p0, Lfreemarker/core/t1;->d:I

    iget v0, p1, Lfreemarker/core/t1;->e:I

    iput v0, p0, Lfreemarker/core/t1;->e:I

    iget p1, p1, Lfreemarker/core/t1;->f:I

    iput p1, p0, Lfreemarker/core/t1;->f:I

    return-object p0
.end method

.method public final m()I
    .locals 0

    iget p0, p0, Lfreemarker/core/t1;->c:I

    return p0
.end method

.method public final n()I
    .locals 0

    iget p0, p0, Lfreemarker/core/t1;->d:I

    return p0
.end method

.method public abstract o()Ljava/lang/String;
.end method

.method public final p()I
    .locals 0

    iget p0, p0, Lfreemarker/core/t1;->e:I

    return p0
.end method

.method public final q()I
    .locals 0

    iget p0, p0, Lfreemarker/core/t1;->f:I

    return p0
.end method

.method public abstract r()Ljava/lang/String;
.end method

.method public abstract s()I
.end method

.method public abstract t(I)Ljw7;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/t1;->v()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public abstract u(I)Ljava/lang/Object;
.end method

.method public final v()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lfreemarker/core/t1;->b:Lfreemarker/template/Template;

    if-eqz v0, :cond_0

    iget v1, p0, Lfreemarker/core/t1;->c:I

    iget v2, p0, Lfreemarker/core/t1;->d:I

    iget v3, p0, Lfreemarker/core/t1;->e:I

    iget v4, p0, Lfreemarker/core/t1;->f:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lfreemarker/template/Template;->D0(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lfreemarker/core/t1;->o()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/t1;->b:Lfreemarker/template/Template;

    iget v1, p0, Lfreemarker/core/t1;->d:I

    iget p0, p0, Lfreemarker/core/t1;->c:I

    invoke-static {v0, v1, p0}, Lfreemarker/core/f1;->f(Lfreemarker/template/Template;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public x()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/t1;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public y()Lfreemarker/template/Template;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/t1;->b:Lfreemarker/template/Template;

    return-object p0
.end method

.method public z(Lfreemarker/template/Template;IIII)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/t1;->b:Lfreemarker/template/Template;

    iput p2, p0, Lfreemarker/core/t1;->c:I

    iput p3, p0, Lfreemarker/core/t1;->d:I

    iput p4, p0, Lfreemarker/core/t1;->e:I

    iput p5, p0, Lfreemarker/core/t1;->f:I

    return-void
.end method
