.class public final Lcom/yandex/mobile/ads/impl/t00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/p72$c;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/jc0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/mobile/ads/impl/kk0;->h()Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/t00;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/yandex/mobile/ads/impl/t00;->a:I

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t00;->b:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/yandex/mobile/ads/impl/p72$b;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/p72$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/jc0;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x20

    .line 29
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/t00;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t00;->b:Ljava/util/List;

    return-object p0

    .line 31
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/ag1;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/p72$b;->c:[B

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/ag1;-><init>([B)V

    .line 32
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t00;->b:Ljava/util/List;

    .line 33
    :goto_0
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->a()I

    move-result p1

    if-lez p1, :cond_6

    .line 34
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result p1

    .line 35
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v1

    .line 36
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->d()I

    move-result v2

    add-int/2addr v2, v1

    const/16 v1, 0x86

    if-ne p1, v1, :cond_5

    .line 37
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, p1, :cond_5

    const/4 v4, 0x3

    .line 39
    sget-object v5, Lcom/yandex/mobile/ads/impl/lo;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4, v5}, Lcom/yandex/mobile/ads/impl/ag1;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v5

    and-int/lit16 v6, v5, 0x80

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_2

    :cond_1
    move v6, v1

    :goto_2
    if-eqz v6, :cond_2

    and-int/lit8 v5, v5, 0x3f

    .line 41
    const-string v8, "application/cea-708"

    goto :goto_3

    .line 42
    :cond_2
    const-string v8, "application/cea-608"

    move v5, v7

    .line 43
    :goto_3
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v9

    int-to-byte v9, v9

    .line 44
    invoke-virtual {v0, v7}, Lcom/yandex/mobile/ads/impl/ag1;->f(I)V

    if-eqz v6, :cond_4

    and-int/lit8 v6, v9, 0x40

    if-eqz v6, :cond_3

    .line 45
    new-array v6, v7, [B

    aput-byte v7, v6, v1

    goto :goto_4

    :cond_3
    new-array v6, v7, [B

    aput-byte v1, v6, v1

    :goto_4
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    .line 46
    :goto_5
    new-instance v7, Lcom/yandex/mobile/ads/impl/jc0$a;

    invoke-direct {v7}, Lcom/yandex/mobile/ads/impl/jc0$a;-><init>()V

    .line 47
    invoke-virtual {v7, v8}, Lcom/yandex/mobile/ads/impl/jc0$a;->e(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v7

    .line 48
    invoke-virtual {v7, v4}, Lcom/yandex/mobile/ads/impl/jc0$a;->d(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v4

    .line 49
    invoke-virtual {v4, v5}, Lcom/yandex/mobile/ads/impl/jc0$a;->a(I)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v4

    .line 50
    invoke-virtual {v4, v6}, Lcom/yandex/mobile/ads/impl/jc0$a;->a(Ljava/util/List;)Lcom/yandex/mobile/ads/impl/jc0$a;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/jc0$a;->a()Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v4

    .line 52
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53
    :cond_5
    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    goto/16 :goto_0

    :cond_6
    return-object p0
.end method

.method private a(I)Z
    .locals 0

    .line 54
    iget p0, p0, Lcom/yandex/mobile/ads/impl/t00;->a:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/yandex/mobile/ads/impl/p72;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0
.end method

.method public final a(ILcom/yandex/mobile/ads/impl/p72$b;)Lcom/yandex/mobile/ads/impl/p72;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_d

    const/16 v2, 0x15

    if-eq p1, v2, :cond_c

    const/16 v2, 0x1b

    const/4 v3, 0x0

    if-eq p1, v2, :cond_a

    const/16 v1, 0x24

    if-eq p1, v1, :cond_9

    const/16 v1, 0x59

    if-eq p1, v1, :cond_8

    const/16 v1, 0x8a

    if-eq p1, v1, :cond_7

    const/16 v1, 0xac

    if-eq p1, v1, :cond_6

    const/16 v1, 0x101

    if-eq p1, v1, :cond_5

    const/16 v1, 0x86

    if-eq p1, v1, :cond_3

    const/16 v1, 0x87

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-object v3

    :pswitch_0
    const/16 p1, 0x40

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t00;->a(I)Z

    move-result p0

    if-nez p0, :cond_7

    return-object v3

    .line 2
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/t00;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v3, Lcom/yandex/mobile/ads/impl/vg1;

    new-instance p0, Lcom/yandex/mobile/ads/impl/er0;

    iget-object p1, p2, Lcom/yandex/mobile/ads/impl/p72$b;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/er0;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p0}, Lcom/yandex/mobile/ads/impl/vg1;-><init>(Lcom/yandex/mobile/ads/impl/b50;)V

    :goto_0
    return-object v3

    .line 4
    :pswitch_2
    new-instance p1, Lcom/yandex/mobile/ads/impl/vg1;

    new-instance v0, Lcom/yandex/mobile/ads/impl/df0;

    .line 5
    new-instance v1, Lcom/yandex/mobile/ads/impl/e92;

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/t00;->a(Lcom/yandex/mobile/ads/impl/p72$b;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/e92;-><init>(Ljava/util/List;)V

    .line 6
    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/df0;-><init>(Lcom/yandex/mobile/ads/impl/e92;)V

    invoke-direct {p1, v0}, Lcom/yandex/mobile/ads/impl/vg1;-><init>(Lcom/yandex/mobile/ads/impl/b50;)V

    return-object p1

    .line 7
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/t00;->a(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v3, Lcom/yandex/mobile/ads/impl/vg1;

    new-instance p0, Lcom/yandex/mobile/ads/impl/ib;

    iget-object p1, p2, Lcom/yandex/mobile/ads/impl/p72$b;->a:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ib;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, p0}, Lcom/yandex/mobile/ads/impl/vg1;-><init>(Lcom/yandex/mobile/ads/impl/b50;)V

    :goto_1
    return-object v3

    .line 9
    :cond_2
    :pswitch_4
    new-instance p0, Lcom/yandex/mobile/ads/impl/vg1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/s;

    iget-object p2, p2, Lcom/yandex/mobile/ads/impl/p72$b;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/s;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vg1;-><init>(Lcom/yandex/mobile/ads/impl/b50;)V

    return-object p0

    :cond_3
    const/16 p1, 0x10

    .line 10
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/t00;->a(I)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    new-instance v3, Lcom/yandex/mobile/ads/impl/dx1;

    new-instance p0, Lcom/yandex/mobile/ads/impl/lg1;

    const-string p1, "application/x-scte35"

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/lg1;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p0}, Lcom/yandex/mobile/ads/impl/dx1;-><init>(Lcom/yandex/mobile/ads/impl/cx1;)V

    :goto_2
    return-object v3

    .line 12
    :cond_5
    new-instance p0, Lcom/yandex/mobile/ads/impl/dx1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/lg1;

    const-string p2, "application/vnd.dvb.ait"

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/lg1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/dx1;-><init>(Lcom/yandex/mobile/ads/impl/cx1;)V

    return-object p0

    .line 13
    :cond_6
    new-instance p0, Lcom/yandex/mobile/ads/impl/vg1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/v;

    iget-object p2, p2, Lcom/yandex/mobile/ads/impl/p72$b;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/v;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vg1;-><init>(Lcom/yandex/mobile/ads/impl/b50;)V

    return-object p0

    .line 14
    :cond_7
    new-instance p0, Lcom/yandex/mobile/ads/impl/vg1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/n40;

    iget-object p2, p2, Lcom/yandex/mobile/ads/impl/p72$b;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/n40;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vg1;-><init>(Lcom/yandex/mobile/ads/impl/b50;)V

    return-object p0

    .line 15
    :cond_8
    new-instance p0, Lcom/yandex/mobile/ads/impl/vg1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/x40;

    iget-object p2, p2, Lcom/yandex/mobile/ads/impl/p72$b;->b:Ljava/util/List;

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/x40;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vg1;-><init>(Lcom/yandex/mobile/ads/impl/b50;)V

    return-object p0

    .line 16
    :cond_9
    new-instance p1, Lcom/yandex/mobile/ads/impl/vg1;

    new-instance v0, Lcom/yandex/mobile/ads/impl/ff0;

    .line 17
    new-instance v1, Lcom/yandex/mobile/ads/impl/jx1;

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/t00;->a(Lcom/yandex/mobile/ads/impl/p72$b;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/jx1;-><init>(Ljava/util/List;)V

    .line 18
    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/ff0;-><init>(Lcom/yandex/mobile/ads/impl/jx1;)V

    invoke-direct {p1, v0}, Lcom/yandex/mobile/ads/impl/vg1;-><init>(Lcom/yandex/mobile/ads/impl/b50;)V

    return-object p1

    .line 19
    :cond_a
    invoke-direct {p0, v1}, Lcom/yandex/mobile/ads/impl/t00;->a(I)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_3

    .line 20
    :cond_b
    new-instance v3, Lcom/yandex/mobile/ads/impl/vg1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ef0;

    .line 21
    new-instance v0, Lcom/yandex/mobile/ads/impl/jx1;

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/t00;->a(Lcom/yandex/mobile/ads/impl/p72$b;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/yandex/mobile/ads/impl/jx1;-><init>(Ljava/util/List;)V

    const/4 p2, 0x1

    .line 22
    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/t00;->a(I)Z

    move-result p2

    const/16 v1, 0x8

    .line 23
    invoke-direct {p0, v1}, Lcom/yandex/mobile/ads/impl/t00;->a(I)Z

    move-result p0

    invoke-direct {p1, v0, p2, p0}, Lcom/yandex/mobile/ads/impl/ef0;-><init>(Lcom/yandex/mobile/ads/impl/jx1;ZZ)V

    invoke-direct {v3, p1}, Lcom/yandex/mobile/ads/impl/vg1;-><init>(Lcom/yandex/mobile/ads/impl/b50;)V

    :goto_3
    return-object v3

    .line 24
    :cond_c
    new-instance p0, Lcom/yandex/mobile/ads/impl/vg1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/vi0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/vi0;-><init>()V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vg1;-><init>(Lcom/yandex/mobile/ads/impl/b50;)V

    return-object p0

    .line 25
    :cond_d
    new-instance p0, Lcom/yandex/mobile/ads/impl/vg1;

    new-instance p1, Lcom/yandex/mobile/ads/impl/e21;

    iget-object p2, p2, Lcom/yandex/mobile/ads/impl/p72$b;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/e21;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/vg1;-><init>(Lcom/yandex/mobile/ads/impl/b50;)V

    return-object p0

    .line 26
    :cond_e
    :pswitch_5
    new-instance p1, Lcom/yandex/mobile/ads/impl/vg1;

    new-instance v0, Lcom/yandex/mobile/ads/impl/cf0;

    .line 27
    new-instance v1, Lcom/yandex/mobile/ads/impl/e92;

    invoke-direct {p0, p2}, Lcom/yandex/mobile/ads/impl/t00;->a(Lcom/yandex/mobile/ads/impl/p72$b;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/e92;-><init>(Ljava/util/List;)V

    .line 28
    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/cf0;-><init>(Lcom/yandex/mobile/ads/impl/e92;)V

    invoke-direct {p1, v0}, Lcom/yandex/mobile/ads/impl/vg1;-><init>(Lcom/yandex/mobile/ads/impl/b50;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
