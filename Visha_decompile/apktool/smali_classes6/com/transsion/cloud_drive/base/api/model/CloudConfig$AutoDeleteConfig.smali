.class public final Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloud_drive/base/api/model/CloudConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutoDeleteConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\rJ&\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00032\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\"\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;",
        "",
        "abandonAutoDelete",
        "",
        "autoDeleteStrategy",
        "",
        "(Ljava/lang/Boolean;Ljava/lang/Integer;)V",
        "getAbandonAutoDelete",
        "()Ljava/lang/Boolean;",
        "setAbandonAutoDelete",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getAutoDeleteStrategy",
        "()Ljava/lang/Integer;",
        "setAutoDeleteStrategy",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private abandonAutoDelete:Ljava/lang/Boolean;
    .annotation runtime Lv95;
        name = "abandon_auto_delete"
    .end annotation
.end field

.field private autoDeleteStrategy:Ljava/lang/Integer;
    .annotation runtime Lv95;
        name = "auto_delete_strategy"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->abandonAutoDelete:Ljava/lang/Boolean;

    .line 4
    iput-object p2, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->autoDeleteStrategy:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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
    invoke-direct {p0, p1, p2}, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;Ljava/lang/Boolean;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->abandonAutoDelete:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->autoDeleteStrategy:Ljava/lang/Integer;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->copy(Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->abandonAutoDelete:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->autoDeleteStrategy:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy(Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;
    .locals 0

    new-instance p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;

    invoke-direct {p0, p1, p2}, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;

    iget-object v1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->abandonAutoDelete:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->abandonAutoDelete:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->autoDeleteStrategy:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->autoDeleteStrategy:Ljava/lang/Integer;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAbandonAutoDelete()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->abandonAutoDelete:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getAutoDeleteStrategy()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->autoDeleteStrategy:Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->abandonAutoDelete:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->autoDeleteStrategy:Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAbandonAutoDelete(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->abandonAutoDelete:Ljava/lang/Boolean;

    return-void
.end method

.method public final setAutoDeleteStrategy(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->autoDeleteStrategy:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->abandonAutoDelete:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/CloudConfig$AutoDeleteConfig;->autoDeleteStrategy:Ljava/lang/Integer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoDeleteConfig(abandonAutoDelete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", autoDeleteStrategy="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
