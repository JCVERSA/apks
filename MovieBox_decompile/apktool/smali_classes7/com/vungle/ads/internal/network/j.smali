.class public final synthetic Lcom/vungle/ads/internal/network/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/network/VungleApiClient;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/network/VungleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/vungle/ads/internal/network/j;->a:Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/network/j;->a:Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/vungle/ads/internal/network/VungleApiClient;->a(Lcom/vungle/ads/internal/network/VungleApiClient;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
