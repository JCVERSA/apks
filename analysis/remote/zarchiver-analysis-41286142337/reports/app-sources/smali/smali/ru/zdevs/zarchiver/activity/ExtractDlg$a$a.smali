.class public final Lru/zdevs/zarchiver/activity/ExtractDlg$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/activity/ExtractDlg$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lru/zdevs/zarchiver/activity/ExtractDlg$a;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/ExtractDlg$a;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$a$a;->b:Lru/zdevs/zarchiver/activity/ExtractDlg$a;

    iput-object p2, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$a$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$a$a;->b:Lru/zdevs/zarchiver/activity/ExtractDlg$a;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/activity/ExtractDlg$a;->b:Lru/zdevs/zarchiver/activity/ExtractDlg;

    .line 4
    .line 5
    iget-object v2, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$a$a;->a:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lru/zdevs/zarchiver/activity/ExtractDlg$a;->b:Lru/zdevs/zarchiver/activity/ExtractDlg;

    .line 11
    .line 12
    const v2, 0x7f0c00e4

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lru/zdevs/zarchiver/activity/ExtractDlg$a;->b:Lru/zdevs/zarchiver/activity/ExtractDlg;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
