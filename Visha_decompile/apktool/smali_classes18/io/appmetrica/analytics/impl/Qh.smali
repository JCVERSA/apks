.class public final Lio/appmetrica/analytics/impl/Qh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/nn;

.field public final synthetic b:Lio/appmetrica/analytics/impl/Yh;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Yh;Lio/appmetrica/analytics/impl/nn;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Qh;->b:Lio/appmetrica/analytics/impl/Yh;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Qh;->a:Lio/appmetrica/analytics/impl/nn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Qh;->b:Lio/appmetrica/analytics/impl/Yh;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/Yh;->a:Lio/appmetrica/analytics/impl/q0;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Yh;->d:Landroid/content/Context;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Yh;->e:Lio/appmetrica/analytics/ReporterConfig;

    invoke-static {v1, v2, v0}, Lio/appmetrica/analytics/impl/Yh;->a(Lio/appmetrica/analytics/impl/q0;Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/Ya;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Qh;->a:Lio/appmetrica/analytics/impl/nn;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Ya;->a(Lio/appmetrica/analytics/impl/nn;)V

    return-void
.end method
