.class public final Lio/appmetrica/analytics/impl/sm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/sm;->a:Ljava/util/HashMap;

    new-instance p0, Lio/appmetrica/analytics/impl/mm;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/mm;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/nm;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/nm;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/om;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/om;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/pm;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/pm;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/impl/qm;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/qm;-><init>()V

    const-class v5, Lio/appmetrica/analytics/impl/Ll;

    invoke-virtual {v0, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p0, Lio/appmetrica/analytics/impl/X1;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p0, Lio/appmetrica/analytics/impl/Se;

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p0, Lio/appmetrica/analytics/impl/u2;

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p0, Lio/appmetrica/analytics/impl/M3;

    invoke-virtual {v0, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/tm;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/rm;->a:Lio/appmetrica/analytics/impl/sm;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/sm;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/tm;

    return-object p0
.end method
