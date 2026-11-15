.class public final Lfuh;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lguh;


# direct methods
.method public constructor <init>(Lguh;)V
    .locals 0

    iput-object p1, p0, Lfuh;->a:Lguh;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    iget-object p0, p0, Lfuh;->a:Lguh;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lguh;->f(Lguh;Z)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    iget-object p0, p0, Lfuh;->a:Lguh;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lguh;->f(Lguh;Z)V

    return-void
.end method
