.class public final Lio/appmetrica/analytics/impl/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/lc;

.field public final b:Lio/appmetrica/analytics/impl/ja;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/lc;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/n0;->a:Lio/appmetrica/analytics/impl/lc;

    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->h()Lio/appmetrica/analytics/impl/ja;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/n0;->b:Lio/appmetrica/analytics/impl/ja;

    return-void
.end method
