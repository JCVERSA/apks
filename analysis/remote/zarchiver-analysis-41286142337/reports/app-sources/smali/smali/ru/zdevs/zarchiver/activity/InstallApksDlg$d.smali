.class public final Lru/zdevs/zarchiver/activity/InstallApksDlg$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lru/zdevs/zarchiver/activity/InstallApksDlg;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;->c:Lru/zdevs/zarchiver/activity/InstallApksDlg;

    iput-object p2, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;->c:Lru/zdevs/zarchiver/activity/InstallApksDlg;

    .line 2
    .line 3
    iget-object v1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;->a:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    iget-boolean v1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$d;->b:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const v1, 0x7f0c00ee

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const v1, 0x7f0c00ef

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_1
    if-eqz v1, :cond_2

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-virtual {v0}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->finishAndRemoveTask()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
