.class final Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0082\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00c6\u0003J\u0016\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J>\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001fJ\t\u0010 \u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;",
        "",
        "uri",
        "Landroid/net/Uri;",
        "values",
        "Landroid/content/ContentValues;",
        "where",
        "",
        "whereArgs",
        "",
        "<init>",
        "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V",
        "getUri",
        "()Landroid/net/Uri;",
        "getValues",
        "()Landroid/content/ContentValues;",
        "getWhere",
        "()Ljava/lang/String;",
        "getWhereArgs",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;",
        "toString",
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
.field private final uri:Landroid/net/Uri;

.field private final values:Landroid/content/ContentValues;

.field private final where:Ljava/lang/String;

.field private final whereArgs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "where"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->uri:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->values:Landroid/content/ContentValues;

    .line 4
    iput-object p3, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->where:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->whereArgs:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->uri:Landroid/net/Uri;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->values:Landroid/content/ContentValues;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->where:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->whereArgs:[Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->copy(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public final component2()Landroid/content/ContentValues;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->values:Landroid/content/ContentValues;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->where:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->whereArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "values"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "where"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.transsion.dbdata.source.data.repository.MediaStoreOperateRepository.UpdateData"

    invoke-static {p1, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;

    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->uri:Landroid/net/Uri;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->values:Landroid/content/ContentValues;

    iget-object v3, p1, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->values:Landroid/content/ContentValues;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->where:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->where:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->whereArgs:[Ljava/lang/String;

    if-eqz p0, :cond_7

    iget-object p1, p1, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->whereArgs:[Ljava/lang/String;

    if-nez p1, :cond_6

    return v2

    :cond_6
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_7
    iget-object p0, p1, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->whereArgs:[Ljava/lang/String;

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public final getValues()Landroid/content/ContentValues;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->values:Landroid/content/ContentValues;

    return-object p0
.end method

.method public final getWhere()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->where:Ljava/lang/String;

    return-object p0
.end method

.method public final getWhereArgs()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->whereArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->values:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->where:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->whereArgs:[Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->values:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->where:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/MediaStoreOperateRepository$UpdateData;->whereArgs:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpdateData(uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", values="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", where="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", whereArgs="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
