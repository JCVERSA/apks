.class public final Lio/appmetrica/analytics/impl/T0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/DeferredDeeplinkListener;

.field public final synthetic b:Lio/appmetrica/analytics/impl/m1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m1;Lio/appmetrica/analytics/DeferredDeeplinkListener;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/T0;->b:Lio/appmetrica/analytics/impl/m1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/T0;->a:Lio/appmetrica/analytics/DeferredDeeplinkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T0;->b:Lio/appmetrica/analytics/impl/m1;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/m1;->a:Lio/appmetrica/analytics/impl/q0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lio/appmetrica/analytics/impl/p0;->e:Lio/appmetrica/analytics/impl/p0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T0;->a:Lio/appmetrica/analytics/DeferredDeeplinkListener;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p0;->f()Lio/appmetrica/analytics/impl/Ja;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Ja;->a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V

    return-void
.end method
