.class public final Lcom/google/android/gms/internal/ads/zzcea;
.super Lcom/google/android/gms/internal/ads/zzcam;
.source "SourceFile"


# instance fields
.field public final d:Ldhf;

.field public e:Luif;

.field public f:Landroid/net/Uri;

.field public g:Lqgf;

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldhf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcam;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcea;->i:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcea;->h:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcea;->d:Ldhf;

    invoke-virtual {p2, p0}, Ldhf;->a(Lcom/google/android/gms/internal/ads/zzcam;)V

    return-void
.end method

.method private final a()Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcea;->e:Luif;

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzcea;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->g:Lqgf;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcea;->h:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Lqgf;->zzg()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->h:Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcea;->g:Lqgf;

    invoke-interface {p0}, Lqgf;->zze()V

    :cond_1
    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/gms/internal/ads/zzcea;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcea;->g:Lqgf;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lqgf;->zzd()V

    :cond_0
    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/gms/internal/ads/zzcea;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcea;->g:Lqgf;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lqgf;->zzf()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->d:Ldhf;

    invoke-virtual {v0}, Ldhf;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcam;->c:Lfhf;

    invoke-virtual {v0}, Lfhf;->b()V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcea;->i:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->d:Ldhf;

    invoke-virtual {v0}, Ldhf;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcam;->c:Lfhf;

    invoke-virtual {v0}, Lfhf;->c()V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcea;->i:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/ads/zzcea;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zzb()I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcea;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final zzc()I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcea;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final zzd()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zze()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zzf()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzg()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzh()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 0

    const-string p0, "ImmersivePlayer"

    return-object p0
.end method

.method public final zzn()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->e:Luif;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcam;->c:Lfhf;

    invoke-virtual {p0}, Lfhf;->a()F

    :cond_0
    return-void
.end method

.method public final zzo()V
    .locals 2

    const-string v0, "AdImmersivePlayerView pause"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcea;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->e:Luif;

    invoke-virtual {v0}, Luif;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->e:Luif;

    invoke-virtual {v0}, Luif;->a()V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcea;->b(I)V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdz;-><init>(Lcom/google/android/gms/internal/ads/zzcea;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzp()V
    .locals 2

    const-string v0, "AdImmersivePlayerView play"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcea;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->e:Luif;

    invoke-virtual {v0}, Luif;->b()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcea;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcam;->b:Lzgf;

    invoke-virtual {v0}, Lzgf;->b()V

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdy;-><init>(Lcom/google/android/gms/internal/ads/zzcea;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzq(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AdImmersivePlayerView seek "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zzr(Lqgf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcea;->g:Lqgf;

    return-void
.end method

.method public final zzs(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcea;->f:Landroid/net/Uri;

    new-instance v0, Luif;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Luif;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->e:Luif;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcea;->b(I)V

    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lpzh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcdx;-><init>(Lcom/google/android/gms/internal/ads/zzcea;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzt()V
    .locals 1

    const-string v0, "AdImmersivePlayerView stop"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->e:Luif;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luif;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcea;->e:Luif;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcea;->b(I)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcea;->d:Ldhf;

    invoke-virtual {p0}, Ldhf;->d()V

    return-void
.end method

.method public final zzu(FF)V
    .locals 0

    return-void
.end method
