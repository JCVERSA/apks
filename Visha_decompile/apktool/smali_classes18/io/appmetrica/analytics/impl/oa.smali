.class public final Lio/appmetrica/analytics/impl/oa;
.super Lio/appmetrica/analytics/impl/g;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String; = "foreground"


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/uk;Lio/appmetrica/analytics/impl/yk;Lio/appmetrica/analytics/impl/Fj;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V
    .locals 8

    sget-object v0, Lio/appmetrica/analytics/impl/zk;->b:Lio/appmetrica/analytics/impl/zk;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/tk;->a(Lio/appmetrica/analytics/impl/zk;)Lio/appmetrica/analytics/impl/sk;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/sk;->a()Lio/appmetrica/analytics/impl/tk;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/appmetrica/analytics/impl/g;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/uk;Lio/appmetrica/analytics/impl/yk;Lio/appmetrica/analytics/impl/tk;Lio/appmetrica/analytics/impl/Ya;Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;)V

    return-void
.end method
