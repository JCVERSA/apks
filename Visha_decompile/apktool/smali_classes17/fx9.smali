.class public Lfx9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:Landroid/content/Context;

.field public d:Landroid/graphics/Rect;

.field public e:I

.field public f:I

.field public g:J

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/transsion/exposure/R$id;->unmark:I

    iput v0, p0, Lfx9;->a:I

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lfx9;->b:J

    const/16 v0, 0x64

    iput v0, p0, Lfx9;->f:I

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lfx9;->g:J

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lfx9;->c:Landroid/content/Context;

    return-object p0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lfx9;->g:J

    return-wide v0
.end method

.method public c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lfx9;->k:Ljava/util/List;

    return-object p0
.end method

.method public d()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lfx9;->d:Landroid/graphics/Rect;

    return-object p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lfx9;->e:I

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lfx9;->f:I

    return p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lfx9;->i:Z

    return p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lfx9;->h:Z

    return p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lfx9;->j:Z

    return p0
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lfx9;->i:Z

    return-void
.end method

.method public k(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lfx9;->c:Landroid/content/Context;

    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lfx9;->h:Z

    return-void
.end method

.method public m(J)V
    .locals 0

    iput-wide p1, p0, Lfx9;->g:J

    return-void
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Lfx9;->j:Z

    return-void
.end method

.method public o(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lfx9;->d:Landroid/graphics/Rect;

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lfx9;->e:I

    return-void
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Lfx9;->f:I

    return-void
.end method
