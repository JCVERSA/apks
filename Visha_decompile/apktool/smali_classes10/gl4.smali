.class public Lgl4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:[I

.field public E:I

.field public F:J

.field public G:Lw94;

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:B

.field public o:B

.field public p:B

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(IIIIIIIIIII[I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    iput v0, p0, Lgl4;->m:I

    const/4 v0, 0x3

    iput-byte v0, p0, Lgl4;->n:B

    const/4 v0, 0x4

    iput-byte v0, p0, Lgl4;->o:B

    const/4 v1, 0x5

    iput-byte v1, p0, Lgl4;->p:B

    iput v1, p0, Lgl4;->z:I

    iput v0, p0, Lgl4;->A:I

    const/16 v0, 0x10

    iput v0, p0, Lgl4;->B:I

    const/4 v0, 0x2

    iput v0, p0, Lgl4;->C:I

    const/16 v0, 0x40

    iput v0, p0, Lgl4;->E:I

    iput p1, p0, Lgl4;->a:I

    iput p4, p0, Lgl4;->d:I

    iput p6, p0, Lgl4;->e:I

    iput p7, p0, Lgl4;->f:I

    iput p8, p0, Lgl4;->g:I

    iput p9, p0, Lgl4;->h:I

    iput p2, p0, Lgl4;->b:I

    iput p3, p0, Lgl4;->c:I

    mul-int p6, p2, p3

    iput p6, p0, Lgl4;->r:I

    iput-object p12, p0, Lgl4;->D:[I

    iput p5, p0, Lgl4;->i:I

    iput p10, p0, Lgl4;->j:I

    iput p11, p0, Lgl4;->k:I

    div-int/lit16 p3, p3, 0x80

    int-to-double p7, p3

    invoke-static {p7, p8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p7

    double-to-int p3, p7

    iput p3, p0, Lgl4;->l:I

    invoke-static {p1}, Lqlb;->b(I)I

    move-result p3

    iput p3, p0, Lgl4;->q:I

    iput p4, p0, Lgl4;->t:I

    invoke-static {p1}, Lqlb;->a(I)I

    move-result p3

    iput p3, p0, Lgl4;->s:I

    invoke-static {p4}, Lqlb;->b(I)I

    move-result p3

    iput p3, p0, Lgl4;->u:I

    invoke-static {p2}, Lqlb;->b(I)I

    move-result p3

    iput p3, p0, Lgl4;->v:I

    invoke-static {p6}, Lqlb;->a(I)I

    move-result p3

    iput p3, p0, Lgl4;->w:I

    invoke-static {p6}, Lqlb;->b(I)I

    move-result p3

    iput p3, p0, Lgl4;->x:I

    invoke-static {p2}, Lqlb;->b(I)I

    move-result p2

    iput p2, p0, Lgl4;->y:I

    int-to-long p2, p1

    const-wide/16 p4, 0x40

    rem-long/2addr p2, p4

    long-to-int p2, p2

    const-wide/16 p3, 0x1

    shl-long p5, p3, p2

    sub-long/2addr p5, p3

    iput-wide p5, p0, Lgl4;->F:J

    new-instance p2, Lw94;

    iget p3, p0, Lgl4;->s:I

    invoke-direct {p2, p3, p1, p5, p6}, Lw94;-><init>(IIJ)V

    iput-object p2, p0, Lgl4;->G:Lw94;

    return-void
.end method
