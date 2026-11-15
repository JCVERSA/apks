.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lzcg;

.field public final synthetic zzb:Landroid/view/View;

.field public final synthetic zzc:Z

.field public final synthetic zzd:I


# direct methods
.method public synthetic constructor <init>(Lzcg;Landroid/view/View;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zza:Lzcg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zzb:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zzc:Z

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zzd:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zza:Lzcg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zzb:Landroid/view/View;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zzc:Z

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzdhf;->zzd:I

    invoke-static {v0, v1, v2, p0}, Lzcg;->Z(Lzcg;Landroid/view/View;ZI)V

    return-void
.end method
