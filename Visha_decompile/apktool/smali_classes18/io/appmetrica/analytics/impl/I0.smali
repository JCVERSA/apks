.class public final Lio/appmetrica/analytics/impl/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/location/Location;

.field public final synthetic b:Lio/appmetrica/analytics/impl/m1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m1;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/I0;->b:Lio/appmetrica/analytics/impl/m1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/I0;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/I0;->b:Lio/appmetrica/analytics/impl/m1;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/m1;->a:Lio/appmetrica/analytics/impl/q0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/I0;->a:Landroid/location/Location;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/impl/p0;->c()Lio/appmetrica/analytics/impl/Nc;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Nc;->a(Landroid/location/Location;)V

    return-void
.end method
