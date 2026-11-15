.class public Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/transsion/audiotagger/utils/tree/TreeModel;


# instance fields
.field protected asksAllowsChildren:Z

.field protected listenerList:Lcom/transsion/audiotagger/utils/tree/EventListenerList;

.field protected root:Lcom/transsion/audiotagger/utils/tree/TreeNode;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/utils/tree/TreeNode;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;-><init>(Lcom/transsion/audiotagger/utils/tree/TreeNode;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/utils/tree/TreeNode;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/transsion/audiotagger/utils/tree/EventListenerList;

    invoke-direct {v0}, Lcom/transsion/audiotagger/utils/tree/EventListenerList;-><init>()V

    iput-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->listenerList:Lcom/transsion/audiotagger/utils/tree/EventListenerList;

    .line 4
    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->root:Lcom/transsion/audiotagger/utils/tree/TreeNode;

    .line 5
    iput-boolean p2, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    return-void
.end method

.method private fireTreeStructureChanged(Ljava/lang/Object;Lcom/transsion/audiotagger/utils/tree/TreePath;)V
    .locals 4

    .line 6
    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->listenerList:Lcom/transsion/audiotagger/utils/tree/EventListenerList;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object p0

    .line 7
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 8
    aget-object v2, p0, v0

    const-class v3, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/transsion/audiotagger/utils/tree/TreeModelEvent;

    invoke-direct {v1, p1, p2}, Lcom/transsion/audiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;Lcom/transsion/audiotagger/utils/tree/TreePath;)V

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 10
    aget-object v2, p0, v2

    check-cast v2, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;

    invoke-interface {v2, v1}, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;->treeStructureChanged(Lcom/transsion/audiotagger/utils/tree/TreeModelEvent;)V

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "root"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/utils/tree/TreeNode;

    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->root:Lcom/transsion/audiotagger/utils/tree/TreeNode;

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->root:Lcom/transsion/audiotagger/utils/tree/TreeNode;

    if-eqz v1, :cond_0

    instance-of v1, v1, Ljava/io/Serializable;

    if-eqz v1, :cond_0

    const-string v1, "root"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->root:Lcom/transsion/audiotagger/utils/tree/TreeNode;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addTreeModelListener(Lcom/transsion/audiotagger/utils/tree/TreeModelListener;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->listenerList:Lcom/transsion/audiotagger/utils/tree/EventListenerList;

    const-class v0, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public asksAllowsChildren()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    return p0
.end method

.method public fireTreeNodesChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .locals 4

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->listenerList:Lcom/transsion/audiotagger/utils/tree/EventListenerList;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_2

    aget-object v2, p0, v0

    const-class v3, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/audiotagger/utils/tree/TreeModelEvent;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/transsion/audiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    check-cast v2, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;

    invoke-interface {v2, v1}, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;->treeNodesChanged(Lcom/transsion/audiotagger/utils/tree/TreeModelEvent;)V

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public fireTreeNodesInserted(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .locals 4

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->listenerList:Lcom/transsion/audiotagger/utils/tree/EventListenerList;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_2

    aget-object v2, p0, v0

    const-class v3, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/audiotagger/utils/tree/TreeModelEvent;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/transsion/audiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    check-cast v2, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;

    invoke-interface {v2, v1}, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;->treeNodesInserted(Lcom/transsion/audiotagger/utils/tree/TreeModelEvent;)V

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public fireTreeNodesRemoved(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .locals 4

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->listenerList:Lcom/transsion/audiotagger/utils/tree/EventListenerList;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_2

    aget-object v2, p0, v0

    const-class v3, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/audiotagger/utils/tree/TreeModelEvent;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/transsion/audiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    check-cast v2, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;

    invoke-interface {v2, v1}, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;->treeNodesRemoved(Lcom/transsion/audiotagger/utils/tree/TreeModelEvent;)V

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public fireTreeStructureChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->listenerList:Lcom/transsion/audiotagger/utils/tree/EventListenerList;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->getListenerList()[Ljava/lang/Object;

    move-result-object p0

    .line 2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 3
    aget-object v2, p0, v0

    const-class v3, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/transsion/audiotagger/utils/tree/TreeModelEvent;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/transsion/audiotagger/utils/tree/TreeModelEvent;-><init>(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 5
    aget-object v2, p0, v2

    check-cast v2, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;

    invoke-interface {v2, v1}, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;->treeStructureChanged(Lcom/transsion/audiotagger/utils/tree/TreeModelEvent;)V

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/audiotagger/utils/tree/TreeNode;

    invoke-interface {p1, p2}, Lcom/transsion/audiotagger/utils/tree/TreeNode;->getChildAt(I)Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object p0

    return-object p0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/transsion/audiotagger/utils/tree/TreeNode;

    invoke-interface {p1}, Lcom/transsion/audiotagger/utils/tree/TreeNode;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getIndexOfChild(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/transsion/audiotagger/utils/tree/TreeNode;

    check-cast p2, Lcom/transsion/audiotagger/utils/tree/TreeNode;

    invoke-interface {p1, p2}, Lcom/transsion/audiotagger/utils/tree/TreeNode;->getIndex(Lcom/transsion/audiotagger/utils/tree/TreeNode;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->listenerList:Lcom/transsion/audiotagger/utils/tree/EventListenerList;

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p0

    return-object p0
.end method

.method public getPathToRoot(Lcom/transsion/audiotagger/utils/tree/TreeNode;)[Lcom/transsion/audiotagger/utils/tree/TreeNode;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lcom/transsion/audiotagger/utils/tree/TreeNode;I)[Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object p0

    return-object p0
.end method

.method public getPathToRoot(Lcom/transsion/audiotagger/utils/tree/TreeNode;I)[Lcom/transsion/audiotagger/utils/tree/TreeNode;
    .locals 1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-array p0, p2, [Lcom/transsion/audiotagger/utils/tree/TreeNode;

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 3
    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->root:Lcom/transsion/audiotagger/utils/tree/TreeNode;

    if-ne p1, v0, :cond_2

    .line 4
    new-array p0, p2, [Lcom/transsion/audiotagger/utils/tree/TreeNode;

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p1}, Lcom/transsion/audiotagger/utils/tree/TreeNode;->getParent()Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lcom/transsion/audiotagger/utils/tree/TreeNode;I)[Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object p0

    .line 6
    :goto_0
    array-length v0, p0

    sub-int/2addr v0, p2

    aput-object p1, p0, v0

    :goto_1
    return-object p0
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->root:Lcom/transsion/audiotagger/utils/tree/TreeNode;

    return-object p0
.end method

.method public getTreeModelListeners()[Lcom/transsion/audiotagger/utils/tree/TreeModelListener;
    .locals 1

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->listenerList:Lcom/transsion/audiotagger/utils/tree/EventListenerList;

    const-class v0, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    move-result-object p0

    check-cast p0, [Lcom/transsion/audiotagger/utils/tree/TreeModelListener;

    return-object p0
.end method

.method public insertNodeInto(Lcom/transsion/audiotagger/utils/tree/MutableTreeNode;Lcom/transsion/audiotagger/utils/tree/MutableTreeNode;I)V
    .locals 0

    invoke-interface {p2, p1, p3}, Lcom/transsion/audiotagger/utils/tree/MutableTreeNode;->insert(Lcom/transsion/audiotagger/utils/tree/MutableTreeNode;I)V

    filled-new-array {p3}, [I

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->nodesWereInserted(Lcom/transsion/audiotagger/utils/tree/TreeNode;[I)V

    return-void
.end method

.method public isLeaf(Ljava/lang/Object;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    if-eqz p0, :cond_0

    check-cast p1, Lcom/transsion/audiotagger/utils/tree/TreeNode;

    invoke-interface {p1}, Lcom/transsion/audiotagger/utils/tree/TreeNode;->getAllowsChildren()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    check-cast p1, Lcom/transsion/audiotagger/utils/tree/TreeNode;

    invoke-interface {p1}, Lcom/transsion/audiotagger/utils/tree/TreeNode;->isLeaf()Z

    move-result p0

    return p0
.end method

.method public nodeChanged(Lcom/transsion/audiotagger/utils/tree/TreeNode;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->listenerList:Lcom/transsion/audiotagger/utils/tree/EventListenerList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/transsion/audiotagger/utils/tree/TreeNode;->getParent()Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/audiotagger/utils/tree/TreeNode;->getIndex(Lcom/transsion/audiotagger/utils/tree/TreeNode;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->nodesChanged(Lcom/transsion/audiotagger/utils/tree/TreeNode;[I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->nodesChanged(Lcom/transsion/audiotagger/utils/tree/TreeNode;[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public nodeStructureChanged(Lcom/transsion/audiotagger/utils/tree/TreeNode;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lcom/transsion/audiotagger/utils/tree/TreeNode;)[Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0, v0}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public nodesChanged(Lcom/transsion/audiotagger/utils/tree/TreeNode;[I)V
    .locals 4

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p2, v2

    invoke-interface {p1, v3}, Lcom/transsion/audiotagger/utils/tree/TreeNode;->getChildAt(I)Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lcom/transsion/audiotagger/utils/tree/TreeNode;)[Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object p1

    invoke-virtual {p0, p0, p1, p2, v1}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->fireTreeNodesChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->getRoot()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lcom/transsion/audiotagger/utils/tree/TreeNode;)[Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p0, p1, p2, p2}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->fireTreeNodesChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public nodesWereInserted(Lcom/transsion/audiotagger/utils/tree/TreeNode;[I)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->listenerList:Lcom/transsion/audiotagger/utils/tree/EventListenerList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    array-length v0, p2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p2, v2

    invoke-interface {p1, v3}, Lcom/transsion/audiotagger/utils/tree/TreeNode;->getChildAt(I)Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lcom/transsion/audiotagger/utils/tree/TreeNode;)[Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object p1

    invoke-virtual {p0, p0, p1, p2, v1}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->fireTreeNodesInserted(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public nodesWereRemoved(Lcom/transsion/audiotagger/utils/tree/TreeNode;[I[Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lcom/transsion/audiotagger/utils/tree/TreeNode;)[Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object p1

    invoke-virtual {p0, p0, p1, p2, p3}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->fireTreeNodesRemoved(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->root:Lcom/transsion/audiotagger/utils/tree/TreeNode;

    invoke-virtual {p0, v0}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->reload(Lcom/transsion/audiotagger/utils/tree/TreeNode;)V

    return-void
.end method

.method public reload(Lcom/transsion/audiotagger/utils/tree/TreeNode;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->getPathToRoot(Lcom/transsion/audiotagger/utils/tree/TreeNode;)[Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p0, p1, v0, v0}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;[Ljava/lang/Object;[I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removeNodeFromParent(Lcom/transsion/audiotagger/utils/tree/MutableTreeNode;)V
    .locals 3

    invoke-interface {p1}, Lcom/transsion/audiotagger/utils/tree/TreeNode;->getParent()Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object v0

    check-cast v0, Lcom/transsion/audiotagger/utils/tree/MutableTreeNode;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/audiotagger/utils/tree/TreeNode;->getIndex(Lcom/transsion/audiotagger/utils/tree/TreeNode;)I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-interface {v0, v2}, Lcom/transsion/audiotagger/utils/tree/MutableTreeNode;->remove(I)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->nodesWereRemoved(Lcom/transsion/audiotagger/utils/tree/TreeNode;[I[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "node does not have a parent."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeTreeModelListener(Lcom/transsion/audiotagger/utils/tree/TreeModelListener;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->listenerList:Lcom/transsion/audiotagger/utils/tree/EventListenerList;

    const-class v0, Lcom/transsion/audiotagger/utils/tree/TreeModelListener;

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audiotagger/utils/tree/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    return-void
.end method

.method public setAsksAllowsChildren(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->asksAllowsChildren:Z

    return-void
.end method

.method public setRoot(Lcom/transsion/audiotagger/utils/tree/TreeNode;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->root:Lcom/transsion/audiotagger/utils/tree/TreeNode;

    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->root:Lcom/transsion/audiotagger/utils/tree/TreeNode;

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p0, p1}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->fireTreeStructureChanged(Ljava/lang/Object;Lcom/transsion/audiotagger/utils/tree/TreePath;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->nodeStructureChanged(Lcom/transsion/audiotagger/utils/tree/TreeNode;)V

    :goto_0
    return-void
.end method

.method public valueForPathChanged(Lcom/transsion/audiotagger/utils/tree/TreePath;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/audiotagger/utils/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/audiotagger/utils/tree/MutableTreeNode;

    invoke-interface {p1, p2}, Lcom/transsion/audiotagger/utils/tree/MutableTreeNode;->setUserObject(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/utils/tree/DefaultTreeModel;->nodeChanged(Lcom/transsion/audiotagger/utils/tree/TreeNode;)V

    return-void
.end method
