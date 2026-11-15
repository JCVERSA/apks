.class public Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;
    }
.end annotation


# instance fields
.field private priority:I

.field private type:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->value()I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->priority:I

    .line 3
    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->typeFrom(Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    move-result-object p1

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->type:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    return-void
.end method

.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->priorityFrom(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;)I

    move-result v0

    iput v0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->priority:I

    .line 6
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->type:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    return-void
.end method

.method private static priorityFrom(Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;)I
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$1;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->TOP_PRIORITY:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->value()I

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->DEFAULT:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->value()I

    move-result p0

    return p0

    :cond_2
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->value()I

    move-result p0

    return p0
.end method

.method public static typeFrom(Lorg/proninyaroslav/libretorrent/core/model/data/Priority;)Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->HIGH:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->NORMAL:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;

    iget v2, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->priority:I

    iget v3, p1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->priority:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->type:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->getType()Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method public getPriority()Lorg/proninyaroslav/libretorrent/core/model/data/Priority;
    .locals 0

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->priority:I

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->fromValue(I)Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    move-result-object p0

    return-object p0
.end method

.method public getType()Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->type:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilePriority{priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;->type:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
