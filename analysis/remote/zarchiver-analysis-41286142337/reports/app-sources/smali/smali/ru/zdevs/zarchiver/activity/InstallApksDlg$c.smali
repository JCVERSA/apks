.class public final Lru/zdevs/zarchiver/activity/InstallApksDlg$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/activity/InstallApksDlg;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh0/h;

.field public final synthetic b:Lru/zdevs/zarchiver/activity/InstallApksDlg;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Lh0/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$c;->b:Lru/zdevs/zarchiver/activity/InstallApksDlg;

    iput-object p2, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$c;->a:Lh0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$c;->a:Lh0/h;

    .line 2
    .line 3
    const-class v1, Lru/zdevs/zarchiver/activity/InstallApksDlg;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lq0/a;->j(Lh0/h;Ljava/lang/Class;)Z
    :try_end_0
    .catch Lq0/a$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    sget v0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->f:I

    .line 10
    .line 11
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$c;->b:Lru/zdevs/zarchiver/activity/InstallApksDlg;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method
