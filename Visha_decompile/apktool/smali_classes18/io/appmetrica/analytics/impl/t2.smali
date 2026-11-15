.class public final Lio/appmetrica/analytics/impl/t2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/s2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/s2;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/s2;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/t2;-><init>(Lio/appmetrica/analytics/impl/s2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/s2;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/t2;->a:Lio/appmetrica/analytics/impl/s2;

    return-void
.end method
