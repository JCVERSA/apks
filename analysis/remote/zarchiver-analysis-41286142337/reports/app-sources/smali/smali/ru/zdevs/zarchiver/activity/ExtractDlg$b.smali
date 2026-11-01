.class public final Lru/zdevs/zarchiver/activity/ExtractDlg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/activity/ExtractDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/activity/ExtractDlg;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/ExtractDlg;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$b;->a:Lru/zdevs/zarchiver/activity/ExtractDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$b;->a:Lru/zdevs/zarchiver/activity/ExtractDlg;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lru/zdevs/zarchiver/activity/ExtractDlg;->a:Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {p2}, Lru/zdevs/zarchiver/service/c$a;->asInterface(Landroid/os/IBinder;)Lru/zdevs/zarchiver/service/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :try_start_0
    invoke-static {}, Lt0/b;->b()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    sget v0, Lt0/b;->g:I

    .line 15
    .line 16
    sget-object v1, Lt0/b;->e:Ljava/lang/String;

    .line 17
    .line 18
    invoke-interface {p1, p2, v0, v1}, Lru/zdevs/zarchiver/service/c;->SetSettings(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    new-instance p2, Lru/zdevs/zarchiver/activity/ExtractDlg$b$a;

    .line 22
    .line 23
    invoke-direct {p2, p0, p1}, Lru/zdevs/zarchiver/activity/ExtractDlg$b$a;-><init>(Lru/zdevs/zarchiver/activity/ExtractDlg$b;Lru/zdevs/zarchiver/service/c;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Lw0/c;->h(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
