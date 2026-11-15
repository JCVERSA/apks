.class final Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PathBetweenNodesEnumeration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PathBetweenNodesEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Lcom/transsion/audiotagger/utils/tree/TreeNode;",
        ">;"
    }
.end annotation


# instance fields
.field protected stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/transsion/audiotagger/utils/tree/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;Lcom/transsion/audiotagger/utils/tree/TreeNode;Lcom/transsion/audiotagger/utils/tree/TreeNode;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PathBetweenNodesEnumeration;->this$0:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PathBetweenNodesEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {p1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    :goto_0
    if-eq p1, p2, :cond_2

    invoke-interface {p1}, Lcom/transsion/audiotagger/utils/tree/TreeNode;->getParent()Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object p1

    if-nez p1, :cond_1

    if-ne p3, p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "node "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not an ancestor of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PathBetweenNodesEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PathBetweenNodesEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextElement()Lcom/transsion/audiotagger/utils/tree/TreeNode;
    .locals 1

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PathBetweenNodesEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/utils/tree/TreeNode;
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "No more elements"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PathBetweenNodesEnumeration;->nextElement()Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object p0

    return-object p0
.end method
