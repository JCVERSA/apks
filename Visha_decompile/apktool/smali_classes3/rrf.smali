.class public final Lrrf;
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

    iput-object p1, p0, Lrrf;->a:Lqyi;

    iput-object p2, p0, Lrrf;->b:Lqyi;

    return-void
.end method

.method public static b(Ljava/util/concurrent/ScheduledExecutorService;Lfy0;)Lcom/google/android/gms/internal/ads/i4;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/i4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/i4;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lfy0;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/i4;
    .locals 1

    iget-object v0, p0, Lrrf;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object p0, p0, Lrrf;->b:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfy0;

    invoke-static {v0, p0}, Lrrf;->b(Ljava/util/concurrent/ScheduledExecutorService;Lfy0;)Lcom/google/android/gms/internal/ads/i4;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lrrf;->a()Lcom/google/android/gms/internal/ads/i4;

    move-result-object p0

    return-object p0
.end method
