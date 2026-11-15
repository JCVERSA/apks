.class public final Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Params"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008 \u0008\u0086\u0008\u0018\u00002\u00020\u0001B=\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u000b\u0010!\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010$\u001a\u00020\tH\u00c6\u0003J\t\u0010%\u001a\u00020\u000bH\u00c6\u0003JA\u0010&\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010\'\u001a\u00020\t2\u0008\u0010(\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010)\u001a\u00020\u000bH\u00d6\u0001J\t\u0010*\u001a\u00020\u0005H\u00d6\u0001R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006+"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;",
        "",
        "context",
        "Landroid/content/Context;",
        "appId",
        "",
        "app",
        "Lcom/cloud/tmc/integration/structure/node/AppNode;",
        "autoExit",
        "",
        "fromType",
        "",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/AppNode;ZI)V",
        "getApp",
        "()Lcom/cloud/tmc/integration/structure/node/AppNode;",
        "setApp",
        "(Lcom/cloud/tmc/integration/structure/node/AppNode;)V",
        "getAppId",
        "()Ljava/lang/String;",
        "setAppId",
        "(Ljava/lang/String;)V",
        "getAutoExit",
        "()Z",
        "setAutoExit",
        "(Z)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "getFromType",
        "()I",
        "setFromType",
        "(I)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
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
.field private app:Lcom/cloud/tmc/integration/structure/node/AppNode;

.field private appId:Ljava/lang/String;

.field private autoExit:Z

.field private context:Landroid/content/Context;

.field private fromType:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/AppNode;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/AppNode;ZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->appId:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->app:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 6
    iput-boolean p4, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->autoExit:Z

    .line 7
    iput p5, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->fromType:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/AppNode;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    move v2, p2

    goto :goto_3

    :cond_3
    move v2, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move p6, p2

    goto :goto_4

    :cond_4
    move p6, p5

    :goto_4
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v0

    move p5, v2

    .line 8
    invoke-direct/range {p1 .. p6}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/AppNode;ZI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/AppNode;ZIILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->context:Landroid/content/Context;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->appId:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    move-object p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->app:Lcom/cloud/tmc/integration/structure/node/AppNode;

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
    iget-boolean p4, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->autoExit:Z

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
    iget p5, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->fromType:I

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move-object p3, p1

    .line 37
    move-object p4, p7

    .line 38
    move-object p5, v0

    .line 39
    move p6, v1

    .line 40
    move p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->copy(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/AppNode;ZI)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lcom/cloud/tmc/integration/structure/node/AppNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->app:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->autoExit:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->fromType:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/AppNode;ZI)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;
    .locals 7

    .line 1
    new-instance v6, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/AppNode;ZI)V

    .line 10
    .line 11
    .line 12
    return-object v6
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
    instance-of v1, p1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

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
    check-cast p1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->context:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->context:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->appId:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->appId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->app:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->app:Lcom/cloud/tmc/integration/structure/node/AppNode;

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
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->autoExit:Z

    .line 47
    .line 48
    iget-boolean v3, p1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->autoExit:Z

    .line 49
    .line 50
    if-eq v1, v3, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget v1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->fromType:I

    .line 54
    .line 55
    iget p1, p1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->fromType:I

    .line 56
    .line 57
    if-eq v1, p1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    return v0
.end method

.method public final getApp()Lcom/cloud/tmc/integration/structure/node/AppNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->app:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAutoExit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->autoExit:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFromType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->fromType:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->context:Landroid/content/Context;

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
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->appId:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->app:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_2
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->autoExit:Z

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_3
    add-int/2addr v0, v1

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget v1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->fromType:I

    .line 48
    .line 49
    add-int/2addr v0, v1

    .line 50
    return v0
.end method

.method public final setApp(Lcom/cloud/tmc/integration/structure/node/AppNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->app:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 2
    .line 3
    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAutoExit(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->autoExit:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method public final setFromType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->fromType:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->context:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->appId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->app:Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->autoExit:Z

    .line 8
    .line 9
    iget v4, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;->fromType:I

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v6, "Params(context="

    .line 17
    .line 18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ", appId="

    .line 25
    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", app="

    .line 33
    .line 34
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", autoExit="

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
    const-string v0, ", fromType="

    .line 49
    .line 50
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
