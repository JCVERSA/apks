.class public final Lfih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnzf;
.implements Lp1g;
.implements Ltjh;
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;
.implements Lc2g;
.implements Lzzf;
.implements Lt8g;


# instance fields
.field public final b:Looh;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;

.field public i:Lfih;


# direct methods
.method public constructor <init>(Looh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lfih;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lfih;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lfih;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lfih;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lfih;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lfih;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lfih;->i:Lfih;

    iput-object p1, p0, Lfih;->b:Looh;

    return-void
.end method

.method public static a(Lfih;)Lfih;
    .locals 2

    new-instance v0, Lfih;

    iget-object v1, p0, Lfih;->b:Looh;

    invoke-direct {v0, v1}, Lfih;-><init>(Looh;)V

    iput-object p0, v0, Lfih;->i:Lfih;

    return-object v0
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    iget-object v0, p0, Lfih;->i:Lfih;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lfih;->A(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    :cond_0
    iget-object p0, p0, Lfih;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Laih;

    invoke-direct {v0, p1}, Laih;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    new-instance v0, Lbih;

    invoke-direct {v0, p1}, Lbih;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/ads/internal/client/zzt;)V
    .locals 1

    iget-object v0, p0, Lfih;->i:Lfih;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lfih;->b(Lcom/google/android/gms/ads/internal/client/zzt;)V

    return-void

    :cond_0
    iget-object p0, p0, Lfih;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lqhh;

    invoke-direct {v0, p1}, Lqhh;-><init>(Lcom/google/android/gms/ads/internal/client/zzt;)V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final g(Ltjh;)V
    .locals 0

    check-cast p1, Lfih;

    iput-object p1, p0, Lfih;->i:Lfih;

    return-void
.end method

.method public final h(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    iget-object v0, p0, Lfih;->i:Lfih;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lfih;->h(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    :cond_0
    iget-object p0, p0, Lfih;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Luhh;

    invoke-direct {v0, p1}, Luhh;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lfih;->i:Lfih;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfih;->k()V

    return-void

    :cond_0
    iget-object v0, p0, Lfih;->b:Looh;

    invoke-virtual {v0}, Looh;->a()V

    iget-object v0, p0, Lfih;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lxhh;

    invoke-direct {v1}, Lxhh;-><init>()V

    invoke-static {v0, v1}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    iget-object p0, p0, Lfih;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lyhh;

    invoke-direct {v0}, Lyhh;-><init>()V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final n(Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 1

    iget-object v0, p0, Lfih;->i:Lfih;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lfih;->n(Lcom/google/android/gms/internal/ads/zzbaa;)V

    return-void

    :cond_0
    iget-object p0, p0, Lfih;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lvhh;

    invoke-direct {v0, p1}, Lvhh;-><init>(Lcom/google/android/gms/internal/ads/zzbaa;)V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final o(Lcom/google/android/gms/ads/internal/overlay/zzr;)V
    .locals 0

    iget-object p0, p0, Lfih;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final p(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    .locals 0

    iget-object p0, p0, Lfih;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Lcom/google/android/gms/internal/ads/zzbad;)V
    .locals 0

    iget-object p0, p0, Lfih;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Lcom/google/android/gms/internal/ads/zzbah;)V
    .locals 0

    iget-object p0, p0, Lfih;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzdE()V
    .locals 0

    return-void
.end method

.method public final zzdd()V
    .locals 1

    iget-object v0, p0, Lfih;->i:Lfih;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfih;->zzdd()V

    return-void

    :cond_0
    iget-object p0, p0, Lfih;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lwhh;

    invoke-direct {v0}, Lwhh;-><init>()V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final zzdi()V
    .locals 0

    return-void
.end method

.method public final zzdo()V
    .locals 1

    iget-object v0, p0, Lfih;->i:Lfih;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfih;->zzdo()V

    return-void

    :cond_0
    iget-object p0, p0, Lfih;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lthh;

    invoke-direct {v0}, Lthh;-><init>()V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final zzdp()V
    .locals 2

    iget-object v0, p0, Lfih;->i:Lfih;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfih;->zzdp()V

    return-void

    :cond_0
    iget-object v0, p0, Lfih;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Leih;

    invoke-direct {v1}, Leih;-><init>()V

    invoke-static {v0, v1}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    iget-object p0, p0, Lfih;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lrhh;

    invoke-direct {v0}, Lrhh;-><init>()V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    new-instance v0, Lshh;

    invoke-direct {v0}, Lshh;-><init>()V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final zzdr()V
    .locals 1

    iget-object v0, p0, Lfih;->i:Lfih;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfih;->zzdr()V

    return-void

    :cond_0
    iget-object p0, p0, Lfih;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ldih;

    invoke-direct {v0}, Ldih;-><init>()V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final zzds(I)V
    .locals 1

    iget-object v0, p0, Lfih;->i:Lfih;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lfih;->zzds(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lfih;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lzhh;

    invoke-direct {v0, p1}, Lzhh;-><init>(I)V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final zzg()V
    .locals 1

    iget-object v0, p0, Lfih;->i:Lfih;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfih;->zzg()V

    return-void

    :cond_0
    iget-object p0, p0, Lfih;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcih;

    invoke-direct {v0}, Lcih;-><init>()V

    invoke-static {p0, v0}, Lhjh;->a(Ljava/util/concurrent/atomic/AtomicReference;Lgjh;)V

    return-void
.end method

.method public final zzu()V
    .locals 0

    return-void
.end method
