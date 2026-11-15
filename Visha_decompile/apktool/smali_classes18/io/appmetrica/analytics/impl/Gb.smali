.class public final Lio/appmetrica/analytics/impl/Gb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Td;

.field public final b:Lio/appmetrica/analytics/impl/Td;

.field public final c:Lio/appmetrica/analytics/impl/Jk;

.field public final d:Lio/appmetrica/analytics/impl/Td;

.field public final e:Lio/appmetrica/analytics/impl/Td;

.field public final f:Lio/appmetrica/analytics/impl/Td;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/q0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Context"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Gb;->a:Lio/appmetrica/analytics/impl/Td;

    new-instance v0, Lio/appmetrica/analytics/impl/Td;

    const-string v1, "Config"

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Gb;->b:Lio/appmetrica/analytics/impl/Td;

    new-instance v0, Lio/appmetrica/analytics/impl/Jk;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Jk;-><init>(Lio/appmetrica/analytics/impl/q0;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Gb;->c:Lio/appmetrica/analytics/impl/Jk;

    new-instance p1, Lio/appmetrica/analytics/impl/Td;

    const-string v0, "Sender"

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gb;->d:Lio/appmetrica/analytics/impl/Td;

    new-instance p1, Lio/appmetrica/analytics/impl/Td;

    const-string v0, "Event"

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gb;->e:Lio/appmetrica/analytics/impl/Td;

    new-instance p1, Lio/appmetrica/analytics/impl/Td;

    const-string v0, "Payload"

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gb;->f:Lio/appmetrica/analytics/impl/Td;

    return-void
.end method
