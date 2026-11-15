.class public final Lk1h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmxg;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljkg;


# direct methods
.method public constructor <init>(Ljkg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk1h;->a:Ljava/util/Map;

    iput-object p1, p0, Lk1h;->b:Ljkg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lnxg;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lk1h;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnxg;

    if-nez v1, :cond_0

    iget-object v1, p0, Lk1h;->b:Ljkg;

    invoke-virtual {v1, p1, p2}, Ljkg;->c(Ljava/lang/String;Lorg/json/JSONObject;)Leoh;

    move-result-object p2

    new-instance v1, Lnxg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzedx;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzedx;-><init>()V

    invoke-direct {v1, p2, v2, p1}, Lnxg;-><init>(Ljava/lang/Object;Lx0g;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
