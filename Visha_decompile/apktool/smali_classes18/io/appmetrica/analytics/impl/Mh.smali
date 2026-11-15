.class public final Lio/appmetrica/analytics/impl/Mh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/ReporterConfig;

.field public final synthetic b:Lio/appmetrica/analytics/impl/Yh;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Yh;Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Mh;->b:Lio/appmetrica/analytics/impl/Yh;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Mh;->a:Lio/appmetrica/analytics/ReporterConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Mh;->b:Lio/appmetrica/analytics/impl/Yh;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Mh;->a:Lio/appmetrica/analytics/ReporterConfig;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/Yh;->a:Lio/appmetrica/analytics/impl/q0;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Yh;->d:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/p0;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/p0;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Ja;->a(Lio/appmetrica/analytics/ReporterConfig;)V

    return-void
.end method
