.class public final Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o$OooO0O0;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o;->OooO0O0(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
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

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o$OooO0O0;->OooO00o:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

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
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o$OooO0O0;->OooO00o:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ipc/helper/OooO00o$OooO0O0;->OooO0O0:Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/JsonObjectUtils$Builder;->build()Lcom/google/gson/JsonObject;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "resultObj.build()"

    .line 21
    .line 22
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "resultJsonData"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    const-string v1, "typeSingleMiniAppOffline"

    .line 37
    .line 38
    invoke-interface {p1, v1, p2, v0}, Lcom/cloud/tmc/miniapp/protocol/IIpcMiniProtocolMainChannel;->onMiniAppAbility(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p1
.end method
