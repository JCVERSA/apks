.class public final synthetic Lowg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzebe;

.field public final synthetic c:Lcom/google/android/gms/ads/internal/overlay/zzm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzebe;Lcom/google/android/gms/ads/internal/overlay/zzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lowg;->b:Lcom/google/android/gms/internal/ads/zzebe;

    iput-object p2, p0, Lowg;->c:Lcom/google/android/gms/ads/internal/overlay/zzm;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lowg;->b:Lcom/google/android/gms/internal/ads/zzebe;

    iget-object p0, p0, Lowg;->c:Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzebe;->zzn(Lcom/google/android/gms/internal/ads/zzebe;Lcom/google/android/gms/ads/internal/overlay/zzm;Landroid/content/DialogInterface;)V

    return-void
.end method
