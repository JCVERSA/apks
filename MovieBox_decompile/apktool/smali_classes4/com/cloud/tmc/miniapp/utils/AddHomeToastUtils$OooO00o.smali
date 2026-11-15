.class public final Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field public final OooO00o:Landroid/content/Context;

.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:J

.field public final OooO0Oo:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "windowToken"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO00o;->OooO00o:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO00o;->OooO0O0:Ljava/lang/String;

    .line 17
    .line 18
    iput-wide p3, p0, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO00o;->OooO0OO:J

    .line 19
    .line 20
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO00o;->OooO0Oo:Lkotlin/jvm/functions/Function0;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;)V
    .locals 10

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO00o;->OooO0OO:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "onRefresh:"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "AddHomeToastUtils"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO00o;->OooO0O0:Ljava/lang/String;

    .line 38
    .line 39
    iget-wide v4, p0, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO00o;->OooO0OO:J

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->getDelayTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    iget-wide v8, p0, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO00o;->OooO0OO:J

    .line 50
    .line 51
    sub-long/2addr v6, v8

    .line 52
    sub-long v6, v0, v6

    .line 53
    .line 54
    invoke-virtual/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils;->OooO00o(Ljava/lang/String;JJ)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO00o;->OooO00o:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->queryShortcutExist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "\u67e5\u8be2\u684c\u9762\u662f\u5426\u5b58\u5728 show()\uff0cstatus: "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "AddHomeToastUtils"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/AddHomeToastUtils$OooO00o;->OooO0Oo:Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method
