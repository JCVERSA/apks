.class public final Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0O0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/o000OOo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/o000OOo;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/o000OOo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o000OOo;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o000OOo$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o000OOo;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/o000OOo;->OooO0O0:Landroid/animation/AnimatorSet;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method
