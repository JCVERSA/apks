.class public final Lzwe;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbas;)Ljava/util/concurrent/Future;
    .locals 1

    new-instance v0, Lywe;

    invoke-direct {v0, p0}, Lywe;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lywe;->c(Lcom/google/android/gms/internal/ads/zzbas;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
