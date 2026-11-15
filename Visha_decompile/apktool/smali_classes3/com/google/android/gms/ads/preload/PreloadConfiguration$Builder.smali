.class public Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/preload/PreloadConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/gms/ads/AdFormat;

.field public c:Lcom/google/android/gms/ads/AdRequest;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/AdFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;->c:Lcom/google/android/gms/ads/AdRequest;

    iput-object p1, p0, Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;->b:Lcom/google/android/gms/ads/AdFormat;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;->d:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;)Lcom/google/android/gms/ads/AdFormat;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;->b:Lcom/google/android/gms/ads/AdFormat;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;)Lcom/google/android/gms/ads/AdRequest;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;->c:Lcom/google/android/gms/ads/AdRequest;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/ads/preload/PreloadConfiguration;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/ads/preload/PreloadConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/preload/PreloadConfiguration;-><init>(Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;Lcom/google/android/gms/ads/preload/zza;)V

    return-object v0
.end method

.method public setAdRequest(Lcom/google/android/gms/ads/AdRequest;)Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;->c:Lcom/google/android/gms/ads/AdRequest;

    return-object p0
.end method

.method public setBufferSize(I)Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Lcom/google/android/gms/ads/preload/PreloadConfiguration$Builder;->d:I

    return-object p0
.end method
