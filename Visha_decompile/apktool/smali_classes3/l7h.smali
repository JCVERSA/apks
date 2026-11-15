.class public final Ll7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Lsvf;

.field public final f:Lmoh;

.field public final g:Lenh;

.field public final h:Lcom/google/android/gms/ads/internal/util/zzg;

.field public final i:Llmg;

.field public final j:Lkwf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lsvf;Lmoh;Lenh;Llmg;Lkwf;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll7h;->a:Landroid/content/Context;

    iput-object p2, p0, Ll7h;->b:Ljava/lang/String;

    iput-object p3, p0, Ll7h;->c:Ljava/lang/String;

    iput-object p4, p0, Ll7h;->e:Lsvf;

    iput-object p5, p0, Ll7h;->f:Lmoh;

    iput-object p6, p0, Ll7h;->g:Lenh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object p1

    invoke-virtual {p1}, Lqef;->j()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object p1

    iput-object p1, p0, Ll7h;->h:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p7, p0, Ll7h;->i:Llmg;

    iput-object p8, p0, Ll7h;->j:Lkwf;

    iput-wide p9, p0, Ll7h;->d:J

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method public final zzb()Lim5;
    .locals 9

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Ll7h;->i:Llmg;

    invoke-virtual {v0}, Llmg;->b()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Ll7h;->b:Ljava/lang/String;

    const-string v4, "seq_num"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcye;->q2:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v4

    invoke-virtual {v4, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v1

    invoke-interface {v1}, Lfy0;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Ll7h;->d:J

    sub-long/2addr v4, v6

    const-string v1, "tsacc"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Ll7h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    move-result v1

    const/4 v4, 0x1

    if-eq v4, v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v4, "foreground"

    invoke-virtual {v0, v4, v1}, Llmg;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ll7h;->e:Lsvf;

    iget-object v1, p0, Ll7h;->g:Lenh;

    iget-object v4, v1, Lenh;->d:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-virtual {v0, v4}, Lsvf;->k(Lcom/google/android/gms/ads/internal/client/zzm;)V

    iget-object v0, p0, Ll7h;->f:Lmoh;

    invoke-virtual {v0}, Lmoh;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v4, p0, Ll7h;->a:Landroid/content/Context;

    iget-object v5, p0, Ll7h;->c:Ljava/lang/String;

    iget-object v6, p0, Ll7h;->h:Lcom/google/android/gms/ads/internal/util/zzg;

    iget-object v7, p0, Ll7h;->j:Lkwf;

    iget-object p0, v1, Lenh;->f:Ljava/lang/String;

    new-instance v8, Lm7h;

    move-object v0, v8

    move-object v1, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lm7h;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzg;Ljava/lang/String;Lkwf;)V

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
