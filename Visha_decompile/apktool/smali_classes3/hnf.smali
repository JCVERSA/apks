.class public final Lhnf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lgnf;


# direct methods
.method public constructor <init>(Lgnf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhnf;->a:Lgnf;

    return-void
.end method

.method public static b(Lgnf;)Lcom/google/android/gms/ads/internal/zza;
    .locals 2

    new-instance p0, Lcom/google/android/gms/ads/internal/zza;

    new-instance v0, Lmhf;

    invoke-direct {v0}, Lmhf;-><init>()V

    new-instance v1, Lvgf;

    invoke-direct {v1}, Lvgf;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zza;-><init>(Lmhf;Lrgf;)V

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/internal/zza;
    .locals 0

    iget-object p0, p0, Lhnf;->a:Lgnf;

    invoke-static {p0}, Lhnf;->b(Lgnf;)Lcom/google/android/gms/ads/internal/zza;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lhnf;->a:Lgnf;

    invoke-static {p0}, Lhnf;->b(Lgnf;)Lcom/google/android/gms/ads/internal/zza;

    move-result-object p0

    return-object p0
.end method
