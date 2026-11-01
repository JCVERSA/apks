.class public final Lru/zdevs/zarchiver/activity/OpenAsDlg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/activity/OpenAsDlg;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/activity/OpenAsDlg;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/OpenAsDlg;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$a;->a:Lru/zdevs/zarchiver/activity/OpenAsDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lru/zdevs/zarchiver/activity/OpenAsDlg$a;->a:Lru/zdevs/zarchiver/activity/OpenAsDlg;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
