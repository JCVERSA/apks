.class public final Lgph;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgph;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzfdg;Landroid/content/Context;Looh;Lmph;)Lfph;
    .locals 1

    iget-object p0, p0, Lgph;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfph;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/k5;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfdj;->zza(Lcom/google/android/gms/internal/ads/zzfdg;Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/k5;-><init>(Lcom/google/android/gms/internal/ads/zzfdj;)V

    new-instance p2, Loph;

    invoke-direct {p2, v0, p3, p4}, Loph;-><init>(Lvoh;Looh;Lmph;)V

    new-instance p3, Lfph;

    invoke-direct {p3, v0, p2}, Lfph;-><init>(Lvoh;Loph;)V

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :cond_0
    return-object v0
.end method
