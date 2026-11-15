.class public final Lcom/transsion/cloud_drive/base/api/model/AppInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/AppInfo;",
        "",
        "type",
        "",
        "usedSize",
        "",
        "(Ljava/lang/String;J)V",
        "getType",
        "()Ljava/lang/String;",
        "getUsedSize",
        "()J",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "cloud-drive-base_release"
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
.field private final type:Ljava/lang/String;

.field private final usedSize:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud_drive/base/api/model/AppInfo;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "appType"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lv95;
            name = "appUsedSpaceUsed"
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->type:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->usedSize:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 5
    const-string p1, ""

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const-wide/16 p2, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/api/model/AppInfo;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/cloud_drive/base/api/model/AppInfo;Ljava/lang/String;JILjava/lang/Object;)Lcom/transsion/cloud_drive/base/api/model/AppInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->type:Ljava/lang/String;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->usedSize:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->copy(Ljava/lang/String;J)Lcom/transsion/cloud_drive/base/api/model/AppInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->usedSize:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;J)Lcom/transsion/cloud_drive/base/api/model/AppInfo;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "appType"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lv95;
            name = "appUsedSpaceUsed"
        .end annotation
    .end param

    const-string p0, "type"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/cloud_drive/base/api/model/AppInfo;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/api/model/AppInfo;-><init>(Ljava/lang/String;J)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/cloud_drive/base/api/model/AppInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/AppInfo;

    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->usedSize:J

    iget-wide p0, p1, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->usedSize:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final getUsedSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->usedSize:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->usedSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->type:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/cloud_drive/base/api/model/AppInfo;->usedSize:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppInfo(type="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", usedSize="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
