.class public final synthetic Lcom/vungle/ads/internal/presenter/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/j;->a:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/j;->a:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->b(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;Landroid/content/DialogInterface;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
