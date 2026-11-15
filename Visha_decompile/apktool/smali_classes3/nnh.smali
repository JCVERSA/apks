.class public final Lnnh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv7i;


# instance fields
.field public final synthetic a:Lejf;

.field public final synthetic b:Lwpf;

.field public final synthetic c:Lwth;

.field public final synthetic d:Ldwg;


# direct methods
.method public constructor <init>(Lejf;Lwpf;Lwth;Ldwg;)V
    .locals 0

    iput-object p1, p0, Lnnh;->a:Lejf;

    iput-object p2, p0, Lnnh;->b:Lwpf;

    iput-object p3, p0, Lnnh;->c:Lwth;

    iput-object p4, p0, Lnnh;->d:Ldwg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 9

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    iget-object p1, p0, Lnnh;->a:Lejf;

    invoke-interface {p1}, Lejf;->zzD()Lhmh;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lhmh;->i0:Z

    if-nez v1, :cond_1

    iget-object p1, v0, Lhmh;->x0:Lcom/google/android/gms/ads/internal/util/client/zzv;

    sget-object v0, Lcye;->ga:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v1

    invoke-virtual {v1, v0}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnnh;->b:Lwpf;

    if-eqz v0, :cond_0

    invoke-static {v4}, Lwpf;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lnnh;->c:Lwth;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zze()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v0, v4, p0, v1, p1}, Lwpf;->i(Ljava/lang/String;Lwth;Ljava/util/Random;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    return-void

    :cond_0
    iget-object p0, p0, Lnnh;->c:Lwth;

    const/4 v0, 0x0

    invoke-virtual {p0, v4, p1, v0, v0}, Lwth;->d(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;La2g;)V

    return-void

    :cond_1
    invoke-interface {p1}, Lejf;->zzR()Lkmh;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Common configuration cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string p1, "BufferingGmsgHandlers.getBufferingClickGmsgHandler"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lqef;->x(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v6, Lfwg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lqef;

    move-result-object v5

    invoke-interface {p1}, Lejf;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v5, p1}, Lqef;->a(Landroid/content/Context;)Z

    move-result p1

    sget-object v5, Lcye;->k6:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v7

    invoke-virtual {v7, v5}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v5, v0, Lhmh;->S:Z

    if-eqz v5, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    move v5, v8

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, v0, Lhmh;->d0:Lqaf;

    if-eqz v0, :cond_4

    move v8, v7

    :cond_4
    const/4 v0, 0x2

    if-nez p1, :cond_5

    if-nez v5, :cond_5

    if-eqz v8, :cond_6

    :cond_5
    move v5, v0

    goto :goto_1

    :cond_6
    move v5, v7

    :goto_1
    iget-object p1, v1, Lkmh;->b:Ljava/lang/String;

    move-object v0, v6

    move-wide v1, v2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lfwg;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lnnh;->d:Ldwg;

    invoke-virtual {p0, v6}, Ldwg;->e(Lfwg;)V

    return-void
.end method
