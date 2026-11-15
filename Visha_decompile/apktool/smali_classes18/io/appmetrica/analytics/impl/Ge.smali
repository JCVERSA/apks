.class public final Lio/appmetrica/analytics/impl/Ge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/bn;

.field public final b:Lio/appmetrica/analytics/impl/bn;

.field public final c:Lio/appmetrica/analytics/impl/Qd;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/bn;

    new-instance v1, Lio/appmetrica/analytics/impl/Td;

    const-string v2, "Error details"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ge;->a:Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/bn;

    new-instance v1, Lio/appmetrica/analytics/impl/Rd;

    const-string v2, "Error identifier"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Rd;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ge;->b:Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Qd;

    const-string v1, "Stacktrace"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Qd;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ge;->c:Lio/appmetrica/analytics/impl/Qd;

    return-void
.end method
