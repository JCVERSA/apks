.class public final Lcom/yandex/mobile/ads/impl/i52$c;
.super Lcom/yandex/mobile/ads/impl/i52;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/i52;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final c:Lcom/yandex/mobile/ads/impl/kk0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/kk0<",
            "Lcom/yandex/mobile/ads/impl/i52$d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/kk0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/kk0<",
            "Lcom/yandex/mobile/ads/impl/i52$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:[I

.field private final f:[I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/kk0;Lcom/yandex/mobile/ads/impl/kk0;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/kk0<",
            "Lcom/yandex/mobile/ads/impl/i52$d;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/kk0<",
            "Lcom/yandex/mobile/ads/impl/i52$b;",
            ">;[I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/i52;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    array-length v1, p3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/hg;->a(Z)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i52$c;->c:Lcom/yandex/mobile/ads/impl/kk0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/i52$c;->d:Lcom/yandex/mobile/ads/impl/kk0;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/i52$c;->e:[I

    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i52$c;->f:[I

    :goto_1
    array-length p1, p3

    if-ge v2, p1, :cond_1

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i52$c;->f:[I

    aget p2, p3, v2

    aput v2, p1, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i52$c;->d:Lcom/yandex/mobile/ads/impl/kk0;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public final a(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p3}, Lcom/yandex/mobile/ads/impl/i52$c;->b(Z)I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 4
    invoke-virtual {p0, p3}, Lcom/yandex/mobile/ads/impl/i52$c;->a(Z)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_2
    if-eqz p3, :cond_3

    .line 5
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/i52$c;->e:[I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i52$c;->f:[I

    aget p0, p0, p1

    add-int/2addr p0, v0

    aget p0, p2, p0

    goto :goto_1

    :cond_3
    add-int/lit8 p0, p1, 0x1

    :goto_1
    return p0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 0

    .line 12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Z)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i52$c;->e:[I

    aget v0, p0, v0

    :cond_1
    return v0
.end method

.method public final a(ILcom/yandex/mobile/ads/impl/i52$b;Z)Lcom/yandex/mobile/ads/impl/i52$b;
    .locals 10

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i52$c;->d:Lcom/yandex/mobile/ads/impl/kk0;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/i52$b;

    .line 7
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i52$b;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/i52$b;->c:Ljava/lang/Object;

    iget v3, p0, Lcom/yandex/mobile/ads/impl/i52$b;->d:I

    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/i52$b;->e:J

    iget-wide v6, p0, Lcom/yandex/mobile/ads/impl/i52$b;->f:J

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/i52$b;->c(Lcom/yandex/mobile/ads/impl/i52$b;)Lcom/yandex/mobile/ads/impl/n5;

    move-result-object v8

    iget-boolean v9, p0, Lcom/yandex/mobile/ads/impl/i52$b;->g:Z

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/i52$b;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/yandex/mobile/ads/impl/n5;Z)Lcom/yandex/mobile/ads/impl/i52$b;

    return-object p2
.end method

.method public final a(ILcom/yandex/mobile/ads/impl/i52$d;J)Lcom/yandex/mobile/ads/impl/i52$d;
    .locals 22

    move-object/from16 v15, p2

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    .line 9
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/i52$c;->c:Lcom/yandex/mobile/ads/impl/kk0;

    move/from16 v2, p1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/yandex/mobile/ads/impl/i52$d;

    .line 10
    iget-object v1, v13, Lcom/yandex/mobile/ads/impl/i52$d;->b:Ljava/lang/Object;

    iget-object v2, v13, Lcom/yandex/mobile/ads/impl/i52$d;->d:Lcom/yandex/mobile/ads/impl/jw0;

    iget-object v3, v13, Lcom/yandex/mobile/ads/impl/i52$d;->e:Ljava/lang/Object;

    iget-wide v4, v13, Lcom/yandex/mobile/ads/impl/i52$d;->f:J

    iget-wide v6, v13, Lcom/yandex/mobile/ads/impl/i52$d;->g:J

    iget-wide v8, v13, Lcom/yandex/mobile/ads/impl/i52$d;->h:J

    iget-boolean v10, v13, Lcom/yandex/mobile/ads/impl/i52$d;->i:Z

    iget-boolean v11, v13, Lcom/yandex/mobile/ads/impl/i52$d;->j:Z

    iget-object v12, v13, Lcom/yandex/mobile/ads/impl/i52$d;->l:Lcom/yandex/mobile/ads/impl/jw0$e;

    iget-wide v14, v13, Lcom/yandex/mobile/ads/impl/i52$d;->n:J

    move-object/from16 p3, v0

    move-object v0, v13

    move-wide v13, v14

    move-object/from16 p0, v1

    move-object/from16 p1, v2

    iget-wide v1, v0, Lcom/yandex/mobile/ads/impl/i52$d;->o:J

    move-wide v15, v1

    iget v1, v0, Lcom/yandex/mobile/ads/impl/i52$d;->p:I

    move/from16 v17, v1

    iget v1, v0, Lcom/yandex/mobile/ads/impl/i52$d;->q:I

    move/from16 v18, v1

    iget-wide v1, v0, Lcom/yandex/mobile/ads/impl/i52$d;->r:J

    move-wide/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v21, v0

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v20}, Lcom/yandex/mobile/ads/impl/i52$d;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/jw0;Ljava/lang/Object;JJJZZLcom/yandex/mobile/ads/impl/jw0$e;JJIIJ)Lcom/yandex/mobile/ads/impl/i52$d;

    move-object/from16 v1, v21

    .line 11
    iget-boolean v0, v1, Lcom/yandex/mobile/ads/impl/i52$d;->m:Z

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/yandex/mobile/ads/impl/i52$d;->m:Z

    return-object v1
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 0

    .line 13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final b()I
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i52$c;->c:Lcom/yandex/mobile/ads/impl/kk0;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public final b(IIZ)I
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 6
    :cond_0
    invoke-virtual {p0, p3}, Lcom/yandex/mobile/ads/impl/i52$c;->a(Z)I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 7
    invoke-virtual {p0, p3}, Lcom/yandex/mobile/ads/impl/i52$c;->b(Z)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_2
    if-eqz p3, :cond_3

    .line 8
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/i52$c;->e:[I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i52$c;->f:[I

    aget p0, p0, p1

    sub-int/2addr p0, v0

    aget p0, p2, p0

    goto :goto_1

    :cond_3
    add-int/lit8 p0, p1, -0x1

    :goto_1
    return p0
.end method

.method public final b(Z)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/i52$c;->e:[I

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i52$c;->c:Lcom/yandex/mobile/ads/impl/kk0;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 4
    aget p0, p1, p0

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i52$c;->c:Lcom/yandex/mobile/ads/impl/kk0;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method
