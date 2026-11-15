.class Lcom/hisavana/common/tracking/TrackingManager$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$newb:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hisavana/common/tracking/TrackingManager$1;->val$event:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/hisavana/common/tracking/TrackingManager$1;->val$newb:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lk7/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "sdk_version"

    .line 10
    .line 11
    const-string v3, "3.5.9.1"

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "sdk_version_int"

    .line 17
    .line 18
    const v3, 0x57abc

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/hisavana/common/tracking/TrackingManager$1;->val$event:Ljava/lang/String;

    .line 25
    .line 26
    const-string v3, "ad_trigger"

    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/hisavana/common/tracking/TrackingManager$1;->val$event:Ljava/lang/String;

    .line 35
    .line 36
    const-string v3, "ad_show"

    .line 37
    .line 38
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    iget-object v2, p0, Lcom/hisavana/common/tracking/TrackingManager$1;->val$event:Ljava/lang/String;

    .line 45
    .line 46
    const-string v3, "ad_click"

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    :cond_0
    invoke-static {v1}, Lk7/a;->v0(Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object v2, p0, Lcom/hisavana/common/tracking/TrackingManager$1;->val$newb:Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    new-instance v2, Lhi/a;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/hisavana/common/tracking/TrackingManager$1;->val$event:Ljava/lang/String;

    .line 68
    .line 69
    const/16 v4, 0x21d5

    .line 70
    .line 71
    invoke-direct {v2, v3, v4}, Lhi/a;-><init>(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v1, v0}, Lhi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lhi/a;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lhi/a;->b()V

    .line 79
    .line 80
    .line 81
    return-void
.end method
