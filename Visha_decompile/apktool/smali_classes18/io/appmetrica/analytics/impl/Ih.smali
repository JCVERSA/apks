.class public final Lio/appmetrica/analytics/impl/Ih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Provider;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/q0;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lio/appmetrica/analytics/ReporterConfig;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/q0;Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ih;->a:Lio/appmetrica/analytics/impl/q0;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Ih;->b:Landroid/content/Context;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Ih;->c:Lio/appmetrica/analytics/ReporterConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ih;->a:Lio/appmetrica/analytics/impl/q0;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Ih;->b:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ih;->c:Lio/appmetrica/analytics/ReporterConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/p0;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/p0;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Ja;->c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/Ya;

    move-result-object p0

    return-object p0
.end method
