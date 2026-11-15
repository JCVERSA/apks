.class public final Lio/appmetrica/analytics/impl/Mi;
.super Lio/appmetrica/analytics/impl/Gg;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/if;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/m5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->s()Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/Mi;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/if;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/if;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Gg;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Mi;->b:Lio/appmetrica/analytics/impl/if;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a6;->getValue()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "preloadInfo"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Mi;->b:Lio/appmetrica/analytics/impl/if;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/ff;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/impl/ff;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/U7;->b(Lio/appmetrica/analytics/impl/Y7;)Z

    const/4 p0, 0x0

    return p0
.end method
