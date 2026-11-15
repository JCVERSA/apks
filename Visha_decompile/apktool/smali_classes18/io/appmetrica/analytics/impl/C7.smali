.class public final Lio/appmetrica/analytics/impl/C7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/C7;->a:Ljava/util/HashMap;

    sget-object p0, Lio/appmetrica/analytics/impl/F5;->a:Ljava/util/List;

    const-string v1, "events"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lio/appmetrica/analytics/impl/H5;->a:Ljava/util/List;

    const-string v1, "sessions"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lio/appmetrica/analytics/impl/G5;->a:Ljava/util/List;

    const-string v1, "preferences"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lio/appmetrica/analytics/impl/E5;->a:Ljava/util/List;

    const-string v1, "binary_data"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
