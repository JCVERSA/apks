.class public final Lgpj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Lh6j;

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Lhre;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:Ljava/util/List;

.field public q:Lcom/google/android/gms/internal/ads/zzs;

.field public r:J

.field public s:Z

.field public t:I

.field public u:I

.field public v:F

.field public w:I

.field public x:F

.field public y:[B

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    iput-object v0, p0, Lgpj;->c:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lgpj;->h:I

    iput v0, p0, Lgpj;->i:I

    iput v0, p0, Lgpj;->n:I

    iput v0, p0, Lgpj;->o:I

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lgpj;->r:J

    iput v0, p0, Lgpj;->t:I

    iput v0, p0, Lgpj;->u:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lgpj;->v:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lgpj;->x:F

    iput v0, p0, Lgpj;->z:I

    iput v0, p0, Lgpj;->B:I

    iput v0, p0, Lgpj;->C:I

    iput v0, p0, Lgpj;->D:I

    iput v0, p0, Lgpj;->E:I

    iput v0, p0, Lgpj;->H:I

    const/4 v0, 0x1

    iput v0, p0, Lgpj;->I:I

    const/4 v0, 0x0

    iput v0, p0, Lgpj;->J:I

    iput v0, p0, Lgpj;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Lerj;Leqj;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p1, Lerj;->a:Ljava/lang/String;

    iput-object p2, p0, Lgpj;->a:Ljava/lang/String;

    iget-object p2, p1, Lerj;->b:Ljava/lang/String;

    iput-object p2, p0, Lgpj;->b:Ljava/lang/String;

    iget-object p2, p1, Lerj;->c:Ljava/util/List;

    iput-object p2, p0, Lgpj;->c:Ljava/util/List;

    iget-object p2, p1, Lerj;->d:Ljava/lang/String;

    iput-object p2, p0, Lgpj;->d:Ljava/lang/String;

    iget p2, p1, Lerj;->e:I

    iput p2, p0, Lgpj;->e:I

    iget p2, p1, Lerj;->f:I

    iput p2, p0, Lgpj;->f:I

    iget p2, p1, Lerj;->h:I

    iput p2, p0, Lgpj;->h:I

    iget p2, p1, Lerj;->i:I

    iput p2, p0, Lgpj;->i:I

    iget-object p2, p1, Lerj;->k:Ljava/lang/String;

    iput-object p2, p0, Lgpj;->j:Ljava/lang/String;

    iget-object p2, p1, Lerj;->l:Lhre;

    iput-object p2, p0, Lgpj;->k:Lhre;

    iget-object p2, p1, Lerj;->n:Ljava/lang/String;

    iput-object p2, p0, Lgpj;->l:Ljava/lang/String;

    iget-object p2, p1, Lerj;->o:Ljava/lang/String;

    iput-object p2, p0, Lgpj;->m:Ljava/lang/String;

    iget p2, p1, Lerj;->p:I

    iput p2, p0, Lgpj;->n:I

    iget p2, p1, Lerj;->q:I

    iput p2, p0, Lgpj;->o:I

    iget-object p2, p1, Lerj;->r:Ljava/util/List;

    iput-object p2, p0, Lgpj;->p:Ljava/util/List;

    iget-object p2, p1, Lerj;->s:Lcom/google/android/gms/internal/ads/zzs;

    iput-object p2, p0, Lgpj;->q:Lcom/google/android/gms/internal/ads/zzs;

    iget-wide v0, p1, Lerj;->t:J

    iput-wide v0, p0, Lgpj;->r:J

    iget-boolean p2, p1, Lerj;->u:Z

    iput-boolean p2, p0, Lgpj;->s:Z

    iget p2, p1, Lerj;->v:I

    iput p2, p0, Lgpj;->t:I

    iget p2, p1, Lerj;->w:I

    iput p2, p0, Lgpj;->u:I

    iget p2, p1, Lerj;->x:F

    iput p2, p0, Lgpj;->v:F

    iget p2, p1, Lerj;->y:I

    iput p2, p0, Lgpj;->w:I

    iget p2, p1, Lerj;->z:F

    iput p2, p0, Lgpj;->x:F

    iget-object p2, p1, Lerj;->A:[B

    iput-object p2, p0, Lgpj;->y:[B

    iget p2, p1, Lerj;->B:I

    iput p2, p0, Lgpj;->z:I

    iget-object p2, p1, Lerj;->C:Lh6j;

    iput-object p2, p0, Lgpj;->A:Lh6j;

    iget p2, p1, Lerj;->D:I

    iput p2, p0, Lgpj;->B:I

    iget p2, p1, Lerj;->E:I

    iput p2, p0, Lgpj;->C:I

    iget p2, p1, Lerj;->F:I

    iput p2, p0, Lgpj;->D:I

    iget p2, p1, Lerj;->G:I

    iput p2, p0, Lgpj;->E:I

    iget p2, p1, Lerj;->H:I

    iput p2, p0, Lgpj;->F:I

    iget p2, p1, Lerj;->I:I

    iput p2, p0, Lgpj;->G:I

    iget p2, p1, Lerj;->J:I

    iput p2, p0, Lgpj;->H:I

    iget p2, p1, Lerj;->K:I

    iput p2, p0, Lgpj;->I:I

    iget p1, p1, Lerj;->L:I

    iput p1, p0, Lgpj;->J:I

    return-void
.end method

.method public static bridge synthetic A(Lgpj;)F
    .locals 0

    iget p0, p0, Lgpj;->v:F

    return p0
.end method

.method public static bridge synthetic L(Lgpj;)Lhre;
    .locals 0

    iget-object p0, p0, Lgpj;->k:Lhre;

    return-object p0
.end method

.method public static bridge synthetic M(Lgpj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgpj;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic N(Lgpj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgpj;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic O(Lgpj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgpj;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic P(Lgpj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgpj;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic Q(Lgpj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgpj;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic R(Lgpj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgpj;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic S(Lgpj;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lgpj;->p:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic T(Lgpj;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lgpj;->c:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic U(Lgpj;)Z
    .locals 0

    iget-boolean p0, p0, Lgpj;->s:Z

    return p0
.end method

.method public static bridge synthetic V(Lgpj;)[B
    .locals 0

    iget-object p0, p0, Lgpj;->y:[B

    return-object p0
.end method

.method public static bridge synthetic W(Lgpj;)F
    .locals 0

    iget p0, p0, Lgpj;->x:F

    return p0
.end method

.method public static bridge synthetic X(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->H:I

    return p0
.end method

.method public static bridge synthetic Y(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->g:I

    return p0
.end method

.method public static bridge synthetic Z(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->h:I

    return p0
.end method

.method public static bridge synthetic a0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->C:I

    return p0
.end method

.method public static bridge synthetic b0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->J:I

    return p0
.end method

.method public static bridge synthetic c0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->I:I

    return p0
.end method

.method public static bridge synthetic d0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->F:I

    return p0
.end method

.method public static bridge synthetic e0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->G:I

    return p0
.end method

.method public static bridge synthetic f0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->u:I

    return p0
.end method

.method public static bridge synthetic g0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->n:I

    return p0
.end method

.method public static bridge synthetic h0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->o:I

    return p0
.end method

.method public static bridge synthetic i0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->B:I

    return p0
.end method

.method public static bridge synthetic j0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->E:I

    return p0
.end method

.method public static bridge synthetic k0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->i:I

    return p0
.end method

.method public static bridge synthetic l0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->f:I

    return p0
.end method

.method public static bridge synthetic m0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->w:I

    return p0
.end method

.method public static bridge synthetic n0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->D:I

    return p0
.end method

.method public static bridge synthetic o0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->e:I

    return p0
.end method

.method public static bridge synthetic p0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->z:I

    return p0
.end method

.method public static bridge synthetic q0(Lgpj;)I
    .locals 0

    iget p0, p0, Lgpj;->t:I

    return p0
.end method

.method public static bridge synthetic r0(Lgpj;)J
    .locals 2

    iget-wide v0, p0, Lgpj;->r:J

    return-wide v0
.end method

.method public static bridge synthetic s0(Lgpj;)Lh6j;
    .locals 0

    iget-object p0, p0, Lgpj;->A:Lh6j;

    return-object p0
.end method

.method public static bridge synthetic t0(Lgpj;)Lcom/google/android/gms/internal/ads/zzs;
    .locals 0

    iget-object p0, p0, Lgpj;->q:Lcom/google/android/gms/internal/ads/zzs;

    return-object p0
.end method


# virtual methods
.method public final B([B)Lgpj;
    .locals 0

    iput-object p1, p0, Lgpj;->y:[B

    return-object p0
.end method

.method public final C(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->f:I

    return-object p0
.end method

.method public final D(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->w:I

    return-object p0
.end method

.method public final E(Ljava/lang/String;)Lgpj;
    .locals 0

    invoke-static {p1}, Lbue;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgpj;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final F(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->D:I

    return-object p0
.end method

.method public final G(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->e:I

    return-object p0
.end method

.method public final H(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->z:I

    return-object p0
.end method

.method public final I(J)Lgpj;
    .locals 0

    iput-wide p1, p0, Lgpj;->r:J

    return-object p0
.end method

.method public final J(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->t:I

    return-object p0
.end method

.method public final K()Lerj;
    .locals 2

    new-instance v0, Lerj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lerj;-><init>(Lgpj;Leqj;)V

    return-object v0
.end method

.method public final a(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->h:I

    return-object p0
.end method

.method public final b(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->C:I

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lgpj;
    .locals 0

    iput-object p1, p0, Lgpj;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Lh6j;)Lgpj;
    .locals 0

    iput-object p1, p0, Lgpj;->A:Lh6j;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lgpj;
    .locals 0

    invoke-static {p1}, Lbue;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgpj;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final f(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->J:I

    return-object p0
.end method

.method public final g(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->I:I

    return-object p0
.end method

.method public final h(Lcom/google/android/gms/internal/ads/zzs;)Lgpj;
    .locals 0

    iput-object p1, p0, Lgpj;->q:Lcom/google/android/gms/internal/ads/zzs;

    return-object p0
.end method

.method public final i(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->F:I

    return-object p0
.end method

.method public final j(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->G:I

    return-object p0
.end method

.method public final k(F)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->v:F

    return-object p0
.end method

.method public final l(Z)Lgpj;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgpj;->s:Z

    return-object p0
.end method

.method public final m(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->u:I

    return-object p0
.end method

.method public final n(I)Lgpj;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgpj;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final o(Ljava/lang/String;)Lgpj;
    .locals 0

    iput-object p1, p0, Lgpj;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final p(Ljava/util/List;)Lgpj;
    .locals 0

    iput-object p1, p0, Lgpj;->p:Ljava/util/List;

    return-object p0
.end method

.method public final q(Ljava/lang/String;)Lgpj;
    .locals 0

    iput-object p1, p0, Lgpj;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final r(Ljava/util/List;)Lgpj;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfww;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lgpj;->c:Ljava/util/List;

    return-object p0
.end method

.method public final s(Ljava/lang/String;)Lgpj;
    .locals 0

    iput-object p1, p0, Lgpj;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final t(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->n:I

    return-object p0
.end method

.method public final u(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->o:I

    return-object p0
.end method

.method public final u0(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->H:I

    return-object p0
.end method

.method public final v(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->B:I

    return-object p0
.end method

.method public final w(Lhre;)Lgpj;
    .locals 0

    iput-object p1, p0, Lgpj;->k:Lhre;

    return-object p0
.end method

.method public final x(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->E:I

    return-object p0
.end method

.method public final y(I)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->i:I

    return-object p0
.end method

.method public final z(F)Lgpj;
    .locals 0

    iput p1, p0, Lgpj;->x:F

    return-object p0
.end method
