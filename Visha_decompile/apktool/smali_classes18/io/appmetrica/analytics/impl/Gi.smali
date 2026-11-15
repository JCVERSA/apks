.class public final Lio/appmetrica/analytics/impl/Gi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/z9;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/R8;)Ljava/lang/Integer;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/R8;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p1, Lio/appmetrica/analytics/impl/R8;->h:Lio/appmetrica/analytics/impl/hb;

    if-nez p0, :cond_0

    sget-object p0, Lio/appmetrica/analytics/impl/Cf;->a:Ljava/util/Map;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lio/appmetrica/analytics/impl/Cf;->c:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method
