.class public final Lru/zdevs/zarchiver/activity/InstallApksDlg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/activity/InstallApksDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lru/zdevs/zarchiver/activity/InstallApksDlg;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$a;->b:Lru/zdevs/zarchiver/activity/InstallApksDlg;

    iput-object p2, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$a;->a:Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$a;->b:Lru/zdevs/zarchiver/activity/InstallApksDlg;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lv0/f;->f(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v1, v2, v3}, Lt0/b;->m(Landroid/content/Context;ZLt0/b$a;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    new-instance v4, Lh0/h;

    .line 21
    .line 22
    invoke-direct {v4, v0}, Lh0/h;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-class v0, Lru/zdevs/zarchiver/activity/InstallApksDlg;

    .line 26
    .line 27
    invoke-static {v4, v0}, Lq0/a;->j(Lh0/h;Ljava/lang/Class;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    sget v0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->f:I

    .line 34
    .line 35
    invoke-virtual {v1, v3, v2}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lq0/a$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    iget-object v0, v0, Lq0/a$b;->a:Landroid/content/Intent;

    .line 41
    .line 42
    const/16 v2, 0x4b3

    .line 43
    .line 44
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sget v0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->f:I

    .line 49
    .line 50
    const-string v0, "Failed to get path to the APKS/XAPK file"

    .line 51
    .line 52
    invoke-virtual {v1, v0, v2}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method
