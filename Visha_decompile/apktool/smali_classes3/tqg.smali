.class public final Ltqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltqg;->a:Lqyi;

    iput-object p2, p0, Ltqg;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ltqg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llrh;

    iget-object p0, p0, Ltqg;->b:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/ads/internal/util/zzaa;->zza(Landroid/content/Context;)Landroid/webkit/CookieManager;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzffn;->zzv:Lcom/google/android/gms/internal/ads/zzffn;

    new-instance v2, Lnqg;

    invoke-direct {v2, p0}, Lnqg;-><init>(Landroid/webkit/CookieManager;)V

    invoke-static {v2, v1, v0}, Lxqh;->a(Ljava/util/concurrent/Callable;Ljava/lang/Object;Lerh;)Lcrh;

    move-result-object p0

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcrh;->i(JLjava/util/concurrent/TimeUnit;)Lcrh;

    move-result-object p0

    new-instance v0, Loqg;

    invoke-direct {v0}, Loqg;-><init>()V

    new-instance v1, Lyqh;

    invoke-direct {v1, v0}, Lyqh;-><init>(Lpqh;)V

    const-class v0, Ljava/lang/Exception;

    invoke-virtual {p0, v0, v1}, Lcrh;->c(Ljava/lang/Class;Lk7i;)Lcrh;

    move-result-object p0

    invoke-virtual {p0}, Lcrh;->a()Lrqh;

    move-result-object p0

    return-object p0
.end method
