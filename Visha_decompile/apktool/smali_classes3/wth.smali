.class public final Lwth;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lh8i;

.field public final d:Lcom/google/android/gms/ads/internal/util/client/zzu;

.field public final e:Loth;

.field public final f:Lcom/google/android/gms/internal/ads/zzfgq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lh8i;Lcom/google/android/gms/ads/internal/util/client/zzu;Loth;Lcom/google/android/gms/internal/ads/zzfgq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwth;->a:Landroid/content/Context;

    iput-object p2, p0, Lwth;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lwth;->c:Lh8i;

    iput-object p4, p0, Lwth;->d:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iput-object p5, p0, Lwth;->e:Loth;

    iput-object p6, p0, Lwth;->f:Lcom/google/android/gms/internal/ads/zzfgq;

    return-void
.end method

.method public static synthetic a(Lwth;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;
    .locals 0

    iget-object p0, p0, Lwth;->d:Lcom/google/android/gms/ads/internal/util/client/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzu;->zza(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lwth;)Lcom/google/android/gms/ads/internal/util/client/zzu;
    .locals 0

    iget-object p0, p0, Lwth;->d:Lcom/google/android/gms/ads/internal/util/client/zzu;

    return-object p0
.end method

.method public static bridge synthetic c(Lwth;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 0

    iget-object p0, p0, Lwth;->f:Lcom/google/android/gms/internal/ads/zzfgq;

    return-object p0
.end method


# virtual methods
.method public final d(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;La2g;)V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgq;->zza()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lsze;->d:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwth;->a:Landroid/content/Context;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lvrh;->a(Landroid/content/Context;I)Lwrh;

    move-result-object v1

    invoke-interface {v1}, Lwrh;->zzi()Lwrh;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lwth;->d:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iget-object v2, p0, Lwth;->c:Lh8i;

    iget-object v3, p0, Lwth;->e:Loth;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/util/client/zzv;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzx;

    move-result-object p2

    new-instance v4, Lnth;

    invoke-direct {v4, p2, v0, v2, v3}, Lnth;-><init>(Lcom/google/android/gms/ads/internal/util/client/zzx;Lcom/google/android/gms/ads/internal/util/client/zzu;Lh8i;Loth;)V

    invoke-virtual {v4, p1}, Lnth;->d(Ljava/lang/String;)Lim5;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lwth;->c:Lh8i;

    new-instance v0, Luth;

    invoke-direct {v0, p0, p1}, Luth;-><init>(Lwth;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p1

    :goto_0
    new-instance p2, Lvth;

    invoke-direct {p2, p0, v1, p3, p4}, Lvth;-><init>(Lwth;Lwrh;Lcom/google/android/gms/internal/ads/zzfgn;La2g;)V

    iget-object p0, p0, Lwth;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final e(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
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

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, v1}, Lwth;->d(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;La2g;)V

    goto :goto_0

    :cond_0
    return-void
.end method
