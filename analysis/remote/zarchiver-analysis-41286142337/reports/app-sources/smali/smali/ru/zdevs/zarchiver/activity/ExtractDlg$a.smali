.class public final Lru/zdevs/zarchiver/activity/ExtractDlg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/activity/ExtractDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lru/zdevs/zarchiver/activity/ExtractDlg;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/ExtractDlg;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$a;->b:Lru/zdevs/zarchiver/activity/ExtractDlg;

    iput-object p2, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$a;->a:Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$a;->b:Lru/zdevs/zarchiver/activity/ExtractDlg;

    .line 8
    .line 9
    invoke-static {v2, v1}, Lv0/f;->f(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v2, Lru/zdevs/zarchiver/activity/ExtractDlg;->b:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Landroid/content/Intent;

    .line 18
    .line 19
    const-class v3, Lru/zdevs/zarchiver/ZArchiver;

    .line 20
    .line 21
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    const-string v3, "android.intent.action.VIEW"

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    new-instance v0, Lru/zdevs/zarchiver/activity/ExtractDlg$a$a;

    .line 37
    .line 38
    invoke-direct {v0, p0, v1}, Lru/zdevs/zarchiver/activity/ExtractDlg$a$a;-><init>(Lru/zdevs/zarchiver/activity/ExtractDlg$a;Landroid/content/Intent;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {v2, v0, v1}, Lt0/b;->m(Landroid/content/Context;ZLt0/b$a;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Landroid/content/Intent;

    .line 51
    .line 52
    const-class v1, Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 53
    .line 54
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v2, Lru/zdevs/zarchiver/activity/ExtractDlg;->c:Lru/zdevs/zarchiver/activity/ExtractDlg$b;

    .line 58
    .line 59
    invoke-static {v2, v0, v1}, Lh1/h;->f(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Landroid/os/Handler;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, v2, Lru/zdevs/zarchiver/activity/ExtractDlg;->a:Landroid/os/Handler;

    .line 64
    .line 65
    return-void
.end method
