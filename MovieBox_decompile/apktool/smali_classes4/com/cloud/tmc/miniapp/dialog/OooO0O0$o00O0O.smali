.class public final Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00O0O;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o00O0O"
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00O0O;->OooO00o:Ljava/lang/Runnable;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onShow(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00O0O;->OooO00o:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_1
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00O0O;->OooO00o:Ljava/lang/Runnable;

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->post(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method
