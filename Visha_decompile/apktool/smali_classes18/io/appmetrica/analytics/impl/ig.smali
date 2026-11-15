.class public final Lio/appmetrica/analytics/impl/ig;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Sf;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lio/appmetrica/analytics/impl/Sf;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lio/appmetrica/analytics/impl/ig;->a:Lio/appmetrica/analytics/impl/Sf;

    return-void
.end method

.method public static a(Landroid/os/ResultReceiver;Lio/appmetrica/analytics/impl/cg;)V
    .locals 2

    if-eqz p0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/cg;->a()[B

    move-result-object p1

    :goto_0
    const-string v1, "referrer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/appmetrica/analytics/impl/cg;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/impl/cg;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v0

    :catchall_0
    :cond_1
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ig;->a:Lio/appmetrica/analytics/impl/Sf;

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Sf;->a(Lio/appmetrica/analytics/impl/cg;)V

    :cond_2
    return-void
.end method
