.class public final synthetic Lj4j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liog;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lqze;

    sget p0, Ll6j;->X:I

    new-instance p0, Lcom/google/android/gms/internal/ads/zzko;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzko;-><init>(I)V

    const/16 v0, 0x3eb

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzd(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p0

    invoke-interface {p1, p0}, Lqze;->s(Lcom/google/android/gms/internal/ads/zzba;)V

    return-void
.end method
