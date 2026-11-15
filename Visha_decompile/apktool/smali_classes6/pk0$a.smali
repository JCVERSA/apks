.class public Lpk0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpk0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:Lpk0$b;

.field public final synthetic c:Lpk0;


# direct methods
.method public constructor <init>(Lpk0;)V
    .locals 0

    iput-object p1, p0, Lpk0$a;->c:Lpk0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lpk0$a;->c:Lpk0;

    check-cast p2, Lcom/transsion/btdownload/service/TorrentService$b;

    invoke-static {p1, p2}, Lpk0;->b(Lpk0;Lcom/transsion/btdownload/service/TorrentService$b;)V

    iget-object p0, p0, Lpk0$a;->b:Lpk0$b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lpk0$b;->a()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lpk0$a;->c:Lpk0;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lpk0;->b(Lpk0;Lcom/transsion/btdownload/service/TorrentService$b;)V

    return-void
.end method
