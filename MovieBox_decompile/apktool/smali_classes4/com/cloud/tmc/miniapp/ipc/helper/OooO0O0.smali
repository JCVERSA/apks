.class public final Lcom/cloud/tmc/miniapp/ipc/helper/OooO0O0;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0O0;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0O0;->OooO00o:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "sdkVersion"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    const-string v1, "typeMiniAppVersion"

    .line 24
    .line 25
    invoke-interface {p1, v1, p2, v0}, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;->onMiniAppAbility(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p1
.end method
