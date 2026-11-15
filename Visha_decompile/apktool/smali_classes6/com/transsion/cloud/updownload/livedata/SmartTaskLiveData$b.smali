.class public final Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/Map;

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Map;J)V
    .locals 1

    const-string v0, "taskIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileExistMap"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->b:Ljava/util/Map;

    iput-wide p3, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->c:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->b:Ljava/util/Map;

    return-object p0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->c:J

    return-wide v0
.end method

.method public final c()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->a:Ljava/util/Set;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->a:Ljava/util/Set;

    iget-object v3, p1, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->a:Ljava/util/Set;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->b:Ljava/util/Map;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->c:J

    iget-wide p0, p1, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->c:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->a:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->b:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->b:Ljava/util/Map;

    iget-wide v2, p0, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData$b;->c:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TaskSignature(taskIds="

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", fileExistMap="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", maxUpdateTime="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
