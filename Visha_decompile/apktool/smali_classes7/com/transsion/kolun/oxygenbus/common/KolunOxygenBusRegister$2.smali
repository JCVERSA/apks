.class Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initClient(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$entity:Lcom/transsion/apiinvoke/common/router/ChannelEntity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$2;->val$appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$2;->val$entity:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOxygenProcessFault()V
    .locals 0

    return-void
.end method

.method public onOxygenProcessStart()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$2;->val$appContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$2;->val$entity:Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->access$100(Landroid/content/Context;Lcom/transsion/apiinvoke/common/router/ChannelEntity;Z)V

    return-void
.end method
