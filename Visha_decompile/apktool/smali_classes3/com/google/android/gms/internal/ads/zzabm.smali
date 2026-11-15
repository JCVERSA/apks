.class public final synthetic Lcom/google/android/gms/internal/ads/zzabm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lk7e;

.field public final synthetic zzb:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lk7e;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lk7e;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabm;->zzb:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabm;->zza:Lk7e;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabm;->zzb:Ljava/lang/Exception;

    invoke-static {v0, p0}, Lk7e;->a(Lk7e;Ljava/lang/Exception;)V

    return-void
.end method
