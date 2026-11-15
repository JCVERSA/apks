.class public final Lio/appmetrica/analytics/impl/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/ExternalAttribution;

.field public final synthetic b:Lio/appmetrica/analytics/impl/m1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m1;Lio/appmetrica/analytics/ExternalAttribution;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/d1;->b:Lio/appmetrica/analytics/impl/m1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/d1;->a:Lio/appmetrica/analytics/ExternalAttribution;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/d1;->b:Lio/appmetrica/analytics/impl/m1;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/m1;->a(Lio/appmetrica/analytics/impl/m1;)Lio/appmetrica/analytics/impl/Pa;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/d1;->a:Lio/appmetrica/analytics/ExternalAttribution;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Pa;->a(Lio/appmetrica/analytics/ExternalAttribution;)V

    return-void
.end method
