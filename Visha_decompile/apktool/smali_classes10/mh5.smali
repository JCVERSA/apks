.class public Lmh5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lnh5;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:Lc8a;


# direct methods
.method public constructor <init>(IZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmh5;->b:I

    const/16 v0, 0x80

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/16 v3, 0x20

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iput v2, p0, Lmh5;->f:I

    const/16 v0, 0xa0

    iput v0, p0, Lmh5;->d:I

    mul-int/lit16 v0, p1, 0x160

    :goto_0
    iput v0, p0, Lmh5;->e:I

    iput v3, p0, Lmh5;->q:I

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "K: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported for Crystals Kyber"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput v2, p0, Lmh5;->f:I

    :goto_1
    iput v0, p0, Lmh5;->d:I

    mul-int/lit16 v0, p1, 0x140

    goto :goto_0

    :cond_2
    iput v1, p0, Lmh5;->f:I

    goto :goto_1

    :goto_2
    mul-int/lit16 p1, p1, 0x180

    iput p1, p0, Lmh5;->c:I

    add-int/lit8 v0, p1, 0x20

    iput v0, p0, Lmh5;->g:I

    iput p1, p0, Lmh5;->h:I

    iget v1, p0, Lmh5;->e:I

    iget v2, p0, Lmh5;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lmh5;->i:I

    iput v0, p0, Lmh5;->j:I

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x40

    iput p1, p0, Lmh5;->k:I

    iput v1, p0, Lmh5;->l:I

    iput v3, p0, Lmh5;->m:I

    iput p1, p0, Lmh5;->n:I

    iput v0, p0, Lmh5;->o:I

    iput v1, p0, Lmh5;->p:I

    if-eqz p2, :cond_3

    new-instance p1, Lc8a$a;

    invoke-direct {p1}, Lc8a$a;-><init>()V

    :goto_3
    iput-object p1, p0, Lmh5;->r:Lc8a;

    goto :goto_4

    :cond_3
    new-instance p1, Lc8a$b;

    invoke-direct {p1}, Lc8a$b;-><init>()V

    goto :goto_3

    :goto_4
    new-instance p1, Lnh5;

    invoke-direct {p1, p0}, Lnh5;-><init>(Lmh5;)V

    iput-object p1, p0, Lmh5;->a:Lnh5;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lmh5;->f:I

    return p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lmh5;->i:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lmh5;->g:I

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lmh5;->h:I

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lmh5;->b:I

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lmh5;->d:I

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lmh5;->c:I

    return p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lmh5;->e:I

    return p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lmh5;->j:I

    return p0
.end method

.method public j()Lc8a;
    .locals 0

    iget-object p0, p0, Lmh5;->r:Lc8a;

    return-object p0
.end method
