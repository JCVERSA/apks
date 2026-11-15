.class public final synthetic Lcom/google/android/gms/internal/ads/zzef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ly0h;

.field public final synthetic zzb:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ly0h;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:Ly0h;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzef;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:Ly0h;

    iget-object v0, v0, Ly0h;->a:Lv2h;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzef;->zzb:Landroid/content/Context;

    invoke-static {v0, p0}, Lv2h;->d(Lv2h;Landroid/content/Context;)V

    return-void
.end method
