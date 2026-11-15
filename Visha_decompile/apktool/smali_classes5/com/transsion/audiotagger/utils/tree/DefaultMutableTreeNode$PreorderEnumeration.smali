.class final Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PreorderEnumeration;
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
    name = "PreorderEnumeration"
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

.field final synthetic this$0:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;Lcom/transsion/audiotagger/utils/tree/TreeNode;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PreorderEnumeration;->this$0:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Vector;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    iput-object p2, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Enumeration;

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextElement()Lcom/transsion/audiotagger/utils/tree/TreeNode;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    .line 3
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/utils/tree/TreeNode;

    .line 4
    invoke-interface {v1}, Lcom/transsion/audiotagger/utils/tree/TreeNode;->children()Ljava/util/Enumeration;

    move-result-object v2

    .line 5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PreorderEnumeration;->stack:Ljava/util/Stack;

    invoke-virtual {p0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PreorderEnumeration;->nextElement()Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object p0

    return-object p0
.end method
