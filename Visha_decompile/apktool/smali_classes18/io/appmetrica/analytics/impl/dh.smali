.class public final Lio/appmetrica/analytics/impl/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/a6;

.field public final c:Landroid/os/Bundle;

.field public final d:Lio/appmetrica/analytics/impl/s4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/a6;Landroid/os/Bundle;Lio/appmetrica/analytics/impl/s4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/dh;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/dh;->b:Lio/appmetrica/analytics/impl/a6;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/dh;->c:Landroid/os/Bundle;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/dh;->d:Lio/appmetrica/analytics/impl/s4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/dh;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/dh;->c:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/impl/b4;->a(Landroid/content/Context;Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/b4;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lio/appmetrica/analytics/impl/h4;->a(Lio/appmetrica/analytics/impl/b4;)Lio/appmetrica/analytics/impl/h4;

    move-result-object v1

    sget-object v2, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/ua;->u()Lio/appmetrica/analytics/impl/Ui;

    move-result-object v2

    iget-object v3, v0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v3}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v4}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getAppBuildNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/appmetrica/analytics/impl/Ui;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v3}, Lio/appmetrica/analytics/internal/CounterConfiguration;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/Ui;->a(Ljava/lang/String;)V

    new-instance v2, Lio/appmetrica/analytics/impl/G4;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/G4;-><init>(Lio/appmetrica/analytics/impl/b4;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/dh;->d:Lio/appmetrica/analytics/impl/s4;

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/s4;->a(Lio/appmetrica/analytics/impl/h4;Lio/appmetrica/analytics/impl/G4;)Lio/appmetrica/analytics/impl/w4;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/dh;->b:Lio/appmetrica/analytics/impl/a6;

    invoke-interface {v0, v1, v2}, Lio/appmetrica/analytics/impl/w4;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/G4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lio/appmetrica/analytics/impl/ej;->a:Lio/appmetrica/analytics/impl/Fj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception during processing event with type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/appmetrica/analytics/impl/dh;->b:Lio/appmetrica/analytics/impl/a6;

    iget v3, v3, Lio/appmetrica/analytics/impl/a6;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/dh;->b:Lio/appmetrica/analytics/impl/a6;

    iget p0, p0, Lio/appmetrica/analytics/impl/a6;->e:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "): "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/appmetrica/analytics/impl/fj;

    invoke-direct {v2, p0, v0}, Lio/appmetrica/analytics/impl/fj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    :goto_0
    return-void
.end method
