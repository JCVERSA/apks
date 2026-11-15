.class public final Lio/appmetrica/analytics/impl/V3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ii;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Oe;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Oe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Oe;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Oe;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Oe;->j()Z

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Oe;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Oe;->g()Lio/appmetrica/analytics/impl/Oe;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Me;->b()V

    return-void
.end method
