.class final Lcom/yandex/mobile/ads/impl/q32$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/q32;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/q32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/jc0;)Lcom/yandex/mobile/ads/impl/o32;
    .locals 2

    iget-object p0, p1, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    if-eqz p0, :cond_c

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "application/ttml+xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "application/x-subrip"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "application/cea-708"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "application/cea-608"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "text/x-exoplayer-cues"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_5
    const-string v1, "application/x-mp4-cea-608"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "text/x-ssa"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_7
    const-string v1, "application/x-quicktime-tx3g"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_8
    const-string v1, "text/vtt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_9
    const-string v1, "application/x-mp4-vtt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_a
    const-string v1, "application/pgs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_b
    const-string v1, "application/dvbsubs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance p0, Lcom/yandex/mobile/ads/impl/r72;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/r72;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/l32;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/l32;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/yandex/mobile/ads/impl/ao;

    iget v0, p1, Lcom/yandex/mobile/ads/impl/jc0;->E:I

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/jc0;->o:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/ao;-><init>(ILjava/util/List;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/yandex/mobile/ads/impl/j70;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/j70;-><init>()V

    return-object p0

    :pswitch_4
    new-instance v0, Lcom/yandex/mobile/ads/impl/zn;

    iget p1, p1, Lcom/yandex/mobile/ads/impl/jc0;->E:I

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/zn;-><init>(Ljava/lang/String;I)V

    return-object v0

    :pswitch_5
    new-instance p0, Lcom/yandex/mobile/ads/impl/f22;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/jc0;->o:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/f22;-><init>(Ljava/util/List;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/yandex/mobile/ads/impl/x72;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/jc0;->o:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/x72;-><init>(Ljava/util/List;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/yandex/mobile/ads/impl/dk2;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/dk2;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/yandex/mobile/ads/impl/c21;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/c21;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/yandex/mobile/ads/impl/wg1;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/wg1;-><init>()V

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/yandex/mobile/ads/impl/u40;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/jc0;->o:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/u40;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_c
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempted to create decoder for unsupported MIME type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_b
        -0x4a6813e3 -> :sswitch_a
        -0x3d28a9ba -> :sswitch_9
        -0x3be2f26c -> :sswitch_8
        0x2935f49f -> :sswitch_7
        0x310bebca -> :sswitch_6
        0x37713300 -> :sswitch_5
        0x47a1c707 -> :sswitch_4
        0x5d578071 -> :sswitch_3
        0x5d578432 -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/jc0;)Z
    .locals 0

    iget-object p0, p1, Lcom/yandex/mobile/ads/impl/jc0;->m:Ljava/lang/String;

    const-string p1, "text/vtt"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "text/x-ssa"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/ttml+xml"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/x-mp4-vtt"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/x-subrip"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/x-quicktime-tx3g"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/cea-608"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/x-mp4-cea-608"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/cea-708"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/dvbsubs"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "application/pgs"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "text/x-exoplayer-cues"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
