.class public final Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private customStyle:Z

.field private dotBadge:Z

.field private icon:I

.field private final id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    .line 6
    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    .line 7
    iput-boolean p5, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;Ljava/lang/String;ILjava/lang/String;ZZILjava/lang/Object;)Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    .line 12
    .line 13
    :cond_1
    move p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-boolean p4, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    .line 26
    .line 27
    :cond_3
    move v1, p4

    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-boolean p5, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move-object p3, p1

    .line 37
    move p4, p7

    .line 38
    move-object p5, v0

    .line 39
    move p6, v1

    .line 40
    move p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->copy(Ljava/lang/String;ILjava/lang/String;ZZ)Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;ZZ)Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;
    .locals 7

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    move-object v2, p1

    .line 10
    move v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move v5, p4

    .line 13
    move v6, p5

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 15
    .line 16
    .line 17
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
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

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
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    .line 25
    .line 26
    iget v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    .line 43
    .line 44
    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    .line 45
    .line 46
    if-eq v1, v3, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    .line 50
    .line 51
    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    .line 52
    .line 53
    if-eq v1, p1, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    return v0
.end method

.method public final getCustomStyle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getDotBadge()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    .line 2
    .line 3
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    add-int/2addr v1, v0

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    move v0, v2

    .line 33
    :cond_1
    add-int/2addr v1, v0

    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v2, v0

    .line 42
    :goto_1
    add-int/2addr v1, v2

    .line 43
    return v1
.end method

.method public final setCustomStyle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDotBadge(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    .line 2
    .line 3
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v6, "MenuItem(id="

    .line 17
    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", icon="

    .line 25
    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", name="

    .line 33
    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", dotBadge="

    .line 41
    .line 42
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", customStyle="

    .line 49
    .line 50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ")"

    .line 57
    .line 58
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
