.class Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->personaliseCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/s2;->p()Lcom/cloud/hisavana/sdk/s2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->a(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/s2;->e(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->c(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;)Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/app/Activity;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method
