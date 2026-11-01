.class public Lru/zdevs/zarchiver/service/ZArchiverClearTemp;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ln0/d;->b(Z)V

    .line 3
    .line 4
    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 p2, 0x15

    .line 8
    .line 9
    if-lt p1, p2, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lq0/a;->a(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    return p1
.end method
