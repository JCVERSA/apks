.class public final Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o0OoOo0;
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
    name = "o0OoOo0"
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/Runnable;

.field public final OooO0O0:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o0OoOo0;->OooO00o:Ljava/lang/Runnable;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o0OoOo0;->OooO0O0:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onShow(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o0OoOo0;->OooO00o:Ljava/lang/Runnable;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o0OoOo0;->OooO00o:Ljava/lang/Runnable;

    .line 18
    .line 19
    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o0OoOo0;->OooO0O0:J

    .line 20
    .line 21
    invoke-static {p1, v0, v1, v2}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    :cond_2
    return-void
.end method
