.class public final Lcgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# direct methods
.method public constructor <init>(Leef;Lg8i;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x2f

    return p0
.end method

.method public final zzb()Lim5;
    .locals 3

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    sget-object v1, Lcye;->Q5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v2

    invoke-virtual {v2, v1}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Lim5;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/j8;->c([Lim5;)Lw7i;

    move-result-object v1

    new-instance v2, Lbgh;

    invoke-direct {v2, v0, p0}, Lbgh;-><init>(Lim5;Lim5;)V

    sget-object p0, Lzef;->a:Lg8i;

    invoke-virtual {v1, v2, p0}, Lw7i;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lim5;

    move-result-object p0

    return-object p0
.end method
