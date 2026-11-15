.class public final Lio/appmetrica/analytics/impl/ic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/x9;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/x5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/B9;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Fg;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/Le;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/impl/hc;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p0

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/hc;-><init>(Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Fg;Lio/appmetrica/analytics/impl/x9;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/Le;)V

    new-instance p2, Lio/appmetrica/analytics/impl/x5;

    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/hc;->a()Ljava/util/List;

    move-result-object p3

    invoke-virtual {v6}, Lio/appmetrica/analytics/impl/hc;->b()Ljava/util/List;

    move-result-object p4

    invoke-direct {p2, p1, p3, p4, p5}, Lio/appmetrica/analytics/impl/x5;-><init>(Lio/appmetrica/analytics/impl/B9;Ljava/util/List;Ljava/util/List;Lio/appmetrica/analytics/impl/f5;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/ic;->a:Lio/appmetrica/analytics/impl/x5;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/w9;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ic;->a:Lio/appmetrica/analytics/impl/x5;

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/x5;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ic;->a:Lio/appmetrica/analytics/impl/x5;

    return-object p0
.end method
