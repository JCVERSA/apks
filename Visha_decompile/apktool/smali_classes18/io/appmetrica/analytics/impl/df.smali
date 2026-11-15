.class public final Lio/appmetrica/analytics/impl/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ii;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Oe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->x()Lio/appmetrica/analytics/impl/Oe;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/df;-><init>(Lio/appmetrica/analytics/impl/Oe;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Oe;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/df;->a:Lio/appmetrica/analytics/impl/Oe;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/df;->a:Lio/appmetrica/analytics/impl/Oe;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Oe;->i()Z

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/df;->a:Lio/appmetrica/analytics/impl/Oe;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Oe;->h()Lio/appmetrica/analytics/impl/Oe;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Me;->b()V

    return-void
.end method
