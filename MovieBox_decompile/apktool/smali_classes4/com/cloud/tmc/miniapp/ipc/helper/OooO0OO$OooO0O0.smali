.class public final Lcom/cloud/tmc/miniapp/ipc/helper/OooO0OO$OooO0O0;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ipc/helper/OooO0OO;->OooO0O0(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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

.field public final synthetic OooO0OO:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0OO$OooO0O0;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0OO$OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0OO$OooO0O0;->OooO0OO:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0OO$OooO0O0;->OooO00o:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0OO$OooO0O0;->OooO0O0:Ljava/lang/String;

    .line 11
    .line 12
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0OO$OooO0O0;->OooO0OO:J

    .line 13
    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v6, "{\"appId\":\""

    .line 20
    .line 21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "\",\"size\":"

    .line 28
    .line 29
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "}"

    .line 36
    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "resultJsonData"

    .line 45
    .line 46
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    const-string v2, "typeMiniAppCleanStorage"

    .line 52
    .line 53
    invoke-interface {p1, v2, v0, v1}, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;->onMiniAppDataSync(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ipc/helper/OooO0OO$OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p1
.end method
