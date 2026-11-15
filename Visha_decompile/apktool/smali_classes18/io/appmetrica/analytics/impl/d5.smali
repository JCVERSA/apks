.class public final Lio/appmetrica/analytics/impl/d5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/x9;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/x5;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/B9;Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Fg;Lio/appmetrica/analytics/impl/f5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/c5;

    invoke-direct {v0, p2, p3}, Lio/appmetrica/analytics/impl/c5;-><init>(Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Fg;)V

    new-instance p2, Lio/appmetrica/analytics/impl/x5;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/c5;->a()Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/c5;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, p1, p3, v0, p4}, Lio/appmetrica/analytics/impl/x5;-><init>(Lio/appmetrica/analytics/impl/B9;Ljava/util/List;Ljava/util/List;Lio/appmetrica/analytics/impl/f5;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/d5;->a:Lio/appmetrica/analytics/impl/x5;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/w9;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/d5;->a:Lio/appmetrica/analytics/impl/x5;

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/x5;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/d5;->a:Lio/appmetrica/analytics/impl/x5;

    return-object p0
.end method
