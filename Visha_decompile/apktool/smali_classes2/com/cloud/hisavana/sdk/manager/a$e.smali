.class public final Lcom/cloud/hisavana/sdk/manager/a$e;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/manager/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/cloud/hisavana/sdk/manager/a$e",
        "Landroidx/browser/customtabs/CustomTabsCallback;",
        "",
        "navigationEvent",
        "Landroid/os/Bundle;",
        "extras",
        "Lzfb;",
        "onNavigationEvent",
        "(ILandroid/os/Bundle;)V",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 4

    const/4 p0, 0x0

    const-wide/16 v0, -0x1

    const-string p2, "CustomTabsManager"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/a;->O(Z)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "onNavigationEvent, TAB_HIDDEN"

    invoke-virtual {p0, p2, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/manager/a;->z(Lcom/cloud/hisavana/sdk/manager/a;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string v0, "onNavigationEvent, TAB_SHOWN"

    invoke-virtual {p1, p2, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/a;->O(Z)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->Z()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/manager/a;->C(Z)V

    new-instance p0, Lcom/cloud/hisavana/sdk/manager/a$e$a;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/a$e$a;-><init>()V

    invoke-static {p0}, Lzk5;->k(Lzk5$b;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->V()J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->S()J

    move-result-wide v0

    sub-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/manager/a;->Q(J)V

    :cond_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "onNavigationEvent, NAVIGATION_ABORTED"

    invoke-virtual {p0, p2, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->Y()J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->X()J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->S()J

    move-result-wide v0

    sub-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/manager/a;->T(J)V

    sget-object p0, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->X()J

    move-result-wide v0

    const/16 p1, 0x1f48

    invoke-static {p0, p1, v0, v1}, Lcom/cloud/hisavana/sdk/manager/a;->w(Lcom/cloud/hisavana/sdk/manager/a;IJ)V

    :cond_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "onNavigationEvent, NAVIGATION_FAILED"

    invoke-virtual {p0, p2, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string v2, "onNavigationEvent, NAVIGATION_FINISHED"

    invoke-virtual {p1, p2, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->Y()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->S()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/manager/a;->W(J)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNavigationEvent, NAVIGATION_FINISHED, time taken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->Y()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->Y()J

    move-result-wide v0

    invoke-static {p1, p0, v0, v1}, Lcom/cloud/hisavana/sdk/manager/a;->L(Lcom/cloud/hisavana/sdk/manager/a;IJ)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "onNavigationEvent, NAVIGATION_STARTED"

    invoke-virtual {p0, p2, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/a;->S()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/manager/a;->I(J)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
