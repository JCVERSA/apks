.class public final synthetic Lnwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/w0;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/w0;Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnwd;->b:Lio/appmetrica/analytics/impl/w0;

    iput-object p2, p0, Lnwd;->c:Landroid/content/Context;

    iput-object p3, p0, Lnwd;->d:Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnwd;->b:Lio/appmetrica/analytics/impl/w0;

    iget-object v1, p0, Lnwd;->c:Landroid/content/Context;

    iget-object p0, p0, Lnwd;->d:Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;

    invoke-static {v0, v1, p0}, Lio/appmetrica/analytics/impl/w0;->a(Lio/appmetrica/analytics/impl/w0;Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    return-void
.end method
