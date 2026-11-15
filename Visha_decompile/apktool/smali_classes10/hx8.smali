.class public Lhx8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

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

.field public final r:I

.field public final s:Lrlb;

.field public final t:Lkc8;

.field public final u:Z

.field public final v:Z

.field public final w:Ld8a;


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lhx8;->p:I

    iput-boolean p3, p0, Lhx8;->u:Z

    iput-boolean p4, p0, Lhx8;->v:Z

    iput p1, p0, Lhx8;->a:I

    const/4 p2, 0x2

    const/4 v0, 0x3

    const/16 v1, 0x8

    if-ne p1, p2, :cond_0

    const/16 p2, 0xa

    iput p2, p0, Lhx8;->b:I

    iput v0, p0, Lhx8;->c:I

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    iput v1, p0, Lhx8;->b:I

    const/4 p2, 0x4

    :goto_0
    iput p2, p0, Lhx8;->c:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x6

    iput p2, p0, Lhx8;->b:I

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_2

    new-instance p2, Ld8a$a;

    invoke-direct {p2}, Ld8a$a;-><init>()V

    :goto_2
    iput-object p2, p0, Lhx8;->w:Ld8a;

    goto :goto_3

    :cond_2
    new-instance p2, Ld8a$b;

    invoke-direct {p2}, Ld8a$b;-><init>()V

    goto :goto_2

    :goto_3
    const/16 p2, 0x40

    if-eqz p4, :cond_3

    const/16 p3, 0xc

    iput p3, p0, Lhx8;->e:I

    iput p2, p0, Lhx8;->d:I

    goto :goto_4

    :cond_3
    const/16 p3, 0xd

    iput p3, p0, Lhx8;->e:I

    iget p3, p0, Lhx8;->b:I

    mul-int/lit16 p3, p3, 0x100

    div-int/2addr p3, v1

    iput p3, p0, Lhx8;->d:I

    :goto_4
    iget p3, p0, Lhx8;->e:I

    mul-int/lit16 p4, p3, 0x100

    div-int/2addr p4, v1

    iput p4, p0, Lhx8;->f:I

    mul-int/2addr p4, p1

    iput p4, p0, Lhx8;->g:I

    const/16 v0, 0x140

    iput v0, p0, Lhx8;->h:I

    mul-int/2addr p1, v0

    iput p1, p0, Lhx8;->i:I

    iget v0, p0, Lhx8;->c:I

    mul-int/lit16 v2, v0, 0x100

    div-int/2addr v2, v1

    iput v2, p0, Lhx8;->j:I

    add-int/lit8 v1, p1, 0x20

    iput v1, p0, Lhx8;->k:I

    iput p4, p0, Lhx8;->l:I

    iput v1, p0, Lhx8;->m:I

    add-int/2addr p4, v1

    add-int/2addr p4, p2

    iput p4, p0, Lhx8;->n:I

    add-int/2addr p1, v2

    iput p1, p0, Lhx8;->o:I

    add-int/lit8 p1, p3, -0xb

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lhx8;->q:I

    rsub-int/lit8 p1, v0, 0x9

    shl-int p1, p2, p1

    rsub-int p1, p1, 0x100

    add-int/lit8 p3, p3, -0xb

    shl-int/2addr p2, p3

    add-int/2addr p1, p2

    iput p1, p0, Lhx8;->r:I

    new-instance p1, Lrlb;

    invoke-direct {p1, p0}, Lrlb;-><init>(Lhx8;)V

    iput-object p1, p0, Lhx8;->s:Lrlb;

    new-instance p1, Lkc8;

    invoke-direct {p1, p0}, Lkc8;-><init>(Lhx8;)V

    iput-object p1, p0, Lhx8;->t:Lkc8;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lhx8;->c:I

    return p0
.end method

.method public c()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lhx8;->a:I

    return p0
.end method

.method public e()I
    .locals 0

    const/16 p0, 0x100

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lhx8;->f:I

    return p0
.end method

.method public g()Lrlb;
    .locals 0

    iget-object p0, p0, Lhx8;->s:Lrlb;

    return-object p0
.end method
