.class public final synthetic Ljrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 0

    check-cast p1, Ljava/util/concurrent/TimeoutException;

    new-instance p0, Lcom/google/android/gms/internal/ads/zzdvg;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0
.end method
