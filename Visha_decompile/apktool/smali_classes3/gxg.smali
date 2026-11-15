.class public final Lgxg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxg;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lim5;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lgxg;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;->from(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    move-result-object v0

    iput-object v0, p0, Lgxg;->a:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MeasurementManagerFutures is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;->getMeasurementApiStatusAsync()Lim5;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/net/Uri;Landroid/view/InputEvent;)Lim5;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lgxg;->a:Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/java/measurement/MeasurementManagerFutures;->registerSourceAsync(Landroid/net/Uri;Landroid/view/InputEvent;)Lim5;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/j8;->g(Ljava/lang/Throwable;)Lim5;

    move-result-object p0

    return-object p0
.end method
