.class public final synthetic Lcom/vungle/ads/internal/ui/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/ui/j;

.field public final synthetic b:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/f;->a:Lcom/vungle/ads/internal/ui/j;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/vungle/ads/internal/ui/f;->b:Landroid/webkit/WebView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/f;->a:Lcom/vungle/ads/internal/ui/j;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/f;->b:Landroid/webkit/WebView;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/vungle/ads/internal/ui/j;->a(Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
