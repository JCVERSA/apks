.class public final Leig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final b:Lcom/google/android/gms/ads/internal/zza;

.field public final c:Landroid/content/Context;

.field public final d:Lsmg;

.field public final e:Ldwg;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Lfre;

.field public final h:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final i:Lwth;

.field public final j:Lcom/google/android/gms/internal/ads/zzebe;

.field public final k:Linh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lfre;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lmjf;Ldwg;Lwth;Lsmg;Lcom/google/android/gms/internal/ads/zzebe;Linh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leig;->c:Landroid/content/Context;

    iput-object p2, p0, Leig;->f:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Leig;->g:Lfre;

    iput-object p4, p0, Leig;->h:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Leig;->b:Lcom/google/android/gms/ads/internal/zza;

    iput-object p7, p0, Leig;->e:Ldwg;

    iput-object p8, p0, Leig;->i:Lwth;

    iput-object p9, p0, Leig;->d:Lsmg;

    iput-object p10, p0, Leig;->j:Lcom/google/android/gms/internal/ads/zzebe;

    iput-object p11, p0, Leig;->k:Linh;

    return-void
.end method

.method public static bridge synthetic a(Leig;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Leig;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Leig;)Lfre;
    .locals 0

    iget-object p0, p0, Leig;->g:Lfre;

    return-object p0
.end method

.method public static bridge synthetic c(Leig;)Lcom/google/android/gms/ads/internal/zza;
    .locals 0

    iget-object p0, p0, Leig;->b:Lcom/google/android/gms/ads/internal/zza;

    return-object p0
.end method

.method public static bridge synthetic d(Leig;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 0

    iget-object p0, p0, Leig;->h:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object p0
.end method

.method public static bridge synthetic e(Leig;)Lsmg;
    .locals 0

    iget-object p0, p0, Leig;->d:Lsmg;

    return-object p0
.end method

.method public static bridge synthetic f(Leig;)Ldwg;
    .locals 0

    iget-object p0, p0, Leig;->e:Ldwg;

    return-object p0
.end method

.method public static bridge synthetic g(Leig;)Lcom/google/android/gms/internal/ads/zzebe;
    .locals 0

    iget-object p0, p0, Leig;->j:Lcom/google/android/gms/internal/ads/zzebe;

    return-object p0
.end method

.method public static bridge synthetic h(Leig;)Linh;
    .locals 0

    iget-object p0, p0, Leig;->k:Linh;

    return-object p0
.end method

.method public static bridge synthetic i(Leig;)Lwth;
    .locals 0

    iget-object p0, p0, Leig;->i:Lwth;

    return-object p0
.end method

.method public static bridge synthetic j(Leig;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Leig;->f:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lhig;

    invoke-direct {v0, p0}, Lhig;-><init>(Leig;)V

    invoke-virtual {v0}, Lhig;->k()V

    return-object v0
.end method
