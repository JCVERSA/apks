.class public final Lsnh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhmh;

.field public final b:Lkmh;

.field public final c:Lwth;

.field public final d:Loth;

.field public final e:Lcom/google/android/gms/internal/ads/zzfgn;

.field public final f:Lwpf;


# direct methods
.method public constructor <init>(Lwth;Loth;Lhmh;Lkmh;Lwpf;Lcom/google/android/gms/internal/ads/zzfgn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lsnh;->a:Lhmh;

    iput-object p4, p0, Lsnh;->b:Lkmh;

    iput-object p1, p0, Lsnh;->c:Lwth;

    iput-object p2, p0, Lsnh;->d:Loth;

    iput-object p5, p0, Lsnh;->f:Lwpf;

    iput-object p6, p0, Lsnh;->e:Lcom/google/android/gms/internal/ads/zzfgn;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;La2g;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, p2}, Lsnh;->b(Ljava/lang/String;ILa2g;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;ILa2g;)V
    .locals 2

    iget-object v0, p0, Lsnh;->a:Lhmh;

    iget-boolean v1, v0, Lhmh;->i0:Z

    if-nez v1, :cond_0

    iget-object p2, p0, Lsnh;->c:Lwth;

    iget-object p0, p0, Lsnh;->e:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v0, v0, Lhmh;->x0:Lcom/google/android/gms/ads/internal/util/client/zzv;

    invoke-virtual {p2, p1, v0, p0, p3}, Lwth;->d(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;La2g;)V

    return-void

    :cond_0
    iget-object p3, p0, Lsnh;->d:Loth;

    iget-object p0, p0, Lsnh;->b:Lkmh;

    iget-object p0, p0, Lkmh;->b:Ljava/lang/String;

    invoke-virtual {p3, p1, p0, p2}, Loth;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final c(Ljava/util/List;I)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcye;->ga:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lwpf;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsnh;->f:Lwpf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zze()Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lwpf;->e(Ljava/lang/String;Ljava/util/Random;)Lim5;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    :goto_1
    new-instance v1, Lrnh;

    invoke-direct {v1, p0, p2}, Lrnh;-><init>(Lsnh;I)V

    sget-object v2, Lzef;->a:Lg8i;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_1
    return-void
.end method
