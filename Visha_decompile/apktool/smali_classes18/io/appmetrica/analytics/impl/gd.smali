.class public final Lio/appmetrica/analytics/impl/gd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/i;

.field public final b:Lio/appmetrica/analytics/impl/bn;

.field public final c:Lio/appmetrica/analytics/impl/bn;

.field public final d:Lio/appmetrica/analytics/impl/bn;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/q0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/i;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/i;-><init>(Lio/appmetrica/analytics/impl/q0;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/gd;->a:Lio/appmetrica/analytics/impl/i;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Context"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/gd;->b:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Session extra key"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/gd;->c:Lio/appmetrica/analytics/impl/bn;

    new-instance p1, Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/b0;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/b0;-><init>()V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/gd;->d:Lio/appmetrica/analytics/impl/bn;

    return-void
.end method
