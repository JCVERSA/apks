.class public final Lru/zdevs/zarchiver/activity/InstallApksDlg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/activity/InstallApksDlg;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lru/zdevs/zarchiver/activity/InstallApksDlg;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$b;->b:Lru/zdevs/zarchiver/activity/InstallApksDlg;

    iput-object p2, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$b;->b:Lru/zdevs/zarchiver/activity/InstallApksDlg;

    .line 2
    .line 3
    invoke-static {v0}, Lq0/a;->a(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    sget v1, Lru/zdevs/zarchiver/activity/InstallApksDlg;->f:I

    .line 7
    .line 8
    iget-object v1, p0, Lru/zdevs/zarchiver/activity/InstallApksDlg$b;->a:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
