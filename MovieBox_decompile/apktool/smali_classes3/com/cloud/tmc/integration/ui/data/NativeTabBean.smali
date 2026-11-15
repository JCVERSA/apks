.class public final Lcom/cloud/tmc/integration/ui/data/NativeTabBean;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0096\u0002J\u0008\u0010\"\u001a\u00020\u0013H\u0016J\u0008\u0010#\u001a\u00020\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006$"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/ui/data/NativeTabBean;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "()V",
        "backgroundColor",
        "",
        "getBackgroundColor",
        "()Ljava/lang/String;",
        "setBackgroundColor",
        "(Ljava/lang/String;)V",
        "color",
        "getColor",
        "setColor",
        "selectBackgroundColor",
        "getSelectBackgroundColor",
        "setSelectBackgroundColor",
        "selectedColor",
        "getSelectedColor",
        "setSelectedColor",
        "selectedIndex",
        "",
        "getSelectedIndex",
        "()I",
        "setSelectedIndex",
        "(I)V",
        "tabList",
        "",
        "getTabList",
        "()Ljava/util/List;",
        "setTabList",
        "(Ljava/util/List;)V",
        "equals",
        "",
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
.field private backgroundColor:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private selectBackgroundColor:Ljava/lang/String;

.field private selectedColor:Ljava/lang/String;

.field private selectedIndex:I

.field private tabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedIndex:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
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
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->color:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->color:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_4

    .line 32
    .line 33
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedColor:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedColor:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    iget v2, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedIndex:I

    .line 44
    .line 45
    iget v3, p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedIndex:I

    .line 46
    .line 47
    if-ne v2, v3, :cond_4

    .line 48
    .line 49
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectBackgroundColor:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectBackgroundColor:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->tabList:Ljava/util/List;

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move-object v2, v3

    .line 70
    :goto_0
    iget-object p1, p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->tabList:Ljava/util/List;

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    :cond_3
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    move v0, v1

    .line 86
    :goto_1
    return v0

    .line 87
    :cond_5
    :goto_2
    return v1
.end method

.method public final getBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->backgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSelectBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectBackgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSelectedColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSelectedIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTabList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->tabList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->color:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedColor:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->backgroundColor:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedIndex:I

    .line 8
    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectBackgroundColor:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->tabList:Ljava/util/List;

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v5, 0x0

    .line 25
    :goto_0
    const/4 v6, 0x6

    .line 26
    new-array v6, v6, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    aput-object v0, v6, v7

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput-object v1, v6, v0

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    aput-object v2, v6, v0

    .line 36
    .line 37
    const/4 v0, 0x3

    .line 38
    aput-object v3, v6, v0

    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    aput-object v4, v6, v0

    .line 42
    .line 43
    const/4 v0, 0x5

    .line 44
    aput-object v5, v6, v0

    .line 45
    .line 46
    invoke-static {v6}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    return v0
.end method

.method public final setBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->backgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSelectBackgroundColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectBackgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSelectedColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedColor:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSelectedIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTabList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->tabList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->color:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedColor:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->backgroundColor:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectBackgroundColor:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->selectedIndex:I

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->tabList:Ljava/util/List;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v5, 0x0

    .line 21
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v7, "NativeTabBean(color="

    .line 27
    .line 28
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ", selectedColor="

    .line 35
    .line 36
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ", backgroundColor="

    .line 43
    .line 44
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", selectBackgroundColor="

    .line 51
    .line 52
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ", selectedIndex="

    .line 59
    .line 60
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, ", tabList="

    .line 67
    .line 68
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ")"

    .line 75
    .line 76
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method
