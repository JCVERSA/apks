.class public final Lyjh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyjh;->a:Lqyi;

    iput-object p2, p0, Lyjh;->b:Lqyi;

    iput-object p3, p0, Lyjh;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lwjh;
    .locals 7

    iget-object v0, p0, Lyjh;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lyjh;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Looh;

    iget-object p0, p0, Lyjh;->c:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgph;

    sget-object v2, Lcye;->n6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v2

    invoke-virtual {v2}, Lqef;->j()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzg()Lief;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v2

    invoke-virtual {v2}, Lqef;->j()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzh()Lief;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lief;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    sget-object v2, Lcye;->D6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_3

    sget-object v2, Lcye;->m6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    new-instance v2, Lvih;

    invoke-direct {v2}, Lvih;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfdg;->zzc:Lcom/google/android/gms/internal/ads/zzfdg;

    new-instance v4, Lyih;

    invoke-direct {v4, v2}, Lyih;-><init>(Lwjh;)V

    invoke-virtual {p0, v3, v0, v1, v4}, Lgph;->a(Lcom/google/android/gms/internal/ads/zzfdg;Landroid/content/Context;Looh;Lmph;)Lfph;

    move-result-object p0

    new-instance v6, Lcom/google/android/gms/internal/ads/j5;

    new-instance v1, Lmjh;

    new-instance v0, Lljh;

    invoke-direct {v0}, Lljh;-><init>()V

    invoke-direct {v1, v0}, Lmjh;-><init>(Lwjh;)V

    iget-object v0, p0, Lfph;->a:Lvoh;

    new-instance v2, Lfjh;

    sget-object v5, Lzef;->a:Lg8i;

    invoke-direct {v2, v0, v5}, Lfjh;-><init>(Lvoh;Ljava/util/concurrent/Executor;)V

    iget-object v3, p0, Lfph;->b:Loph;

    invoke-interface {v0}, Lvoh;->zza()Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object p0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfdj;->zzf:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/j5;-><init>(Lwjh;Lwjh;Loph;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :cond_3
    new-instance v6, Lljh;

    invoke-direct {v6}, Lljh;-><init>()V

    :goto_1
    return-object v6
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lyjh;->a()Lwjh;

    move-result-object p0

    return-object p0
.end method
