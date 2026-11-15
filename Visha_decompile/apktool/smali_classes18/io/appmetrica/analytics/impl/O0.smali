.class public final Lio/appmetrica/analytics/impl/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/m1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m1;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/O0;->a:Lio/appmetrica/analytics/impl/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/O0;->a:Lio/appmetrica/analytics/impl/m1;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/m1;->a(Lio/appmetrica/analytics/impl/m1;)Lio/appmetrica/analytics/impl/Pa;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/IReporter;->sendEventsBuffer()V

    return-void
.end method
