.class public final La2g;
.super La6g;
.source "SourceFile"

# interfaces
.implements Ld0g;
.implements Lp1g;


# instance fields
.field public final c:Lhmh;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Lvmh;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lhmh;Lvmh;)V
    .locals 0

    invoke-direct {p0, p1}, La6g;-><init>(Ljava/util/Set;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, La2g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, La2g;->c:Lhmh;

    iput-object p3, p0, La2g;->e:Lvmh;

    return-void
.end method

.method private final zzb()V
    .locals 3

    sget-object v0, Lcye;->S7:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La2g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La2g;->c:Lhmh;

    iget-object v0, v0, Lhmh;->e0:Lcom/google/android/gms/ads/internal/client/zzt;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/android/gms/ads/internal/client/zzt;->zza:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    new-instance v1, Ly1g;

    invoke-direct {v1, v0}, Ly1g;-><init>(Lcom/google/android/gms/ads/internal/client/zzt;)V

    invoke-virtual {p0, v1}, La6g;->E(Lz5g;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final F(Lcom/google/android/gms/ads/internal/client/zzt;)V
    .locals 1

    iget-object v0, p0, La2g;->e:Lvmh;

    invoke-static {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzf(Lvmh;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La2g;->c:Lhmh;

    iget-boolean v0, v0, Lhmh;->B0:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lz1g;

    invoke-direct {v0, p1}, Lz1g;-><init>(Lcom/google/android/gms/ads/internal/client/zzt;)V

    invoke-virtual {p0, v0}, La6g;->E(Lz5g;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzg()V
    .locals 2

    iget-object v0, p0, La2g;->c:Lhmh;

    iget v0, v0, Lhmh;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, La2g;->zzb()V

    :cond_0
    return-void
.end method

.method public final zzs()V
    .locals 2

    iget-object v0, p0, La2g;->c:Lhmh;

    iget v0, v0, Lhmh;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, La2g;->zzb()V

    return-void
.end method
