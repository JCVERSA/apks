.class public final Lio/appmetrica/analytics/impl/S4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/na;

.field public final b:Lio/appmetrica/analytics/impl/pi;

.field public final c:Lio/appmetrica/analytics/impl/wn;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/O4;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/na;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/na;-><init>(Lio/appmetrica/analytics/impl/O4;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/S4;->a:Lio/appmetrica/analytics/impl/na;

    new-instance v0, Lio/appmetrica/analytics/impl/pi;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/pi;-><init>(Lio/appmetrica/analytics/impl/O4;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/S4;->b:Lio/appmetrica/analytics/impl/pi;

    new-instance v0, Lio/appmetrica/analytics/impl/wn;

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/ua;->g()Lio/appmetrica/analytics/impl/L6;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/appmetrica/analytics/impl/wn;-><init>(Lio/appmetrica/analytics/impl/O4;Lio/appmetrica/analytics/impl/L6;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/S4;->c:Lio/appmetrica/analytics/impl/wn;

    return-void
.end method
