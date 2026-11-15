.class public final Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final color:Ljava/lang/String;

.field private final disabledColor:Ljava/lang/String;

.field private final enable:Z

.field private final icon:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final maskColor:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "disabledColor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskColor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    .line 10
    iput-boolean p5, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    .line 12
    iput-object p7, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p9, v0

    goto :goto_0

    :cond_0
    move-object p9, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    .line 2
    const-string p4, "#4D191F2B"

    :cond_3
    move-object v3, p4

    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x1

    :cond_4
    move v4, p5

    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, p6

    :goto_3
    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_6

    .line 3
    const-string p7, "#0F191F2B"

    :cond_6
    move-object p8, p7

    move-object p1, p0

    move-object p2, p9

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move p6, v4

    move-object p7, v0

    .line 4
    invoke-direct/range {p1 .. p8}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;
    .locals 5

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    move-object p9, p2

    .line 14
    and-int/lit8 p2, p8, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p8, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p8, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-boolean p5, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    and-int/lit8 p2, p8, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget-object p6, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    .line 40
    .line 41
    :cond_5
    move-object v3, p6

    .line 42
    and-int/lit8 p2, p8, 0x40

    .line 43
    .line 44
    if-eqz p2, :cond_6

    .line 45
    .line 46
    iget-object p7, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    .line 47
    .line 48
    :cond_6
    move-object v4, p7

    .line 49
    move-object p2, p0

    .line 50
    move-object p3, p1

    .line 51
    move-object p4, p9

    .line 52
    move-object p5, v0

    .line 53
    move-object p6, v1

    .line 54
    move p7, v2

    .line 55
    move-object p8, v3

    .line 56
    move-object p9, v4

    .line 57
    invoke-virtual/range {p2 .. p9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;
    .locals 9

    .line 1
    const-string v0, "disabledColor"

    .line 2
    .line 3
    move-object v5, p4

    .line 4
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "maskColor"

    .line 8
    .line 9
    move-object/from16 v8, p7

    .line 10
    .line 11
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    move-object v2, p1

    .line 18
    move-object v3, p2

    .line 19
    move-object v4, p3

    .line 20
    move v6, p5

    .line 21
    move-object v7, p6

    .line 22
    invoke-direct/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
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
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

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
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    .line 58
    .line 59
    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    .line 60
    .line 61
    if-eq v1, v3, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    return v0
.end method

.method public final getColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDisabledColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaskColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    add-int/2addr v2, v0

    .line 47
    mul-int/lit8 v2, v2, 0x1f

    .line 48
    .line 49
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    :cond_3
    add-int/2addr v2, v0

    .line 55
    mul-int/lit8 v2, v2, 0x1f

    .line 56
    .line 57
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    .line 58
    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    :goto_3
    add-int/2addr v2, v1

    .line 67
    mul-int/lit8 v2, v2, 0x1f

    .line 68
    .line 69
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    add-int/2addr v0, v2

    .line 76
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v8, "ActionItem(id="

    .line 21
    .line 22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", text="

    .line 29
    .line 30
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", color="

    .line 37
    .line 38
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", disabledColor="

    .line 45
    .line 46
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", enable="

    .line 53
    .line 54
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", icon="

    .line 61
    .line 62
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", maskColor="

    .line 69
    .line 70
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ")"

    .line 77
    .line 78
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
