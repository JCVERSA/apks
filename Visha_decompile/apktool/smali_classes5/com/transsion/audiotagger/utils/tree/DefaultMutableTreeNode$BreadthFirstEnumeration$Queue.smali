.class final Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Queue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;
    }
.end annotation


# instance fields
.field head:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

.field tail:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

.field final synthetic this$1:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->this$1:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dequeue()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->object:Ljava/lang/Object;

    iget-object v2, v0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->next:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    iput-object v2, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object v3, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->tail:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    goto :goto_0

    :cond_0
    iput-object v3, v0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->next:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    :goto_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "No more elements"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enqueue(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    invoke-direct {v0, p0, p1, v1}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;-><init>(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;Ljava/lang/Object;Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->tail:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    iput-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->tail:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    new-instance v2, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    invoke-direct {v2, p0, p1, v1}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;-><init>(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;Ljava/lang/Object;Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;)V

    iput-object v2, v0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->next:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    iget-object p1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->tail:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    iget-object p1, p1, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->next:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->tail:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    :goto_0
    return-void
.end method

.method public firstObject()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;->object:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "No more elements"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue;->head:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$BreadthFirstEnumeration$Queue$QNode;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
