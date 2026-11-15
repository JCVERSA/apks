.class public final Lio/appmetrica/analytics/impl/wh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/n5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/dm;)Lio/appmetrica/analytics/impl/Wa;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/wh;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/dm;)Lio/appmetrica/analytics/impl/vh;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/dm;)Lio/appmetrica/analytics/impl/vh;
    .locals 8

    new-instance p0, Lio/appmetrica/analytics/impl/vh;

    sget-object v0, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->g()Lio/appmetrica/analytics/impl/L6;

    move-result-object v4

    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/dm;->e()Lio/appmetrica/analytics/impl/Hl;

    move-result-object v5

    new-instance v6, Lio/appmetrica/analytics/impl/ug;

    invoke-direct {v6, p4}, Lio/appmetrica/analytics/impl/ug;-><init>(Lio/appmetrica/analytics/impl/dm;)V

    new-instance v7, Lio/appmetrica/analytics/impl/e5;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/e5;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/vh;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;Lio/appmetrica/analytics/impl/F4;Lio/appmetrica/analytics/impl/L6;Lio/appmetrica/analytics/impl/Hl;Lio/appmetrica/analytics/impl/k5;Lio/appmetrica/analytics/impl/y9;)V

    return-object p0
.end method
