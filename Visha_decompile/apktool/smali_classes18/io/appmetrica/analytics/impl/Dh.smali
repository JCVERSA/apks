.class public final Lio/appmetrica/analytics/impl/Dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Yh;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Yh;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Dh;->a:Lio/appmetrica/analytics/impl/Yh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Dh;->a:Lio/appmetrica/analytics/impl/Yh;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Yh;->a:Lio/appmetrica/analytics/impl/q0;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Yh;->d:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Yh;->e:Lio/appmetrica/analytics/ReporterConfig;

    invoke-static {v0, v1, p0}, Lio/appmetrica/analytics/impl/Yh;->a(Lio/appmetrica/analytics/impl/q0;Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/Ya;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/IReporter;->pauseSession()V

    return-void
.end method
