.class public final Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/config/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->loadPreService(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\"\u0010\u000b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "com/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1",
        "Lcom/cloud/config/s;",
        "",
        "code",
        "",
        "message",
        "",
        "onLoadDataFailure",
        "(ILjava/lang/String;)V",
        "onLoadDataSuccess",
        "()V",
        "innerQueryKey",
        "Ljava/lang/String;",
        "getInnerQueryKey",
        "()Ljava/lang/String;",
        "setInnerQueryKey",
        "(Ljava/lang/String;)V",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $complete:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field private innerQueryKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->$complete:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    :cond_0
    const-string p1, "defaultKey"

    .line 19
    .line 20
    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->innerQueryKey:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getInnerQueryKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->innerQueryKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onLoadDataFailure(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string p1, "message"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->$context:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->innerQueryKey:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, p2, v0, v1}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->updateCloudConfigRequestStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->$complete:Lkotlin/jvm/functions/Function1;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onLoadDataSuccess()V
    .locals 4

    .line 1
    sget-object v0, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/CloudConfigUtils;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->$context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->innerQueryKey:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/utils/CloudConfigUtils;->updateCloudConfigRequestStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    .line 12
    .line 13
    const-string v1, "closeMiniAppSDK"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->getConfigBoolean(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->access$getTAG$p(Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "loadPreService closeSDK = "

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->$complete:Lkotlin/jvm/functions/Function1;

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->$context:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->access$updateConfigAppinfo(Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final setInnerQueryKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl$loadPreService$1$1;->innerQueryKey:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
