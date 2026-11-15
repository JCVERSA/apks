.class public final Lio/appmetrica/analytics/impl/rd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/bk;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->o()Lio/appmetrica/analytics/impl/bk;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/rd;->a:Lio/appmetrica/analytics/impl/bk;

    return-void
.end method
