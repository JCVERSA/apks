.class public final synthetic Lurc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/Xb;

.field public final synthetic c:Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/Xb;Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lurc;->b:Lio/appmetrica/analytics/impl/Xb;

    iput-object p2, p0, Lurc;->c:Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;

    iput-boolean p3, p0, Lurc;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lurc;->b:Lio/appmetrica/analytics/impl/Xb;

    iget-object v1, p0, Lurc;->c:Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;

    iget-boolean p0, p0, Lurc;->d:Z

    invoke-static {v0, v1, p0}, Lio/appmetrica/analytics/impl/Xb;->a(Lio/appmetrica/analytics/impl/Xb;Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;Z)V

    return-void
.end method
