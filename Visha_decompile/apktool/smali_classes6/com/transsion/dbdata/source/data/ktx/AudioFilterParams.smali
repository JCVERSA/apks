.class public final Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\tR\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;",
        "",
        "filtered",
        "",
        "needFilter",
        "excludeConvertOutFolder",
        "<init>",
        "(ZZZ)V",
        "getFiltered",
        "()Z",
        "getNeedFilter",
        "getExcludeConvertOutFolder",
        "isSimpleMode",
        "isExcludeOnlyMode",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "dbdata_release"
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
.field private final excludeConvertOutFolder:Z

.field private final filtered:Z

.field private final isExcludeOnlyMode:Z

.field private final isSimpleMode:Z

.field private final needFilter:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->filtered:Z

    .line 4
    iput-boolean p2, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->needFilter:Z

    .line 5
    iput-boolean p3, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->excludeConvertOutFolder:Z

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    .line 6
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->isSimpleMode:Z

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    move p1, v0

    .line 7
    :cond_1
    iput-boolean p1, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->isExcludeOnlyMode:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 8
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;-><init>(ZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->filtered:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->needFilter:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->excludeConvertOutFolder:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->copy(ZZZ)Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->filtered:Z

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->needFilter:Z

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->excludeConvertOutFolder:Z

    return p0
.end method

.method public final copy(ZZZ)Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;
    .locals 0

    new-instance p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;-><init>(ZZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;

    iget-boolean v1, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->filtered:Z

    iget-boolean v3, p1, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->filtered:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->needFilter:Z

    iget-boolean v3, p1, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->needFilter:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->excludeConvertOutFolder:Z

    iget-boolean p1, p1, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->excludeConvertOutFolder:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getExcludeConvertOutFolder()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->excludeConvertOutFolder:Z

    return p0
.end method

.method public final getFiltered()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->filtered:Z

    return p0
.end method

.method public final getNeedFilter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->needFilter:Z

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->filtered:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->needFilter:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->excludeConvertOutFolder:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isExcludeOnlyMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->isExcludeOnlyMode:Z

    return p0
.end method

.method public final isSimpleMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->isSimpleMode:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->filtered:Z

    iget-boolean v1, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->needFilter:Z

    iget-boolean p0, p0, Lcom/transsion/dbdata/source/data/ktx/AudioFilterParams;->excludeConvertOutFolder:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFilterParams(filtered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", needFilter="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", excludeConvertOutFolder="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
