.class public final Lcom/transsion/base/infras_config/model/ConfigLocalState;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0005H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/base/infras_config/model/ConfigLocalState;",
        "",
        "sourceType",
        "Lcom/transsion/base/infras_config/model/InfrasSourceType;",
        "curVersion",
        "",
        "<init>",
        "(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;)V",
        "getSourceType",
        "()Lcom/transsion/base/infras_config/model/InfrasSourceType;",
        "getCurVersion",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "base_infras_config_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final curVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "curVersion"
    .end annotation
.end field

.field private final sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sourceType"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sourceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/base/infras_config/model/ConfigLocalState;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    .line 3
    iput-object p2, p0, Lcom/transsion/base/infras_config/model/ConfigLocalState;->curVersion:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/base/infras_config/model/ConfigLocalState;-><init>(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/base/infras_config/model/ConfigLocalState;Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/base/infras_config/model/ConfigLocalState;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/base/infras_config/model/ConfigLocalState;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/base/infras_config/model/ConfigLocalState;->curVersion:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/base/infras_config/model/ConfigLocalState;->copy(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;)Lcom/transsion/base/infras_config/model/ConfigLocalState;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/base/infras_config/model/InfrasSourceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigLocalState;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigLocalState;->curVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;)Lcom/transsion/base/infras_config/model/ConfigLocalState;
    .locals 1

    .line 1
    const-string v0, "sourceType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsion/base/infras_config/model/ConfigLocalState;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/transsion/base/infras_config/model/ConfigLocalState;-><init>(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
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
    instance-of v1, p1, Lcom/transsion/base/infras_config/model/ConfigLocalState;

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
    check-cast p1, Lcom/transsion/base/infras_config/model/ConfigLocalState;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigLocalState;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/base/infras_config/model/ConfigLocalState;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigLocalState;->curVersion:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/transsion/base/infras_config/model/ConfigLocalState;->curVersion:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final getCurVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigLocalState;->curVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSourceType()Lcom/transsion/base/infras_config/model/InfrasSourceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigLocalState;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/base/infras_config/model/ConfigLocalState;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigLocalState;->curVersion:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ConfigLocalState(sourceType="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigLocalState;->sourceType:Lcom/transsion/base/infras_config/model/InfrasSourceType;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", curVersion="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/transsion/base/infras_config/model/ConfigLocalState;->curVersion:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
