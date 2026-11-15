.class Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/permission/IPermissionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;->onInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lcom/cloud/tmc/integration/invoke/ExtensionInvoker$InvokeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$perms:Ljava/util/ArrayList;

.field final synthetic val$proxy:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$perms:Ljava/util/ArrayList;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$proxy:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$args:[Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    if-eqz p3, :cond_3

    .line 4
    .line 5
    array-length p1, p2

    .line 6
    array-length v0, p3

    .line 7
    if-ne p1, v0, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$perms:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    array-length v0, p2

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    array-length v0, p2

    .line 21
    if-ge p1, v0, :cond_2

    .line 22
    .line 23
    aget v0, p3, p1

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;->a(Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;)Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;->sendNoRigHtToInvoke()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->this$0:Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker;

    .line 41
    .line 42
    iget-object p2, p1, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->targetExtensions:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;

    .line 43
    .line 44
    iget-object p3, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$proxy:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$method:Ljava/lang/reflect/Method;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/NativePermissionExtensionInvoker$1;->val$args:[Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/cloud/tmc/integration/invoke/ExtensionInvoker;->proceedSafe(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableList;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_1
    return-void
.end method
