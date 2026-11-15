.class public final synthetic Lcom/google/android/gms/internal/ads/zzdin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lceg;

.field public final synthetic zzb:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lceg;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdin;->zza:Lceg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdin;->zzb:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdin;->zza:Lceg;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdin;->zzb:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lceg;->a(Lceg;Landroid/view/ViewGroup;)V

    return-void
.end method
