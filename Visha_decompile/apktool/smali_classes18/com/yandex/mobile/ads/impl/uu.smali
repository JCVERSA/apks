.class public final Lcom/yandex/mobile/ads/impl/uu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/jg2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/uu$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ew0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mi0;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/l62;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/xu;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/yandex/mobile/ads/impl/sz1;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/xu;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/sz1;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "mediaFiles"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icons"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingEventsList"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/uu;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/uu;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/uu;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/uu;->d:Lcom/yandex/mobile/ads/impl/xu;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/uu;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/uu;->f:Lcom/yandex/mobile/ads/impl/sz1;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/uu;->g:Ljava/lang/String;

    iput p8, p0, Lcom/yandex/mobile/ads/impl/uu;->h:I

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/uu;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu;->c:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/l62;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/l62;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v3, Ljava/util/List;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/l62;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/xu;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu;->d:Lcom/yandex/mobile/ads/impl/xu;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/uu;->h:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/uu;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/uu;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uu;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/uu;->a:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uu;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/uu;->b:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uu;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/uu;->c:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uu;->d:Lcom/yandex/mobile/ads/impl/xu;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/uu;->d:Lcom/yandex/mobile/ads/impl/xu;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uu;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/uu;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uu;->f:Lcom/yandex/mobile/ads/impl/sz1;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/uu;->f:Lcom/yandex/mobile/ads/impl/sz1;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uu;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/uu;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/yandex/mobile/ads/impl/uu;->h:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/uu;->h:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu;->i:Ljava/lang/String;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/uu;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/mi0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu;->b:Ljava/util/List;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/ew0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu;->a:Ljava/util/List;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uu;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/uu;->b:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/aa;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/uu;->c:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/aa;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/uu;->d:Lcom/yandex/mobile/ads/impl/xu;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/xu;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/uu;->e:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/uu;->f:Lcom/yandex/mobile/ads/impl/sz1;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/uu;->g:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/yandex/mobile/ads/impl/uu;->h:I

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/dy1;->a(III)I

    move-result v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu;->i:Ljava/lang/String;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    return v0
.end method

.method public final i()Lcom/yandex/mobile/ads/impl/sz1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu;->f:Lcom/yandex/mobile/ads/impl/sz1;

    return-object p0
.end method

.method public final j()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/l62;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu;->c:Ljava/util/List;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uu;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uu;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/uu;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/uu;->d:Lcom/yandex/mobile/ads/impl/xu;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/uu;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/uu;->f:Lcom/yandex/mobile/ads/impl/sz1;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/uu;->g:Ljava/lang/String;

    iget v7, p0, Lcom/yandex/mobile/ads/impl/uu;->h:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uu;->i:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Creative(mediaFiles="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", icons="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", trackingEventsList="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", creativeExtensions="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", clickThroughUrl="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", skipOffset="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", durationMillis="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", adParameters="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
