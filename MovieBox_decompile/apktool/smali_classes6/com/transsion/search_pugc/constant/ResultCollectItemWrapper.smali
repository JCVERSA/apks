.class public final Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;
    }
.end annotation


# instance fields
.field private final a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

.field private final b:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 4
    iput-object p2, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->b:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 5
    sget-object p2, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;->DATA:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->b:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    .line 2
    .line 3
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
    instance-of v1, p1, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;

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
    check-cast p1, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

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
    iget-object v1, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->b:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->b:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    .line 27
    .line 28
    if-eq v1, p1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->b:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->b:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "ResultCollectItemWrapper(data="

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ", type="

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ")"

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
