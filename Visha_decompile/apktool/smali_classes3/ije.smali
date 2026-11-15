.class public final Lije;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lble;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lije;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(ILale;)Ldle;
    .locals 3

    const/4 v0, 0x2

    const-string v1, "video/mp2t"

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    const/16 v0, 0x15

    if-eq p1, v0, :cond_9

    const/16 v0, 0x1b

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8

    const/16 v0, 0x24

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_6

    const/16 v0, 0x59

    if-eq p1, v0, :cond_5

    const/16 v0, 0xac

    if-eq p1, v0, :cond_4

    const/16 v0, 0x101

    if-eq p1, v0, :cond_3

    const/16 v0, 0x80

    if-eq p1, v0, :cond_b

    const/16 v0, 0x81

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Lqke;

    new-instance p1, Leke;

    const-string p2, "application/x-scte35"

    invoke-direct {p1, p2, v1}, Leke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lqke;-><init>(Lpke;)V

    return-object p0

    :pswitch_1
    iget-object p0, p2, Lale;->b:Ljava/lang/String;

    new-instance p1, Like;

    new-instance v0, Lwje;

    invoke-virtual {p2}, Lale;->a()I

    move-result p2

    invoke-direct {v0, p0, p2, v1}, Lwje;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p1, v0}, Like;-><init>(Llje;)V

    return-object p1

    :pswitch_2
    new-instance p1, Like;

    new-instance v0, Lqje;

    invoke-virtual {p0, p2}, Lije;->c(Lale;)Lfle;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lqje;-><init>(Lfle;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Like;-><init>(Llje;)V

    return-object p1

    :pswitch_3
    iget-object p0, p2, Lale;->b:Ljava/lang/String;

    new-instance p1, Like;

    new-instance v0, Lhje;

    invoke-virtual {p2}, Lale;->a()I

    move-result p2

    invoke-direct {v0, v2, p0, p2, v1}, Lhje;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    invoke-direct {p1, v0}, Like;-><init>(Llje;)V

    return-object p1

    :cond_0
    iget-object p0, p2, Lale;->b:Ljava/lang/String;

    new-instance p1, Like;

    new-instance v0, Ljje;

    invoke-virtual {p2}, Lale;->a()I

    move-result p2

    const/16 v2, 0x1520

    invoke-direct {v0, p0, p2, v2, v1}, Ljje;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {p1, v0}, Like;-><init>(Llje;)V

    return-object p1

    :cond_1
    :pswitch_4
    iget-object p0, p2, Lale;->b:Ljava/lang/String;

    new-instance p1, Like;

    new-instance v0, Ljje;

    invoke-virtual {p2}, Lale;->a()I

    move-result p2

    const/16 v2, 0x1000

    invoke-direct {v0, p0, p2, v2, v1}, Ljje;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-direct {p1, v0}, Like;-><init>(Llje;)V

    return-object p1

    :cond_2
    :pswitch_5
    iget-object p0, p2, Lale;->b:Ljava/lang/String;

    new-instance p1, Like;

    new-instance v0, Lbje;

    invoke-virtual {p2}, Lale;->a()I

    move-result p2

    invoke-direct {v0, p0, p2, v1}, Lbje;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p1, v0}, Like;-><init>(Llje;)V

    return-object p1

    :cond_3
    new-instance p0, Lqke;

    new-instance p1, Leke;

    const-string p2, "application/vnd.dvb.ait"

    invoke-direct {p1, p2, v1}, Leke;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lqke;-><init>(Lpke;)V

    return-object p0

    :cond_4
    iget-object p0, p2, Lale;->b:Ljava/lang/String;

    new-instance p1, Like;

    new-instance v0, Lfje;

    invoke-virtual {p2}, Lale;->a()I

    move-result p2

    invoke-direct {v0, p0, p2, v1}, Lfje;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p1, v0}, Like;-><init>(Llje;)V

    return-object p1

    :cond_5
    iget-object p0, p2, Lale;->d:Ljava/util/List;

    new-instance p1, Like;

    new-instance p2, Lkje;

    invoke-direct {p2, p0, v1}, Lkje;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Like;-><init>(Llje;)V

    return-object p1

    :cond_6
    new-instance p0, Like;

    new-instance p1, Lyje;

    invoke-direct {p1, v1}, Lyje;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Like;-><init>(Llje;)V

    return-object p0

    :cond_7
    new-instance p1, Like;

    new-instance v0, Luje;

    invoke-virtual {p0, p2}, Lije;->b(Lale;)Lske;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Luje;-><init>(Lske;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Like;-><init>(Llje;)V

    return-object p1

    :cond_8
    new-instance p1, Like;

    new-instance v0, Lsje;

    invoke-virtual {p0, p2}, Lije;->b(Lale;)Lske;

    move-result-object p0

    invoke-direct {v0, p0, v2, v2, v1}, Lsje;-><init>(Lske;ZZLjava/lang/String;)V

    invoke-direct {p1, v0}, Like;-><init>(Llje;)V

    return-object p1

    :cond_9
    new-instance p0, Like;

    new-instance p1, Lvje;

    invoke-direct {p1, v1}, Lvje;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Like;-><init>(Llje;)V

    return-object p0

    :cond_a
    iget-object p0, p2, Lale;->b:Ljava/lang/String;

    new-instance p1, Like;

    new-instance v0, Lxje;

    invoke-virtual {p2}, Lale;->a()I

    move-result p2

    invoke-direct {v0, p0, p2, v1}, Lxje;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {p1, v0}, Like;-><init>(Llje;)V

    return-object p1

    :cond_b
    new-instance p1, Like;

    new-instance v0, Lnje;

    invoke-virtual {p0, p2}, Lije;->c(Lale;)Lfle;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lnje;-><init>(Lfle;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Like;-><init>(Llje;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x86
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final b(Lale;)Lske;
    .locals 1

    new-instance v0, Lske;

    invoke-virtual {p0, p1}, Lije;->d(Lale;)Ljava/util/List;

    move-result-object p0

    const-string p1, "video/mp2t"

    invoke-direct {v0, p0, p1}, Lske;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Lale;)Lfle;
    .locals 1

    new-instance v0, Lfle;

    invoke-virtual {p0, p1}, Lije;->d(Lale;)Ljava/util/List;

    move-result-object p0

    const-string p1, "video/mp2t"

    invoke-direct {v0, p0, p1}, Lfle;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Lale;)Ljava/util/List;
    .locals 10

    const/4 v0, 0x1

    new-instance v1, Lu4h;

    iget-object p1, p1, Lale;->e:[B

    invoke-direct {v1, p1}, Lu4h;-><init>([B)V

    iget-object p0, p0, Lije;->a:Ljava/util/List;

    :goto_0
    invoke-virtual {v1}, Lu4h;->u()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v1}, Lu4h;->G()I

    move-result p1

    invoke-virtual {v1}, Lu4h;->G()I

    move-result v2

    invoke-virtual {v1}, Lu4h;->w()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne p1, v2, :cond_4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lu4h;->G()I

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, p1, :cond_4

    const/4 v5, 0x3

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v5, v6}, Lu4h;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lu4h;->G()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    if-eqz v7, :cond_0

    move v7, v0

    goto :goto_2

    :cond_0
    move v7, v2

    :goto_2
    if-eqz v7, :cond_1

    and-int/lit8 v6, v6, 0x3f

    const-string v8, "application/cea-708"

    goto :goto_3

    :cond_1
    const-string v8, "application/cea-608"

    move v6, v0

    :goto_3
    invoke-virtual {v1}, Lu4h;->G()I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v1, v0}, Lu4h;->m(I)V

    if-eqz v7, :cond_3

    and-int/lit8 v7, v9, 0x40

    sget-object v9, Lvcg;->a:[B

    if-eqz v7, :cond_2

    new-array v7, v0, [B

    aput-byte v0, v7, v2

    goto :goto_4

    :cond_2
    new-array v7, v0, [B

    aput-byte v2, v7, v2

    :goto_4
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_5

    :cond_3
    const/4 v7, 0x0

    :goto_5
    new-instance v9, Lgpj;

    invoke-direct {v9}, Lgpj;-><init>()V

    invoke-virtual {v9, v8}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v9, v5}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    invoke-virtual {v9, v6}, Lgpj;->u0(I)Lgpj;

    invoke-virtual {v9, v7}, Lgpj;->p(Ljava/util/List;)Lgpj;

    invoke-virtual {v9}, Lgpj;->K()Lerj;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v3}, Lu4h;->l(I)V

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final zza()Landroid/util/SparseArray;
    .locals 0

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0
.end method
