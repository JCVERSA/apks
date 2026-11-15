.class public final Lio/appmetrica/analytics/impl/mj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Xa;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/Revenue;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/Revenue;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/mj;->a:Lio/appmetrica/analytics/Revenue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Ya;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/mj;->a:Lio/appmetrica/analytics/Revenue;

    invoke-interface {p1, p0}, Lio/appmetrica/analytics/IReporter;->reportRevenue(Lio/appmetrica/analytics/Revenue;)V

    return-void
.end method
