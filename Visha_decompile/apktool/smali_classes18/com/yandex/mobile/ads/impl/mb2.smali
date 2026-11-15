.class public final Lcom/yandex/mobile/ads/impl/mb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/jg2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/mb2$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/uu;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/ub2;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/yandex/mobile/ads/impl/zh2;

.field private final k:Ljava/lang/Integer;

.field private final l:Ljava/lang/String;

.field private final m:Lcom/yandex/mobile/ads/impl/uk2;

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/wa2;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/util/ArrayList;Ljava/util/LinkedHashMap;Lcom/yandex/mobile/ads/impl/ub2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/zh2;Ljava/lang/Integer;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/uk2;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p14

    move-object/from16 v5, p15

    const-string v6, "creatives"

    invoke-static {p2, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "rawTrackingEvents"

    invoke-static {p3, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "videoAdExtensions"

    invoke-static {p4, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "adVerifications"

    invoke-static {v4, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "trackingEvents"

    invoke-static {v5, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v6, p1

    iput-boolean v6, v0, Lcom/yandex/mobile/ads/impl/mb2;->a:Z

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/mb2;->b:Ljava/util/List;

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/mb2;->c:Ljava/util/Map;

    iput-object v3, v0, Lcom/yandex/mobile/ads/impl/mb2;->d:Lcom/yandex/mobile/ads/impl/ub2;

    move-object v1, p5

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/mb2;->e:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/mb2;->f:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/mb2;->g:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/mb2;->h:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/mb2;->i:Ljava/lang/String;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/mb2;->j:Lcom/yandex/mobile/ads/impl/zh2;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/mb2;->k:Ljava/lang/Integer;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/mb2;->l:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/mb2;->m:Lcom/yandex/mobile/ads/impl/uk2;

    iput-object v4, v0, Lcom/yandex/mobile/ads/impl/mb2;->n:Ljava/util/List;

    iput-object v5, v0, Lcom/yandex/mobile/ads/impl/mb2;->o:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0
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

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->o:Ljava/util/Map;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/wa2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->n:Ljava/util/List;

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/uu;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->b:Ljava/util/List;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/mb2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/mb2;

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/mb2;->a:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/impl/mb2;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mb2;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/mb2;->b:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mb2;->c:Ljava/util/Map;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/mb2;->c:Ljava/util/Map;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mb2;->d:Lcom/yandex/mobile/ads/impl/ub2;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/mb2;->d:Lcom/yandex/mobile/ads/impl/ub2;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mb2;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/mb2;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mb2;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/mb2;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mb2;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/mb2;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mb2;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/mb2;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mb2;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/mb2;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mb2;->j:Lcom/yandex/mobile/ads/impl/zh2;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/mb2;->j:Lcom/yandex/mobile/ads/impl/zh2;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mb2;->k:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/mb2;->k:Ljava/lang/Integer;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mb2;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/mb2;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mb2;->m:Lcom/yandex/mobile/ads/impl/uk2;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/mb2;->m:Lcom/yandex/mobile/ads/impl/uk2;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mb2;->n:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/mb2;->n:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->o:Ljava/util/Map;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/mb2;->o:Ljava/util/Map;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Ljava/util/Map;
    .locals 0
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

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/mb2;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mb2;->b:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/aa;->a(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mb2;->c:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mb2;->d:Lcom/yandex/mobile/ads/impl/ub2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mb2;->e:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mb2;->f:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mb2;->g:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mb2;->h:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mb2;->i:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mb2;->j:Lcom/yandex/mobile/ads/impl/zh2;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/zh2;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mb2;->k:Ljava/lang/Integer;

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mb2;->l:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mb2;->m:Lcom/yandex/mobile/ads/impl/uk2;

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/mb2;->n:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/yandex/mobile/ads/impl/aa;->a(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->o:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final i()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final l()Lcom/yandex/mobile/ads/impl/ub2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->d:Lcom/yandex/mobile/ads/impl/ub2;

    return-object p0
.end method

.method public final m()Lcom/yandex/mobile/ads/impl/zh2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->j:Lcom/yandex/mobile/ads/impl/zh2;

    return-object p0
.end method

.method public final n()Lcom/yandex/mobile/ads/impl/uk2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->m:Lcom/yandex/mobile/ads/impl/uk2;

    return-object p0
.end method

.method public final o()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/mb2;->a:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/yandex/mobile/ads/impl/mb2;->a:Z

    iget-object v2, v0, Lcom/yandex/mobile/ads/impl/mb2;->b:Ljava/util/List;

    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/mb2;->c:Ljava/util/Map;

    iget-object v4, v0, Lcom/yandex/mobile/ads/impl/mb2;->d:Lcom/yandex/mobile/ads/impl/ub2;

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/mb2;->e:Ljava/lang/String;

    iget-object v6, v0, Lcom/yandex/mobile/ads/impl/mb2;->f:Ljava/lang/String;

    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/mb2;->g:Ljava/lang/String;

    iget-object v8, v0, Lcom/yandex/mobile/ads/impl/mb2;->h:Ljava/lang/String;

    iget-object v9, v0, Lcom/yandex/mobile/ads/impl/mb2;->i:Ljava/lang/String;

    iget-object v10, v0, Lcom/yandex/mobile/ads/impl/mb2;->j:Lcom/yandex/mobile/ads/impl/zh2;

    iget-object v11, v0, Lcom/yandex/mobile/ads/impl/mb2;->k:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/yandex/mobile/ads/impl/mb2;->l:Ljava/lang/String;

    iget-object v13, v0, Lcom/yandex/mobile/ads/impl/mb2;->m:Lcom/yandex/mobile/ads/impl/uk2;

    iget-object v14, v0, Lcom/yandex/mobile/ads/impl/mb2;->n:Ljava/util/List;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/mb2;->o:Ljava/util/Map;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p0, v0

    const-string v0, "VideoAd(isWrapper="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", creatives="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rawTrackingEvents="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", videoAdExtensions="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adSystem="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adTitle="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", description="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", survey="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", vastAdTagUri="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", viewableImpression="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sequence="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", wrapperConfiguration="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adVerifications="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", trackingEvents="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
