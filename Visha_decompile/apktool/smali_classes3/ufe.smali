.class public final Lufe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lbfe;

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:[J

.field public g:[I

.field public h:[I

.field public i:[J

.field public j:[Z

.field public k:Z

.field public l:[Z

.field public m:Ltfe;

.field public final n:Lu4h;

.field public o:Z

.field public p:J

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    iput-object v1, p0, Lufe;->f:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lufe;->g:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lufe;->h:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lufe;->i:[J

    new-array v1, v0, [Z

    iput-object v1, p0, Lufe;->j:[Z

    new-array v0, v0, [Z

    iput-object v0, p0, Lufe;->l:[Z

    new-instance v0, Lu4h;

    invoke-direct {v0}, Lu4h;-><init>()V

    iput-object v0, p0, Lufe;->n:Lu4h;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lufe;->n:Lu4h;

    invoke-virtual {v0, p1}, Lu4h;->i(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lufe;->k:Z

    iput-boolean p1, p0, Lufe;->o:Z

    return-void
.end method

.method public final b(I)Z
    .locals 1

    iget-boolean v0, p0, Lufe;->k:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lufe;->l:[Z

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
