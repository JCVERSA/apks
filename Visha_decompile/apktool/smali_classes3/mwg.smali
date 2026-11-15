.class public final synthetic Lmwg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzebe;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Lcom/google/android/gms/ads/internal/overlay/zzm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzebe;Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/zzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmwg;->b:Lcom/google/android/gms/internal/ads/zzebe;

    iput-object p2, p0, Lmwg;->c:Landroid/app/Activity;

    iput-object p3, p0, Lmwg;->d:Lcom/google/android/gms/ads/internal/overlay/zzm;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lmwg;->b:Lcom/google/android/gms/internal/ads/zzebe;

    iget-object v1, p0, Lmwg;->c:Landroid/app/Activity;

    iget-object p0, p0, Lmwg;->d:Lcom/google/android/gms/ads/internal/overlay/zzm;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzebe;->zzm(Lcom/google/android/gms/internal/ads/zzebe;Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/zzm;Landroid/content/DialogInterface;I)V

    return-void
.end method
