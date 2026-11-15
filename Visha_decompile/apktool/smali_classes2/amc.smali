.class public final Lamc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/wifi/WifiManager;

.field public b:Landroid/net/wifi/WifiManager$WifiLock;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lamc;->a:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lamc;->b:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_1

    iget-object v0, p0, Lamc;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string p0, "WifiLockManager"

    const-string p1, "WifiManager is null, therefore not creating the WifiLock."

    invoke-static {p0, p1}, Lop5;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    const-string v2, "ExoPlayer:WifiLockManager"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lamc;->b:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    :cond_1
    iput-boolean p1, p0, Lamc;->c:Z

    invoke-virtual {p0}, Lamc;->c()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lamc;->d:Z

    invoke-virtual {p0}, Lamc;->c()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lamc;->b:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lamc;->c:Z

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lamc;->d:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :goto_0
    return-void
.end method
