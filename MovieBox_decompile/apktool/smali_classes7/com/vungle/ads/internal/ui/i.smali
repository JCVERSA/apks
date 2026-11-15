.class public final synthetic Lcom/vungle/ads/internal/ui/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/ui/view/b$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkotlinx/serialization/json/JsonObject;

.field public final synthetic d:Landroid/os/Handler;

.field public final synthetic e:Lcom/vungle/ads/internal/ui/j;

.field public final synthetic f:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/view/b$a;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Landroid/os/Handler;Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/i;->a:Lcom/vungle/ads/internal/ui/view/b$a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/vungle/ads/internal/ui/i;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/vungle/ads/internal/ui/i;->c:Lkotlinx/serialization/json/JsonObject;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/vungle/ads/internal/ui/i;->d:Landroid/os/Handler;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/vungle/ads/internal/ui/i;->e:Lcom/vungle/ads/internal/ui/j;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/vungle/ads/internal/ui/i;->f:Landroid/webkit/WebView;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/i;->a:Lcom/vungle/ads/internal/ui/view/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/ui/i;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/vungle/ads/internal/ui/i;->c:Lkotlinx/serialization/json/JsonObject;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/vungle/ads/internal/ui/i;->d:Landroid/os/Handler;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/vungle/ads/internal/ui/i;->e:Lcom/vungle/ads/internal/ui/j;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/vungle/ads/internal/ui/i;->f:Landroid/webkit/WebView;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/ui/j;->b(Lcom/vungle/ads/internal/ui/view/b$a;Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;Landroid/os/Handler;Lcom/vungle/ads/internal/ui/j;Landroid/webkit/WebView;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
