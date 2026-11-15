.class public final Lio/appmetrica/analytics/impl/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Throwable;

.field public final synthetic d:Lio/appmetrica/analytics/impl/m1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/k1;->d:Lio/appmetrica/analytics/impl/m1;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/k1;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/k1;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/k1;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/k1;->d:Lio/appmetrica/analytics/impl/m1;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/m1;->a(Lio/appmetrica/analytics/impl/m1;)Lio/appmetrica/analytics/impl/Pa;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/k1;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/k1;->b:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/k1;->c:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2, p0}, Lio/appmetrica/analytics/IReporter;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
