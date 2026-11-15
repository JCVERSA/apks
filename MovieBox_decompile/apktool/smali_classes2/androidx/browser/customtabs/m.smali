.class final Landroidx/browser/customtabs/m;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/browser/customtabs/l;


# instance fields
.field private final a:Lc/c;


# direct methods
.method private constructor <init>(Lc/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/browser/customtabs/m;->a:Lc/c;

    .line 5
    .line 6
    return-void
.end method

.method static a(Landroid/os/IBinder;)Landroidx/browser/customtabs/m;
    .locals 1

    .line 1
    invoke-static {p0}, Lc/c$a;->X0(Landroid/os/IBinder;)Lc/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroidx/browser/customtabs/m;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/browser/customtabs/m;-><init>(Lc/c;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/m;->a:Lc/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lc/c;->onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const-string p1, "EngagementSigsCallbkRmt"

    .line 8
    .line 9
    const-string p2, "RemoteException during IEngagementSignalsCallback transaction"

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public onSessionEnded(ZLandroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/m;->a:Lc/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lc/c;->onSessionEnded(ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const-string p1, "EngagementSigsCallbkRmt"

    .line 8
    .line 9
    const-string p2, "RemoteException during IEngagementSignalsCallback transaction"

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public onVerticalScrollEvent(ZLandroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/m;->a:Lc/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lc/c;->onVerticalScrollEvent(ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const-string p1, "EngagementSigsCallbkRmt"

    .line 8
    .line 9
    const-string p2, "RemoteException during IEngagementSignalsCallback transaction"

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
