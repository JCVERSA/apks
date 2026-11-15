.class public final synthetic Lsba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ActivationBarrierCallback;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/T5;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/T5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsba;->a:Lio/appmetrica/analytics/impl/T5;

    return-void
.end method


# virtual methods
.method public final onWaitFinished()V
    .locals 0

    iget-object p0, p0, Lsba;->a:Lio/appmetrica/analytics/impl/T5;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/T5;->a(Lio/appmetrica/analytics/impl/T5;)V

    return-void
.end method
