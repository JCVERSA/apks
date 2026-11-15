.class final Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;
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
    name = "PostorderEnumeration"
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
.field protected children:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Lcom/transsion/audiotagger/utils/tree/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field protected root:Lcom/transsion/audiotagger/utils/tree/TreeNode;

.field protected subtree:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Lcom/transsion/audiotagger/utils/tree/TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;


# direct methods
.method public constructor <init>(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;Lcom/transsion/audiotagger/utils/tree/TreeNode;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->this$0:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->root:Lcom/transsion/audiotagger/utils/tree/TreeNode;

    invoke-interface {p2}, Lcom/transsion/audiotagger/utils/tree/TreeNode;->children()Ljava/util/Enumeration;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->children:Ljava/util/Enumeration;

    sget-object p1, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;->EMPTY_ENUMERATION:Ljava/util/Enumeration;

    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->subtree:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->root:Lcom/transsion/audiotagger/utils/tree/TreeNode;

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
    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->subtree:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->subtree:Ljava/util/Enumeration;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/utils/tree/TreeNode;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->children:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;

    iget-object v1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->this$0:Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;

    iget-object v2, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->children:Ljava/util/Enumeration;

    .line 6
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/audiotagger/utils/tree/TreeNode;

    invoke-direct {v0, v1, v2}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;-><init>(Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;Lcom/transsion/audiotagger/utils/tree/TreeNode;)V

    iput-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->subtree:Ljava/util/Enumeration;

    .line 7
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/utils/tree/TreeNode;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->root:Lcom/transsion/audiotagger/utils/tree/TreeNode;

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->root:Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$PostorderEnumeration;->nextElement()Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object p0

    return-object p0
.end method
