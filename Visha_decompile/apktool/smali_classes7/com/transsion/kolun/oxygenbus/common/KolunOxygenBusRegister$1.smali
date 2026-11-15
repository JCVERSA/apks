.class Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/kolun/oxygenbus/common/OxygenBusProcess$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->initService(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;ZLcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$async:Z

.field final synthetic val$callback:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;

.field final synthetic val$channelName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$1;->val$appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$1;->val$channelName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$1;->val$async:Z

    iput-object p4, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$1;->val$callback:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOxygenProcessFault()V
    .locals 0

    return-void
.end method

.method public onOxygenProcessStart()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$1;->val$appContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$1;->val$channelName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$1;->val$async:Z

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$1;->val$callback:Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister;->access$000(Landroid/content/Context;Ljava/lang/String;ZLcom/transsion/kolun/oxygenbus/common/KolunOxygenBusRegister$InitOxygenBusCallback;)V

    return-void
.end method
