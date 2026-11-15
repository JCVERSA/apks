.class public final Loug;
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

    iput-object p1, p0, Loug;->a:Lqyi;

    iput-object p2, p0, Loug;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Loug;->a:Lqyi;

    check-cast v0, Lwug;

    invoke-virtual {v0}, Lwug;->a()Lcom/google/android/gms/internal/ads/z4;

    move-result-object v0

    iget-object p0, p0, Loug;->b:Lqyi;

    check-cast p0, Lpkf;

    invoke-virtual {p0}, Lpkf;->a()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object p0

    new-instance v1, Lnug;

    invoke-direct {v1, v0, p0}, Lnug;-><init>(Lcom/google/android/gms/internal/ads/z4;Lcom/google/android/gms/ads/internal/util/zzg;)V

    return-object v1
.end method
