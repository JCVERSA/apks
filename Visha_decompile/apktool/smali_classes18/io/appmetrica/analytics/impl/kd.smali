.class public final Lio/appmetrica/analytics/impl/kd;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/nd;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/nd;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/kd;->a:Lio/appmetrica/analytics/impl/nd;

    iput p2, p0, Lio/appmetrica/analytics/impl/kd;->b:I

    iput-object p3, p0, Lio/appmetrica/analytics/impl/kd;->c:Ljava/lang/String;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/kd;->a:Lio/appmetrica/analytics/impl/nd;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/nd;->a(Lio/appmetrica/analytics/impl/nd;)Lio/appmetrica/analytics/impl/Pa;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/M9;

    iget v2, p0, Lio/appmetrica/analytics/impl/kd;->b:I

    iget-object p0, p0, Lio/appmetrica/analytics/impl/kd;->c:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lio/appmetrica/analytics/impl/M9;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/impl/Pa;->a(Lio/appmetrica/analytics/ExternalAttribution;)V

    return-void
.end method
