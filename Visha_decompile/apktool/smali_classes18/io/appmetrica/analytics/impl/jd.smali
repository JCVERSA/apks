.class public final Lio/appmetrica/analytics/impl/jd;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/nd;

.field public final synthetic b:Lio/appmetrica/analytics/ModuleEvent;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/nd;Lio/appmetrica/analytics/ModuleEvent;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/jd;->a:Lio/appmetrica/analytics/impl/nd;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/jd;->b:Lio/appmetrica/analytics/ModuleEvent;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/jd;->a:Lio/appmetrica/analytics/impl/nd;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/nd;->a(Lio/appmetrica/analytics/impl/nd;)Lio/appmetrica/analytics/impl/Pa;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/jd;->b:Lio/appmetrica/analytics/ModuleEvent;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/IModuleReporter;->reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V

    return-void
.end method
