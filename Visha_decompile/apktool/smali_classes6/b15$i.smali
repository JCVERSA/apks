.class public final Lb15$i;
.super Lb15;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;


# direct methods
.method public constructor <init>(ILcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)V
    .locals 1

    const-string v0, "subtitle"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb15;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lb15$i;->a:I

    iput-object p2, p0, Lb15$i;->b:Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lb15$i;->a:I

    return p0
.end method

.method public final b()Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;
    .locals 0

    iget-object p0, p0, Lb15$i;->b:Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb15$i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lb15$i;

    iget v1, p0, Lb15$i;->a:I

    iget v3, p1, Lb15$i;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lb15$i;->b:Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    iget-object p1, p1, Lb15$i;->b:Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lb15$i;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lb15$i;->b:Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lb15$i;->a:I

    iget-object p0, p0, Lb15$i;->b:Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubtitleUsageRecord(mediaId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", subtitle="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
