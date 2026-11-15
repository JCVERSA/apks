.class public final Lcom/cloud/tupdate/bean/UpdateEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\r\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/cloud/tupdate/bean/UpdateEntity;",
        "",
        "updateContent",
        "Lcom/cloud/tupdate/bean/UpdateContent;",
        "appScoreContent",
        "Lcom/cloud/tupdate/bean/AppScoreContent;",
        "(Lcom/cloud/tupdate/bean/UpdateContent;Lcom/cloud/tupdate/bean/AppScoreContent;)V",
        "getAppScoreContent",
        "()Lcom/cloud/tupdate/bean/AppScoreContent;",
        "getUpdateContent",
        "()Lcom/cloud/tupdate/bean/UpdateContent;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "tupdate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final appScoreContent:Lcom/cloud/tupdate/bean/AppScoreContent;

.field private final updateContent:Lcom/cloud/tupdate/bean/UpdateContent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/cloud/tupdate/bean/UpdateEntity;-><init>(Lcom/cloud/tupdate/bean/UpdateContent;Lcom/cloud/tupdate/bean/AppScoreContent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tupdate/bean/UpdateContent;Lcom/cloud/tupdate/bean/AppScoreContent;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloud/tupdate/bean/UpdateEntity;->updateContent:Lcom/cloud/tupdate/bean/UpdateContent;

    .line 4
    iput-object p2, p0, Lcom/cloud/tupdate/bean/UpdateEntity;->appScoreContent:Lcom/cloud/tupdate/bean/AppScoreContent;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/tupdate/bean/UpdateContent;Lcom/cloud/tupdate/bean/AppScoreContent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tupdate/bean/UpdateEntity;-><init>(Lcom/cloud/tupdate/bean/UpdateContent;Lcom/cloud/tupdate/bean/AppScoreContent;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tupdate/bean/UpdateEntity;Lcom/cloud/tupdate/bean/UpdateContent;Lcom/cloud/tupdate/bean/AppScoreContent;ILjava/lang/Object;)Lcom/cloud/tupdate/bean/UpdateEntity;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/cloud/tupdate/bean/UpdateEntity;->updateContent:Lcom/cloud/tupdate/bean/UpdateContent;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/cloud/tupdate/bean/UpdateEntity;->appScoreContent:Lcom/cloud/tupdate/bean/AppScoreContent;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tupdate/bean/UpdateEntity;->copy(Lcom/cloud/tupdate/bean/UpdateContent;Lcom/cloud/tupdate/bean/AppScoreContent;)Lcom/cloud/tupdate/bean/UpdateEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/cloud/tupdate/bean/UpdateContent;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tupdate/bean/UpdateEntity;->updateContent:Lcom/cloud/tupdate/bean/UpdateContent;

    return-object p0
.end method

.method public final component2()Lcom/cloud/tupdate/bean/AppScoreContent;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tupdate/bean/UpdateEntity;->appScoreContent:Lcom/cloud/tupdate/bean/AppScoreContent;

    return-object p0
.end method

.method public final copy(Lcom/cloud/tupdate/bean/UpdateContent;Lcom/cloud/tupdate/bean/AppScoreContent;)Lcom/cloud/tupdate/bean/UpdateEntity;
    .locals 0

    new-instance p0, Lcom/cloud/tupdate/bean/UpdateEntity;

    invoke-direct {p0, p1, p2}, Lcom/cloud/tupdate/bean/UpdateEntity;-><init>(Lcom/cloud/tupdate/bean/UpdateContent;Lcom/cloud/tupdate/bean/AppScoreContent;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tupdate/bean/UpdateEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tupdate/bean/UpdateEntity;

    iget-object v1, p0, Lcom/cloud/tupdate/bean/UpdateEntity;->updateContent:Lcom/cloud/tupdate/bean/UpdateContent;

    iget-object v3, p1, Lcom/cloud/tupdate/bean/UpdateEntity;->updateContent:Lcom/cloud/tupdate/bean/UpdateContent;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/cloud/tupdate/bean/UpdateEntity;->appScoreContent:Lcom/cloud/tupdate/bean/AppScoreContent;

    iget-object p1, p1, Lcom/cloud/tupdate/bean/UpdateEntity;->appScoreContent:Lcom/cloud/tupdate/bean/AppScoreContent;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAppScoreContent()Lcom/cloud/tupdate/bean/AppScoreContent;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tupdate/bean/UpdateEntity;->appScoreContent:Lcom/cloud/tupdate/bean/AppScoreContent;

    return-object p0
.end method

.method public final getUpdateContent()Lcom/cloud/tupdate/bean/UpdateContent;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tupdate/bean/UpdateEntity;->updateContent:Lcom/cloud/tupdate/bean/UpdateContent;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/cloud/tupdate/bean/UpdateEntity;->updateContent:Lcom/cloud/tupdate/bean/UpdateContent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/tupdate/bean/UpdateContent;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/cloud/tupdate/bean/UpdateEntity;->appScoreContent:Lcom/cloud/tupdate/bean/AppScoreContent;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/tupdate/bean/AppScoreContent;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateEntity(updateContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tupdate/bean/UpdateEntity;->updateContent:Lcom/cloud/tupdate/bean/UpdateContent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appScoreContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/cloud/tupdate/bean/UpdateEntity;->appScoreContent:Lcom/cloud/tupdate/bean/AppScoreContent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
