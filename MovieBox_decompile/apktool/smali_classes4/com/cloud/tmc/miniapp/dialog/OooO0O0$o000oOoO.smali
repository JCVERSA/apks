.class public final Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;
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
    name = "o000oOoO"
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/Runnable;

.field public final OooO0O0:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    const-string v0, "runnable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;->OooO00o:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;->OooO0O0:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onShow(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;->OooO00o:Ljava/lang/Runnable;

    .line 13
    .line 14
    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;->OooO0O0:J

    .line 15
    .line 16
    invoke-static {p1, v0, v1, v2}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postAtTime(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method
