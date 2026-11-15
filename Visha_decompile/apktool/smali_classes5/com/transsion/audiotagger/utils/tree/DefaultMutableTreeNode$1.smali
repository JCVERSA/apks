.class Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Lcom/transsion/audiotagger/utils/tree/TreeNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public nextElement()Lcom/transsion/audiotagger/utils/tree/TreeNode;
    .locals 1

    .line 2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "No more elements"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/DefaultMutableTreeNode$1;->nextElement()Lcom/transsion/audiotagger/utils/tree/TreeNode;

    move-result-object p0

    return-object p0
.end method
