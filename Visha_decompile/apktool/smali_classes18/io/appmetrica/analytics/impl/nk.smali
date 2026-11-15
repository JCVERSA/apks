.class public final Lio/appmetrica/analytics/impl/nk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/rk;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/f5;->a()Ljava/lang/String;

    new-instance v0, Lio/appmetrica/analytics/impl/rk;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/rk;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/nk;->a:Lio/appmetrica/analytics/impl/rk;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/rk;->a()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/a;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/nk;->b:Ljava/util/Map;

    return-void
.end method
