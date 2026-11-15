.class public final Lase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhyh;


# instance fields
.field public final a:Ltwh;

.field public final b:Ljxh;

.field public final c:Lcom/google/android/gms/internal/ads/f0;

.field public final d:Lcom/google/android/gms/internal/ads/zzavu;

.field public final e:Lmre;

.field public final f:Lose;

.field public final g:Lhse;

.field public final h:Lzre;


# direct methods
.method public constructor <init>(Ltwh;Ljxh;Lcom/google/android/gms/internal/ads/f0;Lcom/google/android/gms/internal/ads/zzavu;Lmre;Lose;Lhse;Lzre;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lase;->a:Ltwh;

    iput-object p2, p0, Lase;->b:Ljxh;

    iput-object p3, p0, Lase;->c:Lcom/google/android/gms/internal/ads/f0;

    iput-object p4, p0, Lase;->d:Lcom/google/android/gms/internal/ads/zzavu;

    iput-object p5, p0, Lase;->e:Lmre;

    iput-object p6, p0, Lase;->f:Lose;

    iput-object p7, p0, Lase;->g:Lhse;

    iput-object p8, p0, Lase;->h:Lzre;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lase;->c:Lcom/google/android/gms/internal/ads/f0;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/f0;->d(Landroid/view/View;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lase;->a:Ltwh;

    iget-object v2, p0, Lase;->b:Ljxh;

    invoke-virtual {v2}, Ljxh;->b()Lcom/google/android/gms/internal/ads/t;

    move-result-object v2

    invoke-virtual {v1}, Ltwh;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "v"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ltwh;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "gms"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/t;->T0()Ljava/lang/String;

    move-result-object v1

    const-string v3, "int"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/t;->S0()Lcom/google/android/gms/internal/ads/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y;->b0()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "attts"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/t;->S0()Lcom/google/android/gms/internal/ads/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y;->e0()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v1

    const-string v3, "att"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/t;->S0()Lcom/google/android/gms/internal/ads/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/y;->f0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attkid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lase;->d:Lcom/google/android/gms/internal/ads/zzavu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzavu;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "up"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "t"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lase;->g:Lhse;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lhse;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tcq"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lhse;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tpq"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lhse;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tcv"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lhse;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tpv"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lhse;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tchv"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lhse;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tphv"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lhse;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tcc"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lhse;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tpc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lase;->e:Lmre;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmre;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "nt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lase;->f:Lose;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lose;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "vs"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lose;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "vf"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final zza()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lase;->c:Lcom/google/android/gms/internal/ads/f0;

    invoke-virtual {p0}, Lase;->b()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "lts"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final zzb()Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lase;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final zzc()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lase;->h:Lzre;

    invoke-virtual {p0}, Lase;->b()Ljava/util/Map;

    move-result-object p0

    if-eqz v0, :cond_0

    const-string v1, "vst"

    invoke-virtual {v0}, Lzre;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method
