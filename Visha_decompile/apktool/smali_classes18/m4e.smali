.class public final synthetic Lm4e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ActivationBarrierCallback;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/ze;

.field public final synthetic b:Lio/appmetrica/analytics/impl/x9;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/ze;Lio/appmetrica/analytics/impl/x9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm4e;->a:Lio/appmetrica/analytics/impl/ze;

    iput-object p2, p0, Lm4e;->b:Lio/appmetrica/analytics/impl/x9;

    return-void
.end method


# virtual methods
.method public final onWaitFinished()V
    .locals 1

    iget-object v0, p0, Lm4e;->a:Lio/appmetrica/analytics/impl/ze;

    iget-object p0, p0, Lm4e;->b:Lio/appmetrica/analytics/impl/x9;

    invoke-static {v0, p0}, Lio/appmetrica/analytics/impl/ze;->a(Lio/appmetrica/analytics/impl/ze;Lio/appmetrica/analytics/impl/x9;)V

    return-void
.end method
