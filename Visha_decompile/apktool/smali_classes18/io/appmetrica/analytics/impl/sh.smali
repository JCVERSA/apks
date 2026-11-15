.class public final Lio/appmetrica/analytics/impl/sh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/bn;

.field public final b:Lio/appmetrica/analytics/impl/bn;

.field public final c:Lio/appmetrica/analytics/impl/bn;

.field public final d:Lio/appmetrica/analytics/impl/bn;

.field public final e:Lio/appmetrica/analytics/impl/bn;

.field public final f:Lio/appmetrica/analytics/impl/bn;

.field public final g:Lio/appmetrica/analytics/impl/bn;

.field public final h:Lio/appmetrica/analytics/impl/bn;

.field public final i:Lio/appmetrica/analytics/impl/bn;

.field public final j:Lio/appmetrica/analytics/impl/bn;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/bn;

    new-instance v1, Lio/appmetrica/analytics/impl/Rd;

    const-string v2, "Event name"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Rd;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/sh;->a:Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/bn;

    new-instance v1, Lio/appmetrica/analytics/impl/Rd;

    const-string v2, "Error message"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Rd;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/sh;->b:Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/bn;

    new-instance v1, Lio/appmetrica/analytics/impl/Rd;

    const-string v2, "Error identifier"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Rd;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/sh;->c:Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/bn;

    new-instance v1, Lio/appmetrica/analytics/impl/Td;

    const-string v2, "Unhandled exception"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/sh;->d:Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/bn;

    new-instance v1, Lio/appmetrica/analytics/impl/Td;

    const-string v2, "Throwable"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/sh;->e:Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/bn;

    new-instance v1, Lio/appmetrica/analytics/impl/Td;

    const-string v2, "User profile"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/sh;->f:Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/bn;

    new-instance v1, Lio/appmetrica/analytics/impl/Td;

    const-string v2, "Revenue"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/sh;->g:Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/bn;

    new-instance v1, Lio/appmetrica/analytics/impl/Td;

    const-string v2, "AdRevenue"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/sh;->h:Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/bn;

    new-instance v1, Lio/appmetrica/analytics/impl/Td;

    const-string v2, "ECommerceEvent"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/sh;->i:Lio/appmetrica/analytics/impl/bn;

    new-instance v0, Lio/appmetrica/analytics/impl/bn;

    new-instance v1, Lio/appmetrica/analytics/impl/Td;

    const-string v2, "ANR all threads"

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Td;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/bn;-><init>(Lio/appmetrica/analytics/impl/Pn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/sh;->j:Lio/appmetrica/analytics/impl/bn;

    return-void
.end method
