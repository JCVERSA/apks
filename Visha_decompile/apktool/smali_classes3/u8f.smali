.class public Lu8f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Lcom/google/android/gms/internal/ads/zzfww;

.field public j:Lcom/google/android/gms/internal/ads/zzfww;

.field public k:Lcom/google/android/gms/internal/ads/zzfww;

.field public l:I

.field public m:I

.field public n:Lcom/google/android/gms/internal/ads/zzfww;

.field public o:Lf8f;

.field public p:Lcom/google/android/gms/internal/ads/zzfww;

.field public q:Z

.field public r:Ljava/util/HashMap;

.field public s:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lu8f;->a:I

    iput v0, p0, Lu8f;->b:I

    iput v0, p0, Lu8f;->c:I

    iput v0, p0, Lu8f;->d:I

    iput v0, p0, Lu8f;->e:I

    iput v0, p0, Lu8f;->f:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lu8f;->g:Z

    iput-boolean v1, p0, Lu8f;->h:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v2

    iput-object v2, p0, Lu8f;->i:Lcom/google/android/gms/internal/ads/zzfww;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v2

    iput-object v2, p0, Lu8f;->j:Lcom/google/android/gms/internal/ads/zzfww;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v2

    iput-object v2, p0, Lu8f;->k:Lcom/google/android/gms/internal/ads/zzfww;

    iput v0, p0, Lu8f;->l:I

    iput v0, p0, Lu8f;->m:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    iput-object v0, p0, Lu8f;->n:Lcom/google/android/gms/internal/ads/zzfww;

    .line 5
    sget-object v0, Lf8f;->b:Lf8f;

    iput-object v0, p0, Lu8f;->o:Lf8f;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    iput-object v0, p0, Lu8f;->p:Lcom/google/android/gms/internal/ads/zzfww;

    iput-boolean v1, p0, Lu8f;->q:Z

    new-instance v0, Ljava/util/HashMap;

    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu8f;->r:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lu8f;->s:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lz8f;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lu8f;->u(Lz8f;)V

    return-void
.end method

.method public static bridge synthetic a(Lu8f;)I
    .locals 0

    iget p0, p0, Lu8f;->m:I

    return p0
.end method

.method public static bridge synthetic b(Lu8f;)I
    .locals 0

    iget p0, p0, Lu8f;->l:I

    return p0
.end method

.method public static bridge synthetic c(Lu8f;)I
    .locals 0

    iget p0, p0, Lu8f;->d:I

    return p0
.end method

.method public static bridge synthetic d(Lu8f;)I
    .locals 0

    iget p0, p0, Lu8f;->c:I

    return p0
.end method

.method public static bridge synthetic e(Lu8f;)I
    .locals 0

    iget p0, p0, Lu8f;->b:I

    return p0
.end method

.method public static bridge synthetic f(Lu8f;)I
    .locals 0

    iget p0, p0, Lu8f;->a:I

    return p0
.end method

.method public static bridge synthetic g(Lu8f;)I
    .locals 0

    iget p0, p0, Lu8f;->f:I

    return p0
.end method

.method public static bridge synthetic h(Lu8f;)I
    .locals 0

    iget p0, p0, Lu8f;->e:I

    return p0
.end method

.method public static bridge synthetic i(Lu8f;)Lf8f;
    .locals 0

    iget-object p0, p0, Lu8f;->o:Lf8f;

    return-object p0
.end method

.method public static bridge synthetic k(Lu8f;)Lcom/google/android/gms/internal/ads/zzfww;
    .locals 0

    iget-object p0, p0, Lu8f;->k:Lcom/google/android/gms/internal/ads/zzfww;

    return-object p0
.end method

.method public static bridge synthetic l(Lu8f;)Lcom/google/android/gms/internal/ads/zzfww;
    .locals 0

    iget-object p0, p0, Lu8f;->n:Lcom/google/android/gms/internal/ads/zzfww;

    return-object p0
.end method

.method public static bridge synthetic m(Lu8f;)Lcom/google/android/gms/internal/ads/zzfww;
    .locals 0

    iget-object p0, p0, Lu8f;->p:Lcom/google/android/gms/internal/ads/zzfww;

    return-object p0
.end method

.method public static bridge synthetic n(Lu8f;)Lcom/google/android/gms/internal/ads/zzfww;
    .locals 0

    iget-object p0, p0, Lu8f;->j:Lcom/google/android/gms/internal/ads/zzfww;

    return-object p0
.end method

.method public static bridge synthetic o(Lu8f;)Lcom/google/android/gms/internal/ads/zzfww;
    .locals 0

    iget-object p0, p0, Lu8f;->i:Lcom/google/android/gms/internal/ads/zzfww;

    return-object p0
.end method

.method public static bridge synthetic p(Lu8f;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lu8f;->r:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic q(Lu8f;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lu8f;->s:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic r(Lu8f;)Z
    .locals 0

    iget-boolean p0, p0, Lu8f;->g:Z

    return p0
.end method

.method public static bridge synthetic s(Lu8f;)Z
    .locals 0

    iget-boolean p0, p0, Lu8f;->q:Z

    return p0
.end method

.method public static bridge synthetic t(Lu8f;)Z
    .locals 0

    iget-boolean p0, p0, Lu8f;->h:Z

    return p0
.end method


# virtual methods
.method public final j(Lz8f;)Lu8f;
    .locals 0

    invoke-virtual {p0, p1}, Lu8f;->u(Lz8f;)V

    return-object p0
.end method

.method public final u(Lz8f;)V
    .locals 2

    iget v0, p1, Lz8f;->a:I

    iput v0, p0, Lu8f;->a:I

    iget v0, p1, Lz8f;->b:I

    iput v0, p0, Lu8f;->b:I

    iget v0, p1, Lz8f;->c:I

    iput v0, p0, Lu8f;->c:I

    iget v0, p1, Lz8f;->d:I

    iput v0, p0, Lu8f;->d:I

    iget v0, p1, Lz8f;->i:I

    iput v0, p0, Lu8f;->e:I

    iget v0, p1, Lz8f;->j:I

    iput v0, p0, Lu8f;->f:I

    iget-boolean v0, p1, Lz8f;->k:Z

    iput-boolean v0, p0, Lu8f;->g:Z

    iget-boolean v0, p1, Lz8f;->l:Z

    iput-boolean v0, p0, Lu8f;->h:Z

    iget-object v0, p1, Lz8f;->m:Lcom/google/android/gms/internal/ads/zzfww;

    iput-object v0, p0, Lu8f;->i:Lcom/google/android/gms/internal/ads/zzfww;

    iget-object v0, p1, Lz8f;->n:Lcom/google/android/gms/internal/ads/zzfww;

    iput-object v0, p0, Lu8f;->j:Lcom/google/android/gms/internal/ads/zzfww;

    iget-object v0, p1, Lz8f;->p:Lcom/google/android/gms/internal/ads/zzfww;

    iput-object v0, p0, Lu8f;->k:Lcom/google/android/gms/internal/ads/zzfww;

    iget v0, p1, Lz8f;->r:I

    iput v0, p0, Lu8f;->l:I

    iget v0, p1, Lz8f;->s:I

    iput v0, p0, Lu8f;->m:I

    iget-object v0, p1, Lz8f;->t:Lcom/google/android/gms/internal/ads/zzfww;

    iput-object v0, p0, Lu8f;->n:Lcom/google/android/gms/internal/ads/zzfww;

    iget-object v0, p1, Lz8f;->u:Lf8f;

    iput-object v0, p0, Lu8f;->o:Lf8f;

    iget-object v0, p1, Lz8f;->v:Lcom/google/android/gms/internal/ads/zzfww;

    iput-object v0, p0, Lu8f;->p:Lcom/google/android/gms/internal/ads/zzfww;

    iget-boolean v0, p1, Lz8f;->x:Z

    iput-boolean v0, p0, Lu8f;->q:Z

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lz8f;->E:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lu8f;->s:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lz8f;->D:Lcom/google/android/gms/internal/ads/zzfwz;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lu8f;->r:Ljava/util/HashMap;

    return-void
.end method
