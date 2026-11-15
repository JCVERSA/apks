.class public final Lcom/google/android/gms/ads/h5/H5AdsWebViewClient;
.super Lp4f;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation


# instance fields
.field public final a:Ls4f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lp4f;-><init>()V

    new-instance v0, Ls4f;

    invoke-direct {v0, p1, p2}, Ls4f;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/h5/H5AdsWebViewClient;->a:Ls4f;

    return-void
.end method


# virtual methods
.method public a()Landroid/webkit/WebViewClient;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/h5/H5AdsWebViewClient;->a:Ls4f;

    return-object p0
.end method

.method public clearAdObjects()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/h5/H5AdsWebViewClient;->a:Ls4f;

    invoke-virtual {p0}, Ls4f;->b()V

    return-void
.end method

.method public getDelegateWebViewClient()Landroid/webkit/WebViewClient;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/ads/h5/H5AdsWebViewClient;->a:Ls4f;

    invoke-virtual {p0}, Ls4f;->a()Landroid/webkit/WebViewClient;

    move-result-object p0

    return-object p0
.end method

.method public setDelegateWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0
    .param p1    # Landroid/webkit/WebViewClient;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/ads/h5/H5AdsWebViewClient;->a:Ls4f;

    invoke-virtual {p0, p1}, Ls4f;->c(Landroid/webkit/WebViewClient;)V

    return-void
.end method
