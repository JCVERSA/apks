.class public final Lngb$g;
.super Lngb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lngb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public final b:Lcom/transsion/dbdata/beans/media/PlayVideoData;

.field public final c:Lcom/transsion/dbdata/beans/PlayerStates;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/PlayerStates;)V
    .locals 1

    const-string v0, "mediaItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playStates"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lngb;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lngb$g;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object p2, p0, Lngb$g;->b:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iput-object p3, p0, Lngb$g;->c:Lcom/transsion/dbdata/beans/PlayerStates;

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 0

    iget-object p0, p0, Lngb$g;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method public final b()Lcom/transsion/dbdata/beans/PlayerStates;
    .locals 0

    iget-object p0, p0, Lngb$g;->c:Lcom/transsion/dbdata/beans/PlayerStates;

    return-object p0
.end method

.method public final c()Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 0

    iget-object p0, p0, Lngb$g;->b:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lngb$g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lngb$g;

    iget-object v1, p0, Lngb$g;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v3, p1, Lngb$g;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lngb$g;->b:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object v3, p1, Lngb$g;->b:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lngb$g;->c:Lcom/transsion/dbdata/beans/PlayerStates;

    iget-object p1, p1, Lngb$g;->c:Lcom/transsion/dbdata/beans/PlayerStates;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lngb$g;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lngb$g;->b:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lngb$g;->c:Lcom/transsion/dbdata/beans/PlayerStates;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lngb$g;->a:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, p0, Lngb$g;->b:Lcom/transsion/dbdata/beans/media/PlayVideoData;

    iget-object p0, p0, Lngb$g;->c:Lcom/transsion/dbdata/beans/PlayerStates;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoPlayRecord(mediaItem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", videoData="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", playStates="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
