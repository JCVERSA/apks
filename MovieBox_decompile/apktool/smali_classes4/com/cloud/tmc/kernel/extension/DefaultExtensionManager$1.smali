.class Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;->getExtensionByPoint(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/cloud/tmc/kernel/extension/Extension;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$1;->this$0:Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public compare(Lcom/cloud/tmc/kernel/extension/Extension;Lcom/cloud/tmc/kernel/extension/Extension;)I
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/cloud/tmc/kernel/extension/SimpleSortable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/cloud/tmc/kernel/extension/SimpleSortable;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/extension/SimpleSortable;->priority()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 4
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    check-cast p2, Lcom/cloud/tmc/kernel/extension/SimpleSortable;

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/extension/SimpleSortable;->priority()I

    move-result v2

    :cond_1
    sub-int/2addr v2, p1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/cloud/tmc/kernel/extension/Extension;

    check-cast p2, Lcom/cloud/tmc/kernel/extension/Extension;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/kernel/extension/DefaultExtensionManager$1;->compare(Lcom/cloud/tmc/kernel/extension/Extension;Lcom/cloud/tmc/kernel/extension/Extension;)I

    move-result p1

    return p1
.end method
