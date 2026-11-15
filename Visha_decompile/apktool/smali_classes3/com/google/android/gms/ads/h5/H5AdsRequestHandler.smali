.class public final Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq4f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq4f;

    invoke-direct {v0, p1, p2}, Lq4f;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;->a:Lq4f;

    return-void
.end method


# virtual methods
.method public clearAdObjects()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;->a:Lq4f;

    invoke-virtual {p0}, Lq4f;->a()V

    return-void
.end method

.method public handleH5AdsRequest(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/google/android/gms/ads/h5/H5AdsRequestHandler;->a:Lq4f;

    invoke-virtual {p0, p1}, Lq4f;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldInterceptRequest(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lq4f;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
