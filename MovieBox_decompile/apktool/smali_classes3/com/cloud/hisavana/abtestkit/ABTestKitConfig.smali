.class public final Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\"B)\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J2\u0010\u001a\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00032\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\r\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006#"
    }
    d2 = {
        "Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;",
        "",
        "useTestEnvironment",
        "",
        "httpRequestTimeInterval",
        "",
        "initCompleteListener",
        "Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;",
        "(Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V",
        "getHttpRequestTimeInterval",
        "()Ljava/lang/Long;",
        "setHttpRequestTimeInterval",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getInitCompleteListener",
        "()Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;",
        "setInitCompleteListener",
        "(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V",
        "getUseTestEnvironment",
        "()Ljava/lang/Boolean;",
        "setUseTestEnvironment",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Builder",
        "abtestkit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private httpRequestTimeInterval:Ljava/lang/Long;

.field private initCompleteListener:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

.field private useTestEnvironment:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->useTestEnvironment:Ljava/lang/Boolean;

    .line 4
    iput-object p2, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->httpRequestTimeInterval:Ljava/lang/Long;

    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->initCompleteListener:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;ILjava/lang/Object;)Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->useTestEnvironment:Ljava/lang/Boolean;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->httpRequestTimeInterval:Ljava/lang/Long;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->initCompleteListener:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->copy(Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->useTestEnvironment:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->httpRequestTimeInterval:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->initCompleteListener:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V

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
    instance-of v1, p1, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

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
    check-cast p1, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->useTestEnvironment:Ljava/lang/Boolean;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->useTestEnvironment:Ljava/lang/Boolean;

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
    iget-object v1, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->httpRequestTimeInterval:Ljava/lang/Long;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->httpRequestTimeInterval:Ljava/lang/Long;

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
    iget-object v1, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->initCompleteListener:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->initCompleteListener:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    .line 38
    .line 39
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    return v0
.end method

.method public final getHttpRequestTimeInterval()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->httpRequestTimeInterval:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInitCompleteListener()Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->initCompleteListener:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUseTestEnvironment()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->useTestEnvironment:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->useTestEnvironment:Ljava/lang/Boolean;

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
    iget-object v2, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->httpRequestTimeInterval:Ljava/lang/Long;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget-object v2, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->initCompleteListener:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

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
    return v0
.end method

.method public final setHttpRequestTimeInterval(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->httpRequestTimeInterval:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setInitCompleteListener(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->initCompleteListener:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setUseTestEnvironment(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->useTestEnvironment:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ABTestKitConfig(useTestEnvironment="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->useTestEnvironment:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", httpRequestTimeInterval="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->httpRequestTimeInterval:Ljava/lang/Long;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", initCompleteListener="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->initCompleteListener:Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x29

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
