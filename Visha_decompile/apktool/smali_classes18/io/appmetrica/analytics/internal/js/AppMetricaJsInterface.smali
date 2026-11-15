.class public Lio/appmetrica/analytics/internal/js/AppMetricaJsInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/impl/m1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m1;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/m1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/internal/js/AppMetricaJsInterface;->a:Lio/appmetrica/analytics/impl/m1;

    return-void
.end method


# virtual methods
.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/internal/js/AppMetricaJsInterface;->a:Lio/appmetrica/analytics/impl/m1;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/m1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
