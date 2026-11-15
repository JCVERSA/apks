.class Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint$1;->this$0:Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint$1;->this$0:Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;->a(Lcom/cloud/tmc/integration/invoke/extension/ExtensionPoint;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ReflectUtils;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    return-object p1
.end method
