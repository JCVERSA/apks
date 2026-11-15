.class public final Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/utils/PopWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PopWindowData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001d\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0007H\u00c6\u0003J\t\u0010$\u001a\u00020\tH\u00c6\u0003J\t\u0010%\u001a\u00020\u000bH\u00c6\u0003J;\u0010&\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010\'\u001a\u00020\u000b2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u00d6\u0003J\t\u0010*\u001a\u00020\u0007H\u00d6\u0001J\t\u0010+\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006,"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "appId",
        "",
        "delayTime",
        "",
        "priority",
        "",
        "popWindowController",
        "Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;",
        "ignoreInterval",
        "",
        "(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;Z)V",
        "getAppId",
        "()Ljava/lang/String;",
        "setAppId",
        "(Ljava/lang/String;)V",
        "getDelayTime",
        "()J",
        "setDelayTime",
        "(J)V",
        "getIgnoreInterval",
        "()Z",
        "setIgnoreInterval",
        "(Z)V",
        "getPopWindowController",
        "()Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;",
        "setPopWindowController",
        "(Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;)V",
        "getPriority",
        "()I",
        "setPriority",
        "(I)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field private appId:Ljava/lang/String;

.field private delayTime:J

.field private ignoreInterval:Z

.field private popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

.field private priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;Z)V
    .locals 1

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "popWindowController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    .line 5
    iput p4, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    .line 6
    iput-object p5, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    .line 7
    iput-boolean p6, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;-><init>(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;
    .locals 4

    .line 1
    and-int/lit8 p8, p7, 0x1

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p8, p7, 0x2

    .line 8
    .line 9
    if-eqz p8, :cond_1

    .line 10
    .line 11
    iget-wide p2, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    .line 12
    .line 13
    :cond_1
    move-wide v0, p2

    .line 14
    and-int/lit8 p2, p7, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget p4, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    .line 19
    .line 20
    :cond_2
    move p8, p4

    .line 21
    and-int/lit8 p2, p7, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p5, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    .line 26
    .line 27
    :cond_3
    move-object v2, p5

    .line 28
    and-int/lit8 p2, p7, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-boolean p6, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    .line 33
    .line 34
    :cond_4
    move v3, p6

    .line 35
    move-object p2, p0

    .line 36
    move-object p3, p1

    .line 37
    move-wide p4, v0

    .line 38
    move p6, p8

    .line 39
    move-object p7, v2

    .line 40
    move p8, v3

    .line 41
    invoke-virtual/range {p2 .. p8}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->copy(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;Z)Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;

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
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;Z)Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;
    .locals 8

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "popWindowController"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    move-object v2, p1

    .line 15
    move-wide v3, p2

    .line 16
    move v5, p4

    .line 17
    move-object v6, p5

    .line 18
    move v7, p6

    .line 19
    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;-><init>(Ljava/lang/String;JILcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;Z)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;

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
    check-cast p1, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

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
    iget-wide v3, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    .line 25
    .line 26
    iget-wide v5, p1, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    .line 27
    .line 28
    cmp-long v1, v3, v5

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    .line 34
    .line 35
    iget v3, p1, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    .line 36
    .line 37
    if-eq v1, v3, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    .line 41
    .line 42
    iget-object v3, p1, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    .line 43
    .line 44
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_5

    .line 49
    .line 50
    return v2

    .line 51
    :cond_5
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    .line 52
    .line 53
    iget-boolean p1, p1, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    .line 54
    .line 55
    if-eq v1, p1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDelayTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getIgnoreInterval()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPopWindowController()Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

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
    iget-wide v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    :cond_0
    add-int/2addr v0, v1

    .line 38
    return v0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setDelayTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setIgnoreInterval(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPopWindowController(Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    .line 7
    .line 8
    return-void
.end method

.method public final setPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->appId:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->delayTime:J

    .line 4
    .line 5
    iget v3, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->priority:I

    .line 6
    .line 7
    iget-object v4, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->popWindowController:Lcom/cloud/tmc/integration/utils/PopWindowManager$IPopWindowManagerController;

    .line 8
    .line 9
    iget-boolean v5, p0, Lcom/cloud/tmc/integration/utils/PopWindowManager$PopWindowData;->ignoreInterval:Z

    .line 10
    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v7, "PopWindowData(appId="

    .line 17
    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", delayTime="

    .line 25
    .line 26
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", priority="

    .line 33
    .line 34
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", popWindowController="

    .line 41
    .line 42
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", ignoreInterval="

    .line 49
    .line 50
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ")"

    .line 57
    .line 58
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
