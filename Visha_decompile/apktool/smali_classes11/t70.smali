.class public final Lt70;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt70$a;
    }
.end annotation


# static fields
.field public static final q:Lt70$a;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:[F

.field public j:I

.field public k:Z

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt70$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt70$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lt70;->q:Lt70$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt70;->a:I

    sget-object v0, Lw70;->a:Lw70;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lw70;->a(F)I

    move-result v0

    iput v0, p0, Lt70;->e:I

    const/16 v0, -0x3e8

    iput v0, p0, Lt70;->f:I

    iput v0, p0, Lt70;->g:I

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lt70;->i:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt70;->k:Z

    iput-boolean v0, p0, Lt70;->o:Z

    iput-boolean v0, p0, Lt70;->p:Z

    return-void
.end method


# virtual methods
.method public final A(Z)V
    .locals 0

    iput-boolean p1, p0, Lt70;->m:Z

    return-void
.end method

.method public final B(I)V
    .locals 0

    iput p1, p0, Lt70;->h:I

    return-void
.end method

.method public final C(Z)V
    .locals 0

    iput-boolean p1, p0, Lt70;->o:Z

    return-void
.end method

.method public final D(Z)V
    .locals 0

    iput-boolean p1, p0, Lt70;->k:Z

    return-void
.end method

.method public final a()I
    .locals 0

    iget p0, p0, Lt70;->b:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lt70;->g:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lt70;->a:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lt70;->l:I

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lt70;->e:I

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lt70;->f:I

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lt70;->j:I

    return p0
.end method

.method public final h()[F
    .locals 0

    iget-object p0, p0, Lt70;->i:[F

    return-object p0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lt70;->h:I

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Lt70;->d:Z

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-boolean p0, p0, Lt70;->p:Z

    return p0
.end method

.method public final l()Z
    .locals 0

    iget-boolean p0, p0, Lt70;->c:Z

    return p0
.end method

.method public final m()Z
    .locals 0

    iget-boolean p0, p0, Lt70;->n:Z

    return p0
.end method

.method public final n()Z
    .locals 0

    iget-boolean p0, p0, Lt70;->o:Z

    return p0
.end method

.method public final o(Z)V
    .locals 0

    iput-boolean p1, p0, Lt70;->d:Z

    return-void
.end method

.method public final p(Z)V
    .locals 0

    iput-boolean p1, p0, Lt70;->p:Z

    return-void
.end method

.method public final q(Z)V
    .locals 0

    iput-boolean p1, p0, Lt70;->c:Z

    return-void
.end method

.method public final r(Z)V
    .locals 0

    iput-boolean p1, p0, Lt70;->n:Z

    return-void
.end method

.method public final s(I)V
    .locals 0

    iput p1, p0, Lt70;->b:I

    return-void
.end method

.method public final t(I)V
    .locals 0

    iput p1, p0, Lt70;->g:I

    return-void
.end method

.method public final u(I)V
    .locals 0

    iput p1, p0, Lt70;->a:I

    return-void
.end method

.method public final v(I)V
    .locals 0

    iput p1, p0, Lt70;->l:I

    return-void
.end method

.method public final w(I)V
    .locals 0

    iput p1, p0, Lt70;->e:I

    return-void
.end method

.method public final x(I)V
    .locals 0

    iput p1, p0, Lt70;->f:I

    return-void
.end method

.method public final y(I)V
    .locals 0

    iput p1, p0, Lt70;->j:I

    return-void
.end method

.method public final z(IIII)V
    .locals 1

    iget-object p0, p0, Lt70;->i:[F

    int-to-float p1, p1

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 v0, 0x1

    aput p1, p0, v0

    int-to-float p1, p2

    const/4 p2, 0x2

    aput p1, p0, p2

    const/4 p2, 0x3

    aput p1, p0, p2

    int-to-float p1, p4

    const/4 p2, 0x4

    aput p1, p0, p2

    const/4 p2, 0x5

    aput p1, p0, p2

    int-to-float p1, p3

    const/4 p2, 0x6

    aput p1, p0, p2

    const/4 p2, 0x7

    aput p1, p0, p2

    return-void
.end method
