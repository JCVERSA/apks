.class public final Lru/zdevs/zarchiver/ZArchiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ZArchiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZArchiver;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZArchiver;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ZArchiver$a;->a:Lru/zdevs/zarchiver/ZArchiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver$a;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lru/zdevs/zarchiver/ZArchiver;->g:Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {p2}, Lru/zdevs/zarchiver/service/c$a;->asInterface(Landroid/os/IBinder;)Lru/zdevs/zarchiver/service/c;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p1, Lru/zdevs/zarchiver/ZArchiver;->f:Lru/zdevs/zarchiver/service/c;

    .line 11
    .line 12
    :try_start_0
    iget-object p2, p1, Lru/zdevs/zarchiver/ZArchiver;->f:Lru/zdevs/zarchiver/service/c;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-interface {p2, v0}, Lru/zdevs/zarchiver/service/c;->GUIStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    :try_start_1
    iget-object p2, p1, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 19
    .line 20
    iget-object p2, p2, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 21
    .line 22
    iget-object v0, p1, Lru/zdevs/zarchiver/ZArchiver;->f:Lru/zdevs/zarchiver/service/c;

    .line 23
    .line 24
    invoke-virtual {p2, p1, v0}, Lru/zdevs/zarchiver/a;->o(Lru/zdevs/zarchiver/ZArchiver;Lru/zdevs/zarchiver/service/c;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p1, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 28
    .line 29
    iget-object p2, p2, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 30
    .line 31
    invoke-virtual {p2}, Lru/zdevs/zarchiver/a;->i()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 32
    .line 33
    .line 34
    :catch_1
    :try_start_2
    iget-object p1, p1, Lru/zdevs/zarchiver/ZArchiver;->f:Lru/zdevs/zarchiver/service/c;

    .line 35
    .line 36
    invoke-static {}, Lt0/b;->b()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    sget v0, Lt0/b;->g:I

    .line 41
    .line 42
    sget-object v1, Lt0/b;->e:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {p1, p2, v0, v1}, Lru/zdevs/zarchiver/service/c;->SetSettings(IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 45
    .line 46
    .line 47
    :catch_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ZArchiver$a;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lru/zdevs/zarchiver/ZArchiver;->f:Lru/zdevs/zarchiver/service/c;

    .line 5
    .line 6
    iget-object v1, p1, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 7
    .line 8
    iget-object v1, v1, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 9
    .line 10
    invoke-virtual {v1, p1, v0}, Lru/zdevs/zarchiver/a;->o(Lru/zdevs/zarchiver/ZArchiver;Lru/zdevs/zarchiver/service/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
