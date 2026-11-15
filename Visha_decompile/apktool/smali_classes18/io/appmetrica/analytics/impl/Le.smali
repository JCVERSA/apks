.class public final Lio/appmetrica/analytics/impl/Le;
.super Lio/appmetrica/analytics/impl/xd;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Yn;


# static fields
.field public static final d:J = 0x0L

.field public static final e:I = -0x1

.field public static final f:Ljava/lang/String; = ""

.field public static final g:Ljava/lang/String; = ""

.field public static final h:Lio/appmetrica/analytics/impl/Ne;

.field public static final i:Lio/appmetrica/analytics/impl/Ne;

.field public static final j:Lio/appmetrica/analytics/impl/Ne;

.field public static final k:Lio/appmetrica/analytics/impl/Ne;

.field public static final l:Lio/appmetrica/analytics/impl/Ne;

.field public static final m:Lio/appmetrica/analytics/impl/Ne;

.field public static final n:Lio/appmetrica/analytics/impl/Ne;

.field public static final o:Lio/appmetrica/analytics/impl/Ne;

.field public static final p:Lio/appmetrica/analytics/impl/Ne;

.field public static final q:Ljava/lang/String; = "SESSION_"

.field public static final r:Lio/appmetrica/analytics/impl/Ne;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "PERMISSIONS_CHECK_TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Le;->h:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "PROFILE_ID"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Le;->i:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "APP_ENVIRONMENT"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Le;->j:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "APP_ENVIRONMENT_REVISION"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Le;->k:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "LAST_APP_VERSION_WITH_FEATURES"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Le;->l:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "APPLICATION_FEATURES"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Le;->m:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "CERTIFICATES_SHA1_FINGERPRINTS"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Le;->n:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "VITAL_DATA"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Le;->o:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "SENT_EXTERNAL_ATTRIBUTIONS"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Le;->p:Lio/appmetrica/analytics/impl/Ne;

    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "MAIN_REPORTER_EVENTS_TRIGGER_CONDITION_MET"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Le;->r:Lio/appmetrica/analytics/impl/Ne;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Oa;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/xd;-><init>(Lio/appmetrica/analytics/impl/Oa;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lio/appmetrica/analytics/impl/Le;
    .locals 1

    .line 13
    sget-object v0, Lio/appmetrica/analytics/impl/Le;->l:Lio/appmetrica/analytics/impl/Ne;

    .line 14
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;I)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Le;

    return-object p0
.end method

.method public final a(J)Lio/appmetrica/analytics/impl/Le;
    .locals 1

    .line 10
    sget-object v0, Lio/appmetrica/analytics/impl/Le;->h:Lio/appmetrica/analytics/impl/Ne;

    .line 11
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v0, p1, p2}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Le;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/c0;)Lio/appmetrica/analytics/impl/Le;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lio/appmetrica/analytics/impl/Le;->j:Lio/appmetrica/analytics/impl/Ne;

    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/c0;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Me;

    .line 5
    sget-object v0, Lio/appmetrica/analytics/impl/Le;->k:Lio/appmetrica/analytics/impl/Ne;

    .line 6
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 7
    iget-wide v1, p1, Lio/appmetrica/analytics/impl/c0;->b:J

    invoke-virtual {p0, v0, v1, v2}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;J)Lio/appmetrica/analytics/impl/Me;

    .line 8
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Le;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/impl/Le;"
        }
    .end annotation

    .line 16
    sget-object v0, Lio/appmetrica/analytics/impl/Le;->n:Lio/appmetrica/analytics/impl/Ne;

    .line 17
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Me;->a(Ljava/lang/String;Ljava/util/List;)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Le;

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 22
    sget-object v0, Lio/appmetrica/analytics/impl/Le;->o:Lio/appmetrica/analytics/impl/Ne;

    .line 23
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 24
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, v1}, Lio/appmetrica/analytics/impl/Oa;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    sget-object v0, Lio/appmetrica/analytics/impl/Le;->o:Lio/appmetrica/analytics/impl/Ne;

    .line 26
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Me;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 29
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catchall_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 31
    :cond_0
    sget-object p1, Lio/appmetrica/analytics/impl/Le;->p:Lio/appmetrica/analytics/impl/Ne;

    .line 32
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 33
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Me;

    return-void
.end method

.method public final a(Z)Z
    .locals 1

    .line 19
    sget-object v0, Lio/appmetrica/analytics/impl/Le;->r:Lio/appmetrica/analytics/impl/Ne;

    .line 20
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 21
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, p1}, Lio/appmetrica/analytics/impl/Oa;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final b(Z)V
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/Le;->r:Lio/appmetrica/analytics/impl/Ne;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Z)Lio/appmetrica/analytics/impl/Me;

    return-void
.end method

.method public final c()Ljava/util/Set;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Oa;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lio/appmetrica/analytics/impl/c0;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Lio/appmetrica/analytics/impl/c0;

    sget-object v1, Lio/appmetrica/analytics/impl/Le;->j:Lio/appmetrica/analytics/impl/Ne;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    const-string v2, "{}"

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {v3, v1, v2}, Lio/appmetrica/analytics/impl/Oa;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/appmetrica/analytics/impl/Le;->k:Lio/appmetrica/analytics/impl/Ne;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v2, v4, v5}, Lio/appmetrica/analytics/impl/Oa;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/c0;-><init>(Ljava/lang/String;J)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Le;
    .locals 2

    .line 5
    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "SESSION_"

    invoke-direct {v0, v1, p1}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Le;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/Le;->m:Lio/appmetrica/analytics/impl/Ne;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 3
    const-string v1, ""

    .line 4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, v1}, Lio/appmetrica/analytics/impl/Oa;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 12
    new-instance p0, Lio/appmetrica/analytics/impl/Ne;

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/Le;->n:Lio/appmetrica/analytics/impl/Ne;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 5
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, v2}, Lio/appmetrica/analytics/impl/Oa;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    new-array v1, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    .line 9
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p0, v3, :cond_1

    .line 10
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :catchall_0
    :cond_1
    if-nez v1, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method public final g()I
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/Le;->l:Lio/appmetrica/analytics/impl/Ne;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    const/4 v1, -0x1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, v1}, Lio/appmetrica/analytics/impl/Oa;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final h()J
    .locals 3

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/Le;->h:Lio/appmetrica/analytics/impl/Ne;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, v0, v1, v2}, Lio/appmetrica/analytics/impl/Oa;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4
    new-instance v0, Lio/appmetrica/analytics/impl/Ne;

    const-string v1, "SESSION_"

    invoke-direct {v0, v1, p1}, Lio/appmetrica/analytics/impl/Ne;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 6
    const-string v0, ""

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    invoke-interface {p0, p1, v0}, Lio/appmetrica/analytics/impl/Oa;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Le;
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/Le;->m:Lio/appmetrica/analytics/impl/Ne;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Le;

    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    sget-object v0, Lio/appmetrica/analytics/impl/Le;->i:Lio/appmetrica/analytics/impl/Ne;

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lio/appmetrica/analytics/impl/Oa;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Le;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/Le;->i:Lio/appmetrica/analytics/impl/Ne;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Me;->b(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Me;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Le;

    return-object p0
.end method

.method public final j()Ljava/util/Map;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/Le;->p:Lio/appmetrica/analytics/impl/Ne;

    .line 6
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Ne;->b:Ljava/lang/String;

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Me;->a:Lio/appmetrica/analytics/impl/Oa;

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lio/appmetrica/analytics/impl/Oa;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    return-object v0
.end method
