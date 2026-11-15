.class public final synthetic Lcom/google/android/gms/internal/ads/zzbru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lq9f;

.field public final synthetic zzb:Z


# direct methods
.method public synthetic constructor <init>(Lq9f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbru;->zza:Lq9f;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbru;->zzb:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbru;->zza:Lq9f;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzbru;->zzb:Z

    invoke-static {v0, p0}, Lq9f;->h(Lq9f;Z)V

    return-void
.end method
