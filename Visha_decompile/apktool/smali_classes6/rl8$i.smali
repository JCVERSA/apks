.class public final Lrl8$i;
.super Lrl8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrl8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final d:I


# direct methods
.method public constructor <init>(IZZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrl8;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lrl8$i;->a:I

    iput-boolean p2, p0, Lrl8$i;->b:Z

    iput-boolean p3, p0, Lrl8$i;->c:Z

    iput p4, p0, Lrl8$i;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 0

    iget-boolean p0, p0, Lrl8$i;->c:Z

    if-eqz p0, :cond_0

    const-class p0, Lcom/transsion/dbdata/database/PlayListFolderItem;

    goto :goto_0

    :cond_0
    const-class p0, Lcom/transsion/dbdata/database/PlayListItem;

    :goto_0
    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lrl8$i;->c:Z

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lrl8$i;->a:I

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lrl8$i;->b:Z

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lrl8$i;->d:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lrl8$i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lrl8$i;

    iget v1, p0, Lrl8$i;->a:I

    iget v3, p1, Lrl8$i;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lrl8$i;->b:Z

    iget-boolean v3, p1, Lrl8$i;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lrl8$i;->c:Z

    iget-boolean v3, p1, Lrl8$i;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lrl8$i;->d:I

    iget p1, p1, Lrl8$i;->d:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lrl8$i;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lrl8$i;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lrl8$i;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lrl8$i;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lrl8$i;->a:I

    iget-boolean v1, p0, Lrl8$i;->b:Z

    iget-boolean v2, p0, Lrl8$i;->c:Z

    iget p0, p0, Lrl8$i;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlayListFolders(createType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", excludeFavorite="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", countChildElements="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", limitCount="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
