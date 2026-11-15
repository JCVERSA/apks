.class public Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;,
        Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$SortingColumnsInterface;
    }
.end annotation


# instance fields
.field public a:Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

.field public b:Ljava/lang/String;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting;->a:Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseSorting{direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting;->a:Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting$Direction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", columnName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/sorting/BaseSorting;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
