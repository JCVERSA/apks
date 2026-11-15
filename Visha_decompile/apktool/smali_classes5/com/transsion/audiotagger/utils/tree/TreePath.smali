.class public Lcom/transsion/audiotagger/utils/tree/TreePath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient lastPathComponent:Ljava/lang/Object;

.field private parentPath:Lcom/transsion/audiotagger/utils/tree/TreePath;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/audiotagger/utils/tree/TreePath;Ljava/lang/Object;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 12
    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->parentPath:Lcom/transsion/audiotagger/utils/tree/TreePath;

    .line 13
    iput-object p2, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path in TreePath must be non null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 8
    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->parentPath:Lcom/transsion/audiotagger/utils/tree/TreePath;

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path in TreePath must be non null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 3
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    .line 4
    array-length v0, p1

    if-le v0, v1, :cond_0

    .line 5
    new-instance v0, Lcom/transsion/audiotagger/utils/tree/TreePath;

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-direct {v0, p1, v2}, Lcom/transsion/audiotagger/utils/tree/TreePath;-><init>([Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->parentPath:Lcom/transsion/audiotagger/utils/tree/TreePath;

    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "path in TreePath must be non null and not empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p2, -0x1

    .line 16
    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    .line 17
    new-instance p2, Lcom/transsion/audiotagger/utils/tree/TreePath;

    invoke-direct {p2, p1, v0}, Lcom/transsion/audiotagger/utils/tree/TreePath;-><init>([Ljava/lang/Object;I)V

    iput-object p2, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->parentPath:Lcom/transsion/audiotagger/utils/tree/TreePath;

    :cond_0
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

    const-string v1, "lastPathComponent"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

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

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    if-eqz v1, :cond_0

    instance-of v1, v1, Ljava/io/Serializable;

    if-eqz v1, :cond_0

    const-string v1, "lastPathComponent"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SuspiciousIndentation"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/audiotagger/utils/tree/TreePath;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/transsion/audiotagger/utils/tree/TreePath;

    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/TreePath;->getPathCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/utils/tree/TreePath;->getPathCount()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    iget-object v1, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    iget-object v3, p1, Lcom/transsion/audiotagger/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p1, p1, Lcom/transsion/audiotagger/utils/tree/TreePath;->parentPath:Lcom/transsion/audiotagger/utils/tree/TreePath;

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->parentPath:Lcom/transsion/audiotagger/utils/tree/TreePath;

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public getLastPathComponent()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    return-object p0
.end method

.method public getParentPath()Lcom/transsion/audiotagger/utils/tree/TreePath;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->parentPath:Lcom/transsion/audiotagger/utils/tree/TreePath;

    return-object p0
.end method

.method public getPath()[Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/TreePath;->getPathCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    new-array v0, v0, [Ljava/lang/Object;

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v2, v1, -0x1

    iget-object v3, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    aput-object v3, v0, v1

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->parentPath:Lcom/transsion/audiotagger/utils/tree/TreePath;

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPathComponent(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/TreePath;->getPathCount()I

    move-result v0

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->parentPath:Lcom/transsion/audiotagger/utils/tree/TreePath;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of the specified range"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPathCount()I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->parentPath:Lcom/transsion/audiotagger/utils/tree/TreePath;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/utils/tree/TreePath;->lastPathComponent:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isDescendant(Lcom/transsion/audiotagger/utils/tree/TreePath;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/TreePath;->getPathCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/audiotagger/utils/tree/TreePath;->getPathCount()I

    move-result v2

    if-ge v2, v1, :cond_1

    return v0

    :cond_1
    :goto_0
    add-int/lit8 v0, v2, -0x1

    if-le v2, v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/audiotagger/utils/tree/TreePath;->getParentPath()Lcom/transsion/audiotagger/utils/tree/TreePath;

    move-result-object p1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/audiotagger/utils/tree/TreePath;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public pathByAddingChild(Ljava/lang/Object;)Lcom/transsion/audiotagger/utils/tree/TreePath;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/audiotagger/utils/tree/TreePath;

    invoke-direct {v0, p0, p1}, Lcom/transsion/audiotagger/utils/tree/TreePath;-><init>(Lcom/transsion/audiotagger/utils/tree/TreePath;Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null child not allowed"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/audiotagger/utils/tree/TreePath;->getPathCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, v2}, Lcom/transsion/audiotagger/utils/tree/TreePath;->getPathComponent(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
