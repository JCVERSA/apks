.class public final Lhbe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzae;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfww;

.field public final b:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzfww;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lhbe;->b:I

    iput-object p2, p0, Lhbe;->a:Lcom/google/android/gms/internal/ads/zzfww;

    return-void
.end method

.method public static b(ILu4h;)Lhbe;
    .locals 13

    new-instance v0, Ll4i;

    invoke-direct {v0}, Ll4i;-><init>()V

    invoke-virtual {p1}, Lu4h;->x()I

    move-result v1

    const/4 v2, -0x2

    :goto_0
    invoke-virtual {p1}, Lu4h;->u()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_f

    invoke-virtual {p1}, Lu4h;->C()I

    move-result v3

    invoke-virtual {p1}, Lu4h;->C()I

    move-result v4

    invoke-virtual {p1}, Lu4h;->w()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1, v5}, Lu4h;->k(I)V

    const v4, 0x5453494c

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Lu4h;->C()I

    move-result v3

    invoke-static {v3, p1}, Lhbe;->b(ILu4h;)Lhbe;

    move-result-object v3

    goto/16 :goto_5

    :cond_0
    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    :goto_1
    move-object v3, v4

    goto/16 :goto_5

    :sswitch_0
    invoke-static {p1}, Lmbe;->a(Lu4h;)Lmbe;

    move-result-object v3

    goto/16 :goto_5

    :sswitch_1
    invoke-static {p1}, Lfbe;->c(Lu4h;)Lfbe;

    move-result-object v3

    goto/16 :goto_5

    :sswitch_2
    invoke-static {p1}, Lebe;->a(Lu4h;)Lebe;

    move-result-object v3

    goto/16 :goto_5

    :sswitch_3
    const/4 v3, 0x2

    const-string v6, "StreamFormatChunk"

    if-ne v2, v3, :cond_2

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lu4h;->m(I)V

    invoke-virtual {p1}, Lu4h;->C()I

    move-result v7

    invoke-virtual {p1}, Lu4h;->C()I

    move-result v8

    invoke-virtual {p1, v3}, Lu4h;->m(I)V

    invoke-virtual {p1}, Lu4h;->C()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    move-object v9, v4

    goto :goto_2

    :sswitch_4
    const-string v9, "video/mjpeg"

    goto :goto_2

    :sswitch_5
    const-string v9, "video/mp43"

    goto :goto_2

    :sswitch_6
    const-string v9, "video/mp42"

    goto :goto_2

    :sswitch_7
    const-string v9, "video/avc"

    goto :goto_2

    :sswitch_8
    const-string v9, "video/mp4v-es"

    :goto_2
    if-nez v9, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring track with unsupported compression "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v3, Lgpj;

    invoke-direct {v3}, Lgpj;-><init>()V

    invoke-virtual {v3, v7}, Lgpj;->J(I)Lgpj;

    invoke-virtual {v3, v8}, Lgpj;->m(I)Lgpj;

    invoke-virtual {v3, v9}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    new-instance v4, Libe;

    invoke-virtual {v3}, Lgpj;->K()Lerj;

    move-result-object v3

    invoke-direct {v4, v3}, Libe;-><init>(Lerj;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    invoke-virtual {p1}, Lu4h;->E()I

    move-result v7

    const-string v8, "audio/raw"

    const-string v9, "audio/mp4a-latm"

    if-eq v7, v3, :cond_7

    const/16 v3, 0x55

    if-eq v7, v3, :cond_6

    const/16 v3, 0xff

    if-eq v7, v3, :cond_5

    const/16 v3, 0x2000

    if-eq v7, v3, :cond_4

    const/16 v3, 0x2001

    if-eq v7, v3, :cond_3

    move-object v3, v4

    goto :goto_3

    :cond_3
    const-string v3, "audio/vnd.dts"

    goto :goto_3

    :cond_4
    const-string v3, "audio/ac3"

    goto :goto_3

    :cond_5
    move-object v3, v9

    goto :goto_3

    :cond_6
    const-string v3, "audio/mpeg"

    goto :goto_3

    :cond_7
    move-object v3, v8

    :goto_3
    if-nez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring track with unsupported format tag "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Lu4h;->E()I

    move-result v4

    invoke-virtual {p1}, Lu4h;->C()I

    move-result v6

    const/4 v7, 0x6

    invoke-virtual {p1, v7}, Lu4h;->m(I)V

    invoke-virtual {p1}, Lu4h;->E()I

    move-result v7

    invoke-static {v7}, Lkfh;->I(I)I

    move-result v7

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v10

    const/4 v11, 0x0

    if-lez v10, :cond_9

    invoke-virtual {p1}, Lu4h;->E()I

    move-result v10

    goto :goto_4

    :cond_9
    move v10, v11

    :goto_4
    new-instance v12, Lgpj;

    invoke-direct {v12}, Lgpj;-><init>()V

    invoke-virtual {v12, v3}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v12, v4}, Lgpj;->b(I)Lgpj;

    invoke-virtual {v12, v6}, Lgpj;->F(I)Lgpj;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v7, :cond_a

    invoke-virtual {v12, v7}, Lgpj;->x(I)Lgpj;

    :cond_a
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-lez v10, :cond_b

    new-array v3, v10, [B

    invoke-virtual {p1, v3, v11, v10}, Lu4h;->h([BII)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v3

    invoke-virtual {v12, v3}, Lgpj;->p(Ljava/util/List;)Lgpj;

    :cond_b
    new-instance v3, Libe;

    invoke-virtual {v12}, Lgpj;->K()Lerj;

    move-result-object v4

    invoke-direct {v3, v4}, Libe;-><init>(Lerj;)V

    goto :goto_5

    :cond_c
    const-string v3, "Ignoring strf box for unsupported track type: "

    invoke-static {v2}, Lkfh;->d(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_5
    if-eqz v3, :cond_e

    invoke-interface {v3}, Lzae;->zza()I

    move-result v4

    const v6, 0x68727473

    if-ne v4, v6, :cond_d

    move-object v2, v3

    check-cast v2, Lfbe;

    invoke-virtual {v2}, Lfbe;->a()I

    move-result v2

    :cond_d
    invoke-virtual {v0, v3}, Ll4i;->g(Ljava/lang/Object;)Ll4i;

    :cond_e
    invoke-virtual {p1, v5}, Lu4h;->l(I)V

    invoke-virtual {p1, v1}, Lu4h;->k(I)V

    goto/16 :goto_0

    :cond_f
    new-instance p1, Lhbe;

    invoke-virtual {v0}, Ll4i;->j()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lhbe;-><init>(ILcom/google/android/gms/internal/ads/zzfww;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30355844 -> :sswitch_8
        0x31435641 -> :sswitch_7
        0x31637661 -> :sswitch_7
        0x3234504d -> :sswitch_6
        0x3334504d -> :sswitch_5
        0x34363248 -> :sswitch_7
        0x34504d46 -> :sswitch_8
        0x44495633 -> :sswitch_8
        0x44495658 -> :sswitch_8
        0x47504a4d -> :sswitch_4
        0x58564944 -> :sswitch_8
        0x64697678 -> :sswitch_8
        0x67706a6d -> :sswitch_4
        0x78766964 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lzae;
    .locals 4

    iget-object p0, p0, Lhbe;->a:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzae;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zza()I
    .locals 0

    iget p0, p0, Lhbe;->b:I

    return p0
.end method
