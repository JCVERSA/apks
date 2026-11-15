.class public final Lv9j;
.super La0j;
.source "SourceFile"


# static fields
.field public static final synthetic k:I


# instance fields
.field public final d:I

.field public final e:I

.field public final f:[I

.field public final g:[I

.field public final h:[Lw4f;

.field public final i:[Ljava/lang/Object;

.field public final j:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lbpj;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lw4f;

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp8j;

    add-int/lit8 v5, v3, 0x1

    .line 3
    invoke-interface {v4}, Lp8j;->zza()Lw4f;

    move-result-object v4

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp8j;

    add-int/lit8 v4, v2, 0x1

    .line 6
    invoke-interface {v3}, Lp8j;->zzb()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    move v2, v4

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {p0, v0, v1, p2}, Lv9j;-><init>([Lw4f;[Ljava/lang/Object;Lbpj;)V

    return-void
.end method

.method public constructor <init>([Lw4f;[Ljava/lang/Object;Lbpj;)V
    .locals 6

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, p3}, La0j;-><init>(ZLbpj;)V

    iput-object p1, p0, Lv9j;->h:[Lw4f;

    array-length p3, p1

    new-array v1, p3, [I

    iput-object v1, p0, Lv9j;->f:[I

    new-array p3, p3, [I

    iput-object p3, p0, Lv9j;->g:[I

    iput-object p2, p0, Lv9j;->i:[Ljava/lang/Object;

    new-instance p3, Ljava/util/HashMap;

    .line 9
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lv9j;->j:Ljava/util/HashMap;

    move p3, v0

    move v1, p3

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 10
    aget-object v3, p1, v0

    iget-object v4, p0, Lv9j;->h:[Lw4f;

    .line 11
    aput-object v3, v4, v2

    iget-object v4, p0, Lv9j;->g:[I

    .line 12
    aput p3, v4, v2

    iget-object v4, p0, Lv9j;->f:[I

    .line 13
    aput v1, v4, v2

    .line 14
    invoke-virtual {v3}, Lw4f;->c()I

    move-result v3

    add-int/2addr p3, v3

    iget-object v3, p0, Lv9j;->h:[Lw4f;

    .line 15
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lw4f;->b()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lv9j;->j:Ljava/util/HashMap;

    .line 16
    aget-object v4, p2, v2

    add-int/lit8 v5, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    move v2, v5

    goto :goto_0

    :cond_0
    iput p3, p0, Lv9j;->d:I

    iput v1, p0, Lv9j;->e:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 0

    iget p0, p0, Lv9j;->e:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lv9j;->d:I

    return p0
.end method

.method public final p(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lv9j;->j:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final q(I)I
    .locals 1

    iget-object p0, p0, Lv9j;->f:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lkfh;->x([IIZZ)I

    move-result p0

    return p0
.end method

.method public final r(I)I
    .locals 1

    iget-object p0, p0, Lv9j;->g:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lkfh;->x([IIZZ)I

    move-result p0

    return p0
.end method

.method public final s(I)I
    .locals 0

    iget-object p0, p0, Lv9j;->f:[I

    aget p0, p0, p1

    return p0
.end method

.method public final t(I)I
    .locals 0

    iget-object p0, p0, Lv9j;->g:[I

    aget p0, p0, p1

    return p0
.end method

.method public final u(I)Lw4f;
    .locals 0

    iget-object p0, p0, Lv9j;->h:[Lw4f;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final v(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv9j;->i:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final y()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lv9j;->h:[Lw4f;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lbpj;)Lv9j;
    .locals 5

    iget-object v0, p0, Lv9j;->h:[Lw4f;

    array-length v1, v0

    new-array v1, v1, [Lw4f;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    new-instance v3, Lu9j;

    aget-object v4, v0, v2

    invoke-direct {v3, p0, v4}, Lu9j;-><init>(Lv9j;Lw4f;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lv9j;->i:[Ljava/lang/Object;

    new-instance v0, Lv9j;

    invoke-direct {v0, v1, p0, p1}, Lv9j;-><init>([Lw4f;[Ljava/lang/Object;Lbpj;)V

    return-object v0
.end method
