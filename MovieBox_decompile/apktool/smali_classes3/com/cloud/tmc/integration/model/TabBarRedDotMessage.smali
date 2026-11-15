.class public final Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0017\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J3\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u00052\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00d6\u0003J\t\u0010 \u001a\u00020\u0003H\u00d6\u0001J\t\u0010!\u001a\u00020\u0007H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0008\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\"\u0004\u0008\u0013\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\""
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "index",
        "",
        "showRedDot",
        "",
        "unreadIcon",
        "",
        "showUnreadIcon",
        "(IZLjava/lang/String;Z)V",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "getShowRedDot",
        "()Z",
        "setShowRedDot",
        "(Z)V",
        "getShowUnreadIcon",
        "setShowUnreadIcon",
        "getUnreadIcon",
        "()Ljava/lang/String;",
        "setUnreadIcon",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private index:I

.field private showRedDot:Z

.field private showUnreadIcon:Z

.field private unreadIcon:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;-><init>(IZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 4
    iput p1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    .line 5
    iput-boolean p2, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    .line 6
    iput-object p3, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    .line 7
    iput-boolean p4, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    return-void
.end method

.method public synthetic constructor <init>(IZLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 2
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;-><init>(IZLjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;IZLjava/lang/String;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-boolean p2, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-boolean p4, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->copy(IZLjava/lang/String;Z)Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(IZLjava/lang/String;Z)Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;-><init>(IZLjava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    .line 12
    .line 13
    iget v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    .line 14
    .line 15
    iget v3, p1, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    .line 39
    .line 40
    iget-boolean p1, p1, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    .line 41
    .line 42
    if-eq v1, p1, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    return v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShowRedDot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getShowUnreadIcon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getUnreadIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move v1, v2

    .line 11
    :cond_0
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    :goto_0
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    move v2, v1

    .line 33
    :goto_1
    add-int/2addr v0, v2

    .line 34
    return v0
.end method

.method public final setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShowRedDot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShowUnreadIcon(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setUnreadIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->index:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showRedDot:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->unreadIcon:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->showUnreadIcon:Z

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "TabBarRedDotMessage(index="

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", showRedDot="

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", unreadIcon="

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", showUnreadIcon="

    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
