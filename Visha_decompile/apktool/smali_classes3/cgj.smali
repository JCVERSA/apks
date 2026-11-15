.class public final Lcgj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/ads/internal/zzu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzu;)V
    .locals 0

    iput-object p1, p0, Lcgj;->b:Lcom/google/android/gms/ads/internal/zzu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcgj;->b:Lcom/google/android/gms/ads/internal/zzu;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzu;->zzf(Lcom/google/android/gms/ads/internal/zzu;)Lfre;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzu;->zzf(Lcom/google/android/gms/ads/internal/zzu;)Lfre;

    move-result-object p0

    invoke-virtual {p0, p2}, Lfre;->d(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
