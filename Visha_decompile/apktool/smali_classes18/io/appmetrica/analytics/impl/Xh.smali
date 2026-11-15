.class public final Lio/appmetrica/analytics/impl/Xh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lio/appmetrica/analytics/impl/Yh;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Yh;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Xh;->c:Lio/appmetrica/analytics/impl/Yh;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Xh;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Xh;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Xh;->c:Lio/appmetrica/analytics/impl/Yh;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/Yh;->a:Lio/appmetrica/analytics/impl/q0;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/Yh;->d:Landroid/content/Context;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Yh;->e:Lio/appmetrica/analytics/ReporterConfig;

    invoke-static {v1, v2, v0}, Lio/appmetrica/analytics/impl/Yh;->a(Lio/appmetrica/analytics/impl/q0;Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/Ya;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Xh;->a:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Xh;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lio/appmetrica/analytics/IReporter;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
