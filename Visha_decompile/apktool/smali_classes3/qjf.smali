.class public final Lqjf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/c4;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/c4;)V
    .locals 0

    iput-object p1, p0, Lqjf;->a:Lcom/google/android/gms/internal/ads/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    check-cast p1, Lejf;

    if-eqz p2, :cond_1

    const-string p1, "height"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lqjf;->a:Lcom/google/android/gms/internal/ads/c4;

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/c4;->h(Lcom/google/android/gms/internal/ads/c4;)I

    move-result p2

    if-eq p2, p1, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/c4;->s(Lcom/google/android/gms/internal/ads/c4;I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Exception occurred while getting webview content height"

    invoke-static {p1, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
