.class public final Lcom/transsion/log/upload/data/RuleRequestModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u001f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001BA\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0007H\u00c6\u0003J\t\u0010!\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00c6\u0003J\t\u0010#\u001a\u00020\u0005H\u00c6\u0003JE\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010%\u001a\u00020\u00032\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u00d6\u0003J\t\u0010(\u001a\u00020)H\u00d6\u0001J\t\u0010*\u001a\u00020\u0007H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0008\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015\"\u0004\u0008\u0019\u0010\u0017R\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0011\"\u0004\u0008\u001d\u0010\u0013\u00a8\u0006+"
    }
    d2 = {
        "Lcom/transsion/log/upload/data/RuleRequestModel;",
        "Ljava/io/Serializable;",
        "isOpen",
        "",
        "collectionLength",
        "",
        "secretKey",
        "",
        "iv",
        "appSign",
        "maxFileSize",
        "<init>",
        "(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V",
        "()Z",
        "setOpen",
        "(Z)V",
        "getCollectionLength",
        "()J",
        "setCollectionLength",
        "(J)V",
        "getSecretKey",
        "()Ljava/lang/String;",
        "setSecretKey",
        "(Ljava/lang/String;)V",
        "getIv",
        "setIv",
        "getAppSign",
        "setAppSign",
        "getMaxFileSize",
        "setMaxFileSize",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "UBT_release"
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
.field private appSign:Ljava/lang/String;

.field private collectionLength:J

.field private isOpen:Z

.field private iv:Ljava/lang/String;

.field private maxFileSize:J

.field private secretKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "secretKey"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iv"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSign"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->isOpen:Z

    iput-wide p2, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->collectionLength:J

    iput-object p4, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->secretKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->iv:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->appSign:Ljava/lang/String;

    iput-wide p7, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->maxFileSize:J

    return-void
.end method

.method public synthetic constructor <init>(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    move-wide v3, v0

    goto :goto_1

    :cond_1
    move-wide v3, p2

    :goto_1
    and-int/lit8 v0, p9, 0x4

    .line 2
    const-string v1, ""

    if-eqz v0, :cond_2

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_3

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_4

    move-object v7, v1

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    move-object v1, p0

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/transsion/log/upload/data/RuleRequestModel;-><init>(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/log/upload/data/RuleRequestModel;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lcom/transsion/log/upload/data/RuleRequestModel;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/transsion/log/upload/data/RuleRequestModel;->isOpen:Z

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/transsion/log/upload/data/RuleRequestModel;->collectionLength:J

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/log/upload/data/RuleRequestModel;->secretKey:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/log/upload/data/RuleRequestModel;->iv:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/log/upload/data/RuleRequestModel;->appSign:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget-wide v7, v0, Lcom/transsion/log/upload/data/RuleRequestModel;->maxFileSize:J

    goto :goto_5

    :cond_5
    move-wide/from16 v7, p7

    :goto_5
    move p1, v1

    move-wide p2, v2

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-wide/from16 p7, v7

    invoke-virtual/range {p0 .. p8}, Lcom/transsion/log/upload/data/RuleRequestModel;->copy(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/transsion/log/upload/data/RuleRequestModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->isOpen:Z

    return p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->collectionLength:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->secretKey:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->iv:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->appSign:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->maxFileSize:J

    return-wide v0
.end method

.method public final copy(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/transsion/log/upload/data/RuleRequestModel;
    .locals 10

    const-string v0, "secretKey"

    move-object v5, p4

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iv"

    move-object v6, p5

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSign"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/log/upload/data/RuleRequestModel;

    move-object v1, v0

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/transsion/log/upload/data/RuleRequestModel;-><init>(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/log/upload/data/RuleRequestModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/log/upload/data/RuleRequestModel;

    iget-boolean v1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->isOpen:Z

    iget-boolean v3, p1, Lcom/transsion/log/upload/data/RuleRequestModel;->isOpen:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->collectionLength:J

    iget-wide v5, p1, Lcom/transsion/log/upload/data/RuleRequestModel;->collectionLength:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->secretKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/log/upload/data/RuleRequestModel;->secretKey:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->iv:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/log/upload/data/RuleRequestModel;->iv:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->appSign:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/log/upload/data/RuleRequestModel;->appSign:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->maxFileSize:J

    iget-wide p0, p1, Lcom/transsion/log/upload/data/RuleRequestModel;->maxFileSize:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAppSign()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->appSign:Ljava/lang/String;

    return-object p0
.end method

.method public final getCollectionLength()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->collectionLength:J

    return-wide v0
.end method

.method public final getIv()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->iv:Ljava/lang/String;

    return-object p0
.end method

.method public final getMaxFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->maxFileSize:J

    return-wide v0
.end method

.method public final getSecretKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->secretKey:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->isOpen:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->collectionLength:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->secretKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->iv:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->appSign:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->maxFileSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isOpen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->isOpen:Z

    return p0
.end method

.method public final setAppSign(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->appSign:Ljava/lang/String;

    return-void
.end method

.method public final setCollectionLength(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->collectionLength:J

    return-void
.end method

.method public final setIv(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->iv:Ljava/lang/String;

    return-void
.end method

.method public final setMaxFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->maxFileSize:J

    return-void
.end method

.method public final setOpen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->isOpen:Z

    return-void
.end method

.method public final setSecretKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->secretKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-boolean v0, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->isOpen:Z

    iget-wide v1, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->collectionLength:J

    iget-object v3, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->secretKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->iv:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->appSign:Ljava/lang/String;

    iget-wide v6, p0, Lcom/transsion/log/upload/data/RuleRequestModel;->maxFileSize:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RuleRequestModel(isOpen="

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", collectionLength="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", secretKey="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", iv="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appSign="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", maxFileSize="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
