.class public abstract Lf43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf43$s;,
        Lf43$q;,
        Lf43$r;,
        Lf43$p;
    }
.end annotation


# static fields
.field public static final A:Lf43$s;

.field public static final n:Lf43$s;

.field public static final o:Lf43$s;

.field public static final p:Lf43$s;

.field public static final q:Lf43$s;

.field public static final r:Lf43$s;

.field public static final s:Lf43$s;

.field public static final t:Lf43$s;

.field public static final u:Lf43$s;

.field public static final v:Lf43$s;

.field public static final w:Lf43$s;

.field public static final x:Lf43$s;

.field public static final y:Lf43$s;

.field public static final z:Lf43$s;


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Laz3;

.field public f:Z

.field public g:F

.field public h:F

.field public i:J

.field public j:F

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;

.field public m:Lxc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf43$g;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lf43$g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf43;->n:Lf43$s;

    new-instance v0, Lf43$h;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lf43$h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf43;->o:Lf43$s;

    new-instance v0, Lf43$i;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Lf43$i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf43;->p:Lf43$s;

    new-instance v0, Lf43$j;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lf43$j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf43;->q:Lf43$s;

    new-instance v0, Lf43$k;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lf43$k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf43;->r:Lf43$s;

    new-instance v0, Lf43$l;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lf43$l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf43;->s:Lf43$s;

    new-instance v0, Lf43$m;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Lf43$m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf43;->t:Lf43$s;

    new-instance v0, Lf43$n;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Lf43$n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf43;->u:Lf43$s;

    new-instance v0, Lf43$o;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lf43$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf43;->v:Lf43$s;

    new-instance v0, Lf43$a;

    const-string v1, "y"

    invoke-direct {v0, v1}, Lf43$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf43;->w:Lf43$s;

    new-instance v0, Lf43$b;

    const-string v1, "z"

    invoke-direct {v0, v1}, Lf43$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf43;->x:Lf43$s;

    new-instance v0, Lf43$c;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lf43$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf43;->y:Lf43$s;

    new-instance v0, Lf43$d;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Lf43$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf43;->z:Lf43$s;

    new-instance v0, Lf43$e;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Lf43$e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf43;->A:Lf43$s;

    return-void
.end method

.method public constructor <init>(Lfz3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf43;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput v0, p0, Lf43;->b:F

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lf43;->c:Z

    .line 5
    iput-boolean v1, p0, Lf43;->f:Z

    .line 6
    iput v0, p0, Lf43;->g:F

    neg-float v0, v0

    .line 7
    iput v0, p0, Lf43;->h:F

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lf43;->i:J

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf43;->k:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf43;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lf43;->d:Ljava/lang/Object;

    .line 12
    new-instance v0, Lf43$f;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Lf43$f;-><init>(Lf43;Ljava/lang/String;Lfz3;)V

    iput-object v0, p0, Lf43;->e:Laz3;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    iput p1, p0, Lf43;->j:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Laz3;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lf43;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 16
    iput v0, p0, Lf43;->b:F

    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lf43;->c:Z

    .line 18
    iput-boolean v1, p0, Lf43;->f:Z

    .line 19
    iput v0, p0, Lf43;->g:F

    neg-float v0, v0

    .line 20
    iput v0, p0, Lf43;->h:F

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lf43;->i:J

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf43;->k:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf43;->l:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Lf43;->d:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lf43;->e:Laz3;

    .line 26
    sget-object p1, Lf43;->s:Lf43$s;

    if-eq p2, p1, :cond_4

    sget-object p1, Lf43;->t:Lf43$s;

    if-eq p2, p1, :cond_4

    sget-object p1, Lf43;->u:Lf43$s;

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    sget-object p1, Lf43;->y:Lf43$s;

    if-ne p2, p1, :cond_1

    const/high16 p1, 0x3b800000    # 0.00390625f

    .line 28
    iput p1, p0, Lf43;->j:F

    goto :goto_2

    .line 29
    :cond_1
    sget-object p1, Lf43;->q:Lf43$s;

    if-eq p2, p1, :cond_3

    sget-object p1, Lf43;->r:Lf43$s;

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    iput p1, p0, Lf43;->j:F

    goto :goto_2

    :cond_3
    :goto_0
    const p1, 0x3b03126f    # 0.002f

    .line 31
    iput p1, p0, Lf43;->j:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    .line 32
    iput p1, p0, Lf43;->j:F

    :goto_2
    return-void
.end method

.method public static i(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static j(Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lf43$q;)Lf43;
    .locals 1

    iget-object v0, p0, Lf43;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf43;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public b(Lf43$r;)Lf43;
    .locals 1

    invoke-virtual {p0}, Lf43;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf43;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf43;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lf43;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf43;->d(Z)V

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf43;->f:Z

    invoke-virtual {p0}, Lf43;->e()Lxc;

    move-result-object v1

    invoke-virtual {v1, p0}, Lxc;->l(Lxc$b;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lf43;->i:J

    iput-boolean v0, p0, Lf43;->c:Z

    :goto_0
    iget-object v1, p0, Lf43;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lf43;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf43;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf43$q;

    iget v2, p0, Lf43;->b:F

    iget v3, p0, Lf43;->a:F

    invoke-interface {v1, p0, p1, v2, v3}, Lf43$q;->a(Lf43;ZFF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lf43;->k:Ljava/util/ArrayList;

    invoke-static {p0}, Lf43;->j(Ljava/util/ArrayList;)V

    return-void
.end method

.method public doAnimationFrame(J)Z
    .locals 4

    iget-wide v0, p0, Lf43;->i:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-wide p1, p0, Lf43;->i:J

    iget p1, p0, Lf43;->b:F

    invoke-virtual {p0, p1}, Lf43;->l(F)V

    return v3

    :cond_0
    sub-long v0, p1, v0

    iput-wide p1, p0, Lf43;->i:J

    invoke-virtual {p0, v0, v1}, Lf43;->r(J)Z

    move-result p1

    iget p2, p0, Lf43;->b:F

    iget v0, p0, Lf43;->g:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lf43;->b:F

    iget v0, p0, Lf43;->h:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lf43;->b:F

    invoke-virtual {p0, p2}, Lf43;->l(F)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, v3}, Lf43;->d(Z)V

    :cond_1
    return p1
.end method

.method public e()Lxc;
    .locals 1

    iget-object v0, p0, Lf43;->m:Lxc;

    if-nez v0, :cond_0

    invoke-static {}, Lxc;->h()Lxc;

    move-result-object v0

    iput-object v0, p0, Lf43;->m:Lxc;

    :cond_0
    iget-object p0, p0, Lf43;->m:Lxc;

    return-object p0
.end method

.method public final f()F
    .locals 1

    iget-object v0, p0, Lf43;->e:Laz3;

    iget-object p0, p0, Lf43;->d:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Laz3;->a(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public g()F
    .locals 1

    iget p0, p0, Lf43;->j:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p0, v0

    return p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lf43;->f:Z

    return p0
.end method

.method public k(F)Lf43;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lf43;->j:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lf43;->o(F)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum visible change must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public l(F)V
    .locals 3

    iget-object v0, p0, Lf43;->e:Laz3;

    iget-object v1, p0, Lf43;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Laz3;->b(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lf43;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lf43;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf43;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf43$r;

    iget v1, p0, Lf43;->b:F

    iget v2, p0, Lf43;->a:F

    invoke-interface {v0, p0, v1, v2}, Lf43$r;->a(Lf43;FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lf43;->l:Ljava/util/ArrayList;

    invoke-static {p0}, Lf43;->j(Ljava/util/ArrayList;)V

    return-void
.end method

.method public m(F)Lf43;
    .locals 0

    iput p1, p0, Lf43;->b:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf43;->c:Z

    return-object p0
.end method

.method public n(F)Lf43;
    .locals 0

    iput p1, p0, Lf43;->a:F

    return-object p0
.end method

.method public abstract o(F)V
.end method

.method public p()V
    .locals 1

    iget-boolean v0, p0, Lf43;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lf43;->q()V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 3

    iget-boolean v0, p0, Lf43;->f:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf43;->f:Z

    iget-boolean v0, p0, Lf43;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lf43;->f()F

    move-result v0

    iput v0, p0, Lf43;->b:F

    :cond_0
    iget v0, p0, Lf43;->b:F

    iget v1, p0, Lf43;->g:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lf43;->h:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lf43;->e()Lxc;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lxc;->e(Lxc$b;J)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract r(J)Z
.end method

.method public removeEndListener(Lf43$q;)V
    .locals 0

    iget-object p0, p0, Lf43;->k:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lf43;->i(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method

.method public removeUpdateListener(Lf43$r;)V
    .locals 0

    iget-object p0, p0, Lf43;->l:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lf43;->i(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void
.end method
