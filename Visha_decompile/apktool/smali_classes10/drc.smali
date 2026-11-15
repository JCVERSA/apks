.class public final Ldrc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/Map;


# instance fields
.field public final a:Lirc;

.field public final b:Ljrc;

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldrc;

    sget-object v3, Lcx6;->c:Ll1;

    const/16 v4, 0x14

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldrc;

    const/4 v6, 0x4

    invoke-direct {v2, v4, v6, v3}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Ldrc;

    const/16 v8, 0x28

    invoke-direct {v7, v8, v5, v3}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Ldrc;

    invoke-direct {v7, v8, v6, v3}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    invoke-static {v2}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, Ldrc;

    const/16 v9, 0x8

    invoke-direct {v7, v8, v9, v3}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    invoke-static {v2}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v10, Ldrc;

    const/16 v11, 0x3c

    invoke-direct {v10, v11, v1, v3}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x7

    invoke-static {v7}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v10, Ldrc;

    invoke-direct {v10, v11, v2, v3}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v10, Ldrc;

    const/16 v12, 0xc

    invoke-direct {v10, v11, v12, v3}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x9

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    sget-object v10, Lcx6;->e:Ll1;

    invoke-direct {v7, v4, v5, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xa

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    invoke-direct {v7, v4, v6, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xb

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    invoke-direct {v7, v8, v5, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    invoke-direct {v7, v8, v6, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xd

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    invoke-direct {v7, v8, v9, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xe

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    invoke-direct {v7, v11, v1, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xf

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    invoke-direct {v7, v11, v2, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x10

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    invoke-direct {v7, v11, v12, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x11

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    sget-object v10, Lcx6;->m:Ll1;

    invoke-direct {v7, v4, v5, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x12

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    invoke-direct {v7, v4, v6, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x13

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    invoke-direct {v7, v8, v5, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    invoke-direct {v7, v8, v6, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x15

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    invoke-direct {v7, v8, v9, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x16

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    invoke-direct {v7, v11, v1, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x17

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    invoke-direct {v7, v11, v2, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x18

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    invoke-direct {v7, v11, v12, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x19

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    sget-object v10, Lcx6;->n:Ll1;

    invoke-direct {v7, v4, v5, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x1a

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v7, Ldrc;

    invoke-direct {v7, v4, v6, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x1b

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ldrc;

    invoke-direct {v4, v8, v5, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x1c

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ldrc;

    invoke-direct {v4, v8, v6, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x1d

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ldrc;

    invoke-direct {v4, v8, v9, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x1e

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ldrc;

    invoke-direct {v4, v11, v1, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1f

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Ldrc;

    invoke-direct {v3, v11, v2, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ldrc;

    invoke-direct {v2, v11, v12, v10}, Ldrc;-><init>(IILl1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ldrc;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IILl1;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldrc;->c:I

    iput p2, p0, Ldrc;->d:I

    new-instance v0, Ljrc;

    invoke-static {p1, p2}, Ldrc;->j(II)I

    move-result p1

    invoke-direct {v0, p1, p3}, Ljrc;-><init>(ILl1;)V

    iput-object v0, p0, Ldrc;->b:Ljrc;

    invoke-virtual {p0}, Ldrc;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ldrc;->f()I

    move-result v2

    invoke-virtual {p0}, Ldrc;->g()I

    move-result v3

    invoke-virtual {p0}, Ldrc;->c()I

    move-result v4

    invoke-virtual {p0}, Ldrc;->a()I

    move-result v5

    move v6, p2

    invoke-static/range {v1 .. v6}, La72;->c(Ljava/lang/String;IIIII)La72;

    move-result-object p1

    iput-object p1, p0, Ldrc;->a:Lirc;

    return-void
.end method

.method public constructor <init>(IILsb2;)V
    .locals 0

    .line 2
    invoke-interface {p3}, Lsb2;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lub2;->c(Ljava/lang/String;)Ll1;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Ldrc;-><init>(IILl1;)V

    return-void
.end method

.method public static i(I)Ldrc;
    .locals 1

    sget-object v0, Ldrc;->e:Ljava/util/Map;

    invoke-static {p0}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldrc;

    return-object p0
.end method

.method public static j(II)I
    .locals 1

    const/4 v0, 0x2

    if-lt p0, v0, :cond_2

    rem-int v0, p0, p1

    if-nez v0, :cond_1

    div-int/2addr p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "height / layers must be greater than 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "layers must divide totalHeight without remainder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "totalHeight must be > 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Ldrc;->c:I

    return p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Ldrc;->d:I

    return p0
.end method

.method public c()I
    .locals 0

    iget-object p0, p0, Ldrc;->b:Ljrc;

    invoke-virtual {p0}, Ljrc;->d()I

    move-result p0

    return p0
.end method

.method public d()Lirc;
    .locals 0

    iget-object p0, p0, Ldrc;->a:Lirc;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ldrc;->b:Ljrc;

    invoke-virtual {p0}, Ljrc;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f()I
    .locals 0

    iget-object p0, p0, Ldrc;->b:Ljrc;

    invoke-virtual {p0}, Ljrc;->h()I

    move-result p0

    return p0
.end method

.method public g()I
    .locals 0

    iget-object p0, p0, Ldrc;->b:Ljrc;

    invoke-virtual {p0}, Ljrc;->j()I

    move-result p0

    return p0
.end method

.method public h()Ljrc;
    .locals 0

    iget-object p0, p0, Ldrc;->b:Ljrc;

    return-object p0
.end method
