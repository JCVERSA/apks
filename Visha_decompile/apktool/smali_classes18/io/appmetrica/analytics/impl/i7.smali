.class public final Lio/appmetrica/analytics/impl/i7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/P6;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/i7;->b:Ljava/util/ArrayList;

    new-instance v1, Lio/appmetrica/analytics/impl/Q6;

    new-instance v2, Lio/appmetrica/analytics/impl/U6;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/U6;-><init>()V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Q6;-><init>(Lio/appmetrica/analytics/impl/yg;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/i7;->a:Lio/appmetrica/analytics/impl/P6;

    new-instance p0, Lio/appmetrica/analytics/impl/Q6;

    new-instance v1, Lio/appmetrica/analytics/impl/be;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/be;-><init>()V

    invoke-direct {p0, v1}, Lio/appmetrica/analytics/impl/Q6;-><init>(Lio/appmetrica/analytics/impl/yg;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
