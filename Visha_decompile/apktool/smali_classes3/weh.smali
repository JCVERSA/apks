.class public final synthetic Lweh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 6

    check-cast p1, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-instance p1, Lafh;

    const-string v1, ""

    invoke-direct {p1, v1, v0, p0}, Lafh;-><init>(Ljava/lang/String;ILzeh;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/ua;->b0()Lhvi;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;->getTopics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/privacysandbox/ads/adservices/topics/Topic;

    invoke-static {}, Lcom/google/android/gms/internal/ads/ta;->b0()Lgvi;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic;->getTopicId()I

    move-result v4

    invoke-virtual {v3, v4}, Lgvi;->x(I)Lgvi;

    invoke-virtual {v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic;->getModelVersion()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lgvi;->v(J)Lgvi;

    invoke-virtual {v2}, Landroidx/privacysandbox/ads/adservices/topics/Topic;->getTaxonomyVersion()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lgvi;->w(J)Lgvi;

    invoke-virtual {v3}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ta;

    invoke-virtual {v1, v2}, Lhvi;->v(Lcom/google/android/gms/internal/ads/ta;)Lhvi;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Llsi;->q()Lcom/google/android/gms/internal/ads/ia;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/ua;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/aa;->l()[B

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lafh;

    invoke-direct {v1, p1, v0, p0}, Lafh;-><init>(Ljava/lang/String;ILzeh;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    :goto_1
    return-object p0
.end method
