.class public final Lio/appmetrica/analytics/impl/Yc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Eb;

.field public final b:Lio/appmetrica/analytics/impl/cd;

.field public final c:Lio/appmetrica/analytics/impl/q9;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Eb;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->g()Lio/appmetrica/analytics/impl/Le;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Eb;-><init>(Lio/appmetrica/analytics/impl/Wk;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Yc;->a:Lio/appmetrica/analytics/impl/Eb;

    new-instance v0, Lio/appmetrica/analytics/impl/cd;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->g()Lio/appmetrica/analytics/impl/Le;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lio/appmetrica/analytics/impl/cd;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/impl/Wk;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Yc;->b:Lio/appmetrica/analytics/impl/cd;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->k()Lio/appmetrica/analytics/impl/q9;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Yc;->c:Lio/appmetrica/analytics/impl/q9;

    return-void
.end method
