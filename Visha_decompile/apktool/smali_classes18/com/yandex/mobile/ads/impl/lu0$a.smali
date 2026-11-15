.class final Lcom/yandex/mobile/ads/impl/lu0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/z40;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/lu0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/lu0;


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/lu0;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lu0$a;->a:Lcom/yandex/mobile/ads/impl/lu0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/lu0;Ltmd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0$a;-><init>(Lcom/yandex/mobile/ads/impl/lu0;)V

    return-void
.end method


# virtual methods
.method public final a(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/eg1;
        }
    .end annotation

    .line 105
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lu0$a;->a:Lcom/yandex/mobile/ads/impl/lu0;

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_0

    .line 107
    :pswitch_0
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 108
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    double-to-float p1, p2

    .line 109
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->u:F

    goto/16 :goto_0

    .line 110
    :pswitch_1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 111
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    double-to-float p1, p2

    .line 112
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->t:F

    goto/16 :goto_0

    .line 113
    :pswitch_2
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 114
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    double-to-float p1, p2

    .line 115
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->s:F

    goto/16 :goto_0

    .line 116
    :pswitch_3
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 117
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    double-to-float p1, p2

    .line 118
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->M:F

    goto/16 :goto_0

    .line 119
    :pswitch_4
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 120
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    double-to-float p1, p2

    .line 121
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->L:F

    goto :goto_0

    .line 122
    :pswitch_5
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 123
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    double-to-float p1, p2

    .line 124
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->K:F

    goto :goto_0

    .line 125
    :pswitch_6
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 126
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    double-to-float p1, p2

    .line 127
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->J:F

    goto :goto_0

    .line 128
    :pswitch_7
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 129
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    double-to-float p1, p2

    .line 130
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->I:F

    goto :goto_0

    .line 131
    :pswitch_8
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 132
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    double-to-float p1, p2

    .line 133
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->H:F

    goto :goto_0

    .line 134
    :pswitch_9
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 135
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    double-to-float p1, p2

    .line 136
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->G:F

    goto :goto_0

    .line 137
    :pswitch_a
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 138
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    double-to-float p1, p2

    .line 139
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->F:F

    goto :goto_0

    .line 140
    :pswitch_b
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 141
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    double-to-float p1, p2

    .line 142
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->E:F

    goto :goto_0

    .line 143
    :pswitch_c
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 144
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    double-to-float p1, p2

    .line 145
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->D:F

    goto :goto_0

    :cond_0
    double-to-long p1, p2

    .line 146
    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/lu0;->V(Lcom/yandex/mobile/ads/impl/lu0;J)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 148
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    double-to-int p1, p2

    .line 149
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->Q:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(IILcom/yandex/mobile/ads/impl/wz;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    .line 1
    iget-object v2, v2, Lcom/yandex/mobile/ads/impl/lu0$a;->a:Lcom/yandex/mobile/ads/impl/lu0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xa1

    const/16 v5, 0xa3

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v0, v4, :cond_b

    if-eq v0, v5, :cond_b

    const/16 v4, 0xa5

    if-eq v0, v4, :cond_8

    const/16 v4, 0x41ed

    if-eq v0, v4, :cond_5

    const/16 v4, 0x4255

    if-eq v0, v4, :cond_4

    const/16 v4, 0x47e2

    if-eq v0, v4, :cond_3

    const/16 v4, 0x53ab

    if-eq v0, v4, :cond_2

    const/16 v4, 0x63a2

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7672

    if-ne v0, v4, :cond_0

    .line 2
    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 3
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object v0

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/lu0$b;->v:[B

    .line 4
    invoke-virtual {v3, v2, v12, v1, v12}, Lcom/yandex/mobile/ads/impl/wz;->a([BIIZ)Z

    goto/16 :goto_10

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    .line 6
    :cond_1
    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 7
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object v0

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/lu0$b;->k:[B

    .line 8
    invoke-virtual {v3, v2, v12, v1, v12}, Lcom/yandex/mobile/ads/impl/wz;->a([BIIZ)Z

    goto/16 :goto_10

    .line 9
    :cond_2
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->v(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v0

    invoke-static {v0, v12}, Ljava/util/Arrays;->fill([BB)V

    .line 10
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->v(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v0

    rsub-int/lit8 v4, v1, 0x4

    .line 11
    invoke-virtual {v3, v0, v4, v1, v12}, Lcom/yandex/mobile/ads/impl/wz;->a([BIIZ)Z

    .line 12
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->v(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/yandex/mobile/ads/impl/ag1;->e(I)V

    .line 13
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->v(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/lu0;->Y(Lcom/yandex/mobile/ads/impl/lu0;I)V

    goto/16 :goto_10

    .line 14
    :cond_3
    new-array v4, v1, [B

    .line 15
    invoke-virtual {v3, v4, v12, v1, v12}, Lcom/yandex/mobile/ads/impl/wz;->a([BIIZ)Z

    .line 16
    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 17
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/yandex/mobile/ads/impl/a62$a;

    invoke-direct {v1, v11, v12, v12, v4}, Lcom/yandex/mobile/ads/impl/a62$a;-><init>(III[B)V

    iput-object v1, v0, Lcom/yandex/mobile/ads/impl/lu0$b;->j:Lcom/yandex/mobile/ads/impl/a62$a;

    goto/16 :goto_10

    .line 19
    :cond_4
    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 20
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object v0

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/lu0$b;->i:[B

    .line 21
    invoke-virtual {v3, v2, v12, v1, v12}, Lcom/yandex/mobile/ads/impl/wz;->a([BIIZ)Z

    goto/16 :goto_10

    .line 22
    :cond_5
    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 23
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/lu0$b;->b(Lcom/yandex/mobile/ads/impl/lu0$b;)I

    move-result v2

    const v4, 0x64767643

    if-eq v2, v4, :cond_7

    const v4, 0x64766343

    if-ne v2, v4, :cond_6

    goto :goto_0

    .line 25
    :cond_6
    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/impl/wz;->a(I)V

    goto/16 :goto_10

    .line 26
    :cond_7
    :goto_0
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/yandex/mobile/ads/impl/lu0$b;->N:[B

    .line 27
    invoke-virtual {v3, v2, v12, v1, v12}, Lcom/yandex/mobile/ads/impl/wz;->a([BIIZ)Z

    goto/16 :goto_10

    .line 28
    :cond_8
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->h(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v0

    if-eq v0, v8, :cond_9

    goto/16 :goto_10

    .line 29
    :cond_9
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->s(Lcom/yandex/mobile/ads/impl/lu0;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->m(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v4

    .line 30
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/lu0$b;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->p(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v4

    if-ne v4, v7, :cond_a

    .line 31
    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/lu0$b;->b:Ljava/lang/String;

    .line 32
    const-string v4, "V_VP9"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->w(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ag1;->c(I)V

    .line 34
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->w(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v0

    .line 35
    invoke-virtual {v3, v0, v12, v1, v12}, Lcom/yandex/mobile/ads/impl/wz;->a([BIIZ)Z

    goto/16 :goto_10

    .line 36
    :cond_a
    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/impl/wz;->a(I)V

    goto/16 :goto_10

    .line 37
    :cond_b
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->h(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v4

    const/16 v9, 0x8

    if-nez v4, :cond_c

    .line 38
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->q(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/q92;

    move-result-object v4

    invoke-virtual {v4, v3, v12, v11, v9}, Lcom/yandex/mobile/ads/impl/q92;->a(Lcom/yandex/mobile/ads/impl/wz;ZZI)J

    move-result-wide v13

    long-to-int v4, v13

    invoke-static {v2, v4}, Lcom/yandex/mobile/ads/impl/lu0;->M(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 39
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->q(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/q92;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/q92;->a()I

    move-result v4

    invoke-static {v2, v4}, Lcom/yandex/mobile/ads/impl/lu0;->N(Lcom/yandex/mobile/ads/impl/lu0;I)V

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 40
    invoke-static {v2, v13, v14}, Lcom/yandex/mobile/ads/impl/lu0;->I(Lcom/yandex/mobile/ads/impl/lu0;J)V

    .line 41
    invoke-static {v2, v11}, Lcom/yandex/mobile/ads/impl/lu0;->G(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 42
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->u(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/yandex/mobile/ads/impl/ag1;->c(I)V

    .line 43
    :cond_c
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->s(Lcom/yandex/mobile/ads/impl/lu0;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->m(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/yandex/mobile/ads/impl/lu0$b;

    if-nez v13, :cond_d

    .line 44
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->n(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {v3, v0}, Lcom/yandex/mobile/ads/impl/wz;->a(I)V

    .line 45
    invoke-static {v2, v12}, Lcom/yandex/mobile/ads/impl/lu0;->G(Lcom/yandex/mobile/ads/impl/lu0;I)V

    goto/16 :goto_10

    .line 46
    :cond_d
    iget-object v4, v13, Lcom/yandex/mobile/ads/impl/lu0$b;->X:Lcom/yandex/mobile/ads/impl/a62;

    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->h(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v4

    if-ne v4, v11, :cond_22

    const/4 v4, 0x3

    .line 49
    invoke-static {v2, v3, v4}, Lcom/yandex/mobile/ads/impl/lu0;->f0(Lcom/yandex/mobile/ads/impl/lu0;Lcom/yandex/mobile/ads/impl/wz;I)V

    .line 50
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->u(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v10

    aget-byte v10, v10, v8

    and-int/lit8 v10, v10, 0x6

    shr-int/2addr v10, v11

    const/16 v14, 0xff

    if-nez v10, :cond_10

    .line 51
    invoke-static {v2, v11}, Lcom/yandex/mobile/ads/impl/lu0;->K(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 52
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->l(Lcom/yandex/mobile/ads/impl/lu0;)[I

    move-result-object v6

    if-nez v6, :cond_e

    .line 53
    new-array v6, v11, [I

    goto :goto_1

    .line 54
    :cond_e
    array-length v7, v6

    if-lt v7, v11, :cond_f

    goto :goto_1

    .line 55
    :cond_f
    array-length v6, v6

    mul-int/2addr v6, v8

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v6, v6, [I

    .line 56
    :goto_1
    invoke-static {v2, v6}, Lcom/yandex/mobile/ads/impl/lu0;->L(Lcom/yandex/mobile/ads/impl/lu0;[I)V

    .line 57
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->n(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v7

    sub-int/2addr v1, v7

    sub-int/2addr v1, v4

    aput v1, v6, v12

    goto/16 :goto_a

    .line 58
    :cond_10
    invoke-static {v2, v3, v7}, Lcom/yandex/mobile/ads/impl/lu0;->f0(Lcom/yandex/mobile/ads/impl/lu0;Lcom/yandex/mobile/ads/impl/wz;I)V

    .line 59
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->u(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v15

    invoke-virtual {v15}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v15

    aget-byte v15, v15, v4

    and-int/2addr v15, v14

    add-int/2addr v15, v11

    invoke-static {v2, v15}, Lcom/yandex/mobile/ads/impl/lu0;->K(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 60
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->l(Lcom/yandex/mobile/ads/impl/lu0;)[I

    move-result-object v5

    if-nez v5, :cond_11

    .line 61
    new-array v5, v15, [I

    goto :goto_2

    .line 62
    :cond_11
    array-length v6, v5

    if-lt v6, v15, :cond_12

    goto :goto_2

    .line 63
    :cond_12
    array-length v5, v5

    mul-int/2addr v5, v8

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v5, v5, [I

    .line 64
    :goto_2
    invoke-static {v2, v5}, Lcom/yandex/mobile/ads/impl/lu0;->L(Lcom/yandex/mobile/ads/impl/lu0;[I)V

    if-ne v10, v8, :cond_13

    .line 65
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->n(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, v7

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->k(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v4

    div-int/2addr v1, v4

    .line 66
    invoke-static {v5, v12, v4, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_a

    :cond_13
    if-ne v10, v11, :cond_16

    move v4, v12

    move v5, v4

    .line 67
    :goto_3
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->k(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v6

    sub-int/2addr v6, v11

    if-ge v4, v6, :cond_15

    .line 68
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->l(Lcom/yandex/mobile/ads/impl/lu0;)[I

    move-result-object v6

    aput v12, v6, v4

    :goto_4
    add-int/lit8 v6, v7, 0x1

    .line 69
    invoke-static {v2, v3, v6}, Lcom/yandex/mobile/ads/impl/lu0;->f0(Lcom/yandex/mobile/ads/impl/lu0;Lcom/yandex/mobile/ads/impl/wz;I)V

    .line 70
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->u(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v10

    aget-byte v7, v10, v7

    and-int/2addr v7, v14

    .line 71
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->l(Lcom/yandex/mobile/ads/impl/lu0;)[I

    move-result-object v10

    aget v15, v10, v4

    add-int/2addr v15, v7

    aput v15, v10, v4

    if-eq v7, v14, :cond_14

    add-int/2addr v5, v15

    add-int/lit8 v4, v4, 0x1

    move v7, v6

    goto :goto_3

    :cond_14
    move v7, v6

    goto :goto_4

    .line 72
    :cond_15
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->l(Lcom/yandex/mobile/ads/impl/lu0;)[I

    move-result-object v4

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->n(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v10

    sub-int/2addr v1, v10

    sub-int/2addr v1, v7

    sub-int/2addr v1, v5

    aput v1, v4, v6

    goto/16 :goto_a

    :cond_16
    if-ne v10, v4, :cond_21

    move v4, v12

    move v5, v4

    .line 73
    :goto_5
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->k(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v6

    sub-int/2addr v6, v11

    if-ge v4, v6, :cond_1e

    .line 74
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->l(Lcom/yandex/mobile/ads/impl/lu0;)[I

    move-result-object v6

    aput v12, v6, v4

    add-int/lit8 v6, v7, 0x1

    .line 75
    invoke-static {v2, v3, v6}, Lcom/yandex/mobile/ads/impl/lu0;->f0(Lcom/yandex/mobile/ads/impl/lu0;Lcom/yandex/mobile/ads/impl/wz;I)V

    .line 76
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->u(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v10

    aget-byte v10, v10, v7

    if-eqz v10, :cond_1d

    move v10, v12

    :goto_6
    if-ge v10, v9, :cond_1a

    rsub-int/lit8 v15, v10, 0x7

    shl-int v15, v11, v15

    .line 77
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->u(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v16

    aget-byte v16, v16, v7

    and-int v16, v16, v15

    if-eqz v16, :cond_19

    add-int v8, v6, v10

    .line 78
    invoke-static {v2, v3, v8}, Lcom/yandex/mobile/ads/impl/lu0;->f0(Lcom/yandex/mobile/ads/impl/lu0;Lcom/yandex/mobile/ads/impl/wz;I)V

    .line 79
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->u(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v17

    aget-byte v7, v17, v7

    and-int/2addr v7, v14

    not-int v15, v15

    and-int/2addr v7, v15

    int-to-long v11, v7

    :goto_7
    if-ge v6, v8, :cond_17

    shl-long/2addr v11, v9

    .line 80
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->u(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v7

    add-int/lit8 v18, v6, 0x1

    aget-byte v6, v7, v6

    and-int/2addr v6, v14

    int-to-long v6, v6

    or-long/2addr v11, v6

    move/from16 v6, v18

    goto :goto_7

    :cond_17
    if-lez v4, :cond_18

    mul-int/lit8 v10, v10, 0x7

    add-int/lit8 v10, v10, 0x6

    const-wide/16 v6, 0x1

    shl-long v18, v6, v10

    sub-long v18, v18, v6

    sub-long v11, v11, v18

    :cond_18
    move v7, v8

    goto :goto_8

    :cond_19
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_6

    :cond_1a
    const-wide/16 v11, 0x0

    move v7, v6

    :goto_8
    const-wide/32 v18, -0x80000000

    cmp-long v6, v11, v18

    if-ltz v6, :cond_1c

    const-wide/32 v18, 0x7fffffff

    cmp-long v6, v11, v18

    if-gtz v6, :cond_1c

    long-to-int v6, v11

    .line 81
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->l(Lcom/yandex/mobile/ads/impl/lu0;)[I

    move-result-object v8

    if-nez v4, :cond_1b

    goto :goto_9

    :cond_1b
    add-int/lit8 v10, v4, -0x1

    .line 82
    aget v10, v8, v10

    add-int/2addr v6, v10

    :goto_9
    aput v6, v8, v4

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_5

    .line 83
    :cond_1c
    const-string v0, "EBML lacing sample size out of range."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_1d
    const/4 v1, 0x0

    .line 84
    const-string v0, "No valid varint length mask found"

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    .line 85
    :cond_1e
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->l(Lcom/yandex/mobile/ads/impl/lu0;)[I

    move-result-object v4

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->n(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v8

    sub-int/2addr v1, v8

    sub-int/2addr v1, v7

    sub-int/2addr v1, v5

    aput v1, v4, v6

    .line 86
    :goto_a
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->u(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v1

    const/4 v4, 0x0

    aget-byte v1, v1, v4

    shl-int/2addr v1, v9

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->u(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v4

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/2addr v4, v14

    or-int/2addr v1, v4

    .line 87
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->d(Lcom/yandex/mobile/ads/impl/lu0;)J

    move-result-wide v4

    int-to-long v6, v1

    invoke-static {v2, v6, v7}, Lcom/yandex/mobile/ads/impl/lu0;->c0(Lcom/yandex/mobile/ads/impl/lu0;J)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/yandex/mobile/ads/impl/lu0;->H(Lcom/yandex/mobile/ads/impl/lu0;J)V

    .line 88
    iget v1, v13, Lcom/yandex/mobile/ads/impl/lu0$b;->d:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_20

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1f

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->u(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/ag1;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ag1;->c()[B

    move-result-object v1

    aget-byte v1, v1, v4

    const/16 v5, 0x80

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1f

    goto :goto_b

    :cond_1f
    const/4 v1, 0x0

    goto :goto_c

    :cond_20
    :goto_b
    const/4 v1, 0x1

    .line 90
    :goto_c
    invoke-static {v2, v1}, Lcom/yandex/mobile/ads/impl/lu0;->O(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 91
    invoke-static {v2, v4}, Lcom/yandex/mobile/ads/impl/lu0;->G(Lcom/yandex/mobile/ads/impl/lu0;I)V

    const/4 v1, 0x0

    .line 92
    invoke-static {v2, v1}, Lcom/yandex/mobile/ads/impl/lu0;->J(Lcom/yandex/mobile/ads/impl/lu0;I)V

    const/16 v1, 0xa3

    goto :goto_d

    .line 93
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected lacing value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object v0

    throw v0

    :cond_22
    move v1, v5

    :goto_d
    if-ne v0, v1, :cond_24

    .line 94
    :goto_e
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->j(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v0

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->k(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 95
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->l(Lcom/yandex/mobile/ads/impl/lu0;)[I

    move-result-object v1

    aget v0, v1, v0

    const/4 v1, 0x0

    .line 96
    invoke-static {v2, v3, v13, v0, v1}, Lcom/yandex/mobile/ads/impl/lu0;->b0(Lcom/yandex/mobile/ads/impl/lu0;Lcom/yandex/mobile/ads/impl/wz;Lcom/yandex/mobile/ads/impl/lu0$b;IZ)I

    move-result v9

    .line 97
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->i(Lcom/yandex/mobile/ads/impl/lu0;)J

    move-result-wide v0

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->j(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v4

    iget v5, v13, Lcom/yandex/mobile/ads/impl/lu0$b;->e:I

    mul-int/2addr v4, v5

    div-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long v6, v0, v4

    .line 98
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->o(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v8

    const/4 v10, 0x0

    move-object v4, v2

    move-object v5, v13

    invoke-static/range {v4 .. v10}, Lcom/yandex/mobile/ads/impl/lu0;->e0(Lcom/yandex/mobile/ads/impl/lu0;Lcom/yandex/mobile/ads/impl/lu0$b;JIII)V

    .line 99
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->j(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/lu0;->J(Lcom/yandex/mobile/ads/impl/lu0;I)V

    goto :goto_e

    :cond_23
    const/4 v0, 0x0

    .line 100
    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/lu0;->G(Lcom/yandex/mobile/ads/impl/lu0;I)V

    goto :goto_10

    :cond_24
    const/4 v1, 0x1

    .line 101
    :goto_f
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->j(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v0

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->k(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v4

    if-ge v0, v4, :cond_25

    .line 102
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->l(Lcom/yandex/mobile/ads/impl/lu0;)[I

    move-result-object v4

    aget v5, v4, v0

    .line 103
    invoke-static {v2, v3, v13, v5, v1}, Lcom/yandex/mobile/ads/impl/lu0;->b0(Lcom/yandex/mobile/ads/impl/lu0;Lcom/yandex/mobile/ads/impl/wz;Lcom/yandex/mobile/ads/impl/lu0$b;IZ)I

    move-result v5

    aput v5, v4, v0

    .line 104
    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/lu0;->j(Lcom/yandex/mobile/ads/impl/lu0;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Lcom/yandex/mobile/ads/impl/lu0;->J(Lcom/yandex/mobile/ads/impl/lu0;I)V

    goto :goto_f

    :cond_25
    :goto_10
    return-void
.end method

.method public final a(IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/eg1;
        }
    .end annotation

    .line 150
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lu0$a;->a:Lcom/yandex/mobile/ads/impl/lu0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x5031

    const-string v1, " not supported"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_19

    const-string v0, " must be in a Cues"

    const-string v5, "Element "

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x7

    const/4 v1, -0x1

    const/4 v2, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 151
    :pswitch_0
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 152
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    long-to-int p1, p2

    .line 153
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->C:I

    goto/16 :goto_2

    .line 154
    :pswitch_1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 155
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    long-to-int p1, p2

    .line 156
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->B:I

    goto/16 :goto_2

    .line 157
    :pswitch_2
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 158
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    iput-boolean v9, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->x:Z

    long-to-int p1, p2

    .line 159
    sget-object p2, Lcom/yandex/mobile/ads/impl/rq;->g:Lcom/yandex/mobile/ads/impl/km$a;

    if-eq p1, v9, :cond_1

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_2

    move v8, v1

    goto :goto_0

    :cond_0
    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v9

    :cond_2
    :goto_0
    if-eq v8, v1, :cond_1c

    .line 160
    iput v8, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->y:I

    goto/16 :goto_2

    .line 161
    :pswitch_3
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    long-to-int p1, p2

    .line 162
    sget-object p2, Lcom/yandex/mobile/ads/impl/rq;->g:Lcom/yandex/mobile/ads/impl/km$a;

    if-eq p1, v9, :cond_5

    const/16 p2, 0x10

    if-eq p1, p2, :cond_4

    const/16 p2, 0x12

    if-eq p1, p2, :cond_3

    if-eq p1, v2, :cond_5

    if-eq p1, v0, :cond_5

    move v7, v1

    goto :goto_1

    :cond_3
    move v7, v0

    goto :goto_1

    :cond_4
    move v7, v2

    :cond_5
    :goto_1
    if-eq v7, v1, :cond_1c

    .line 163
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    iput v7, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->z:I

    goto/16 :goto_2

    .line 164
    :pswitch_4
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    long-to-int p1, p2

    if-eq p1, v9, :cond_7

    if-eq p1, v8, :cond_6

    goto/16 :goto_2

    .line 165
    :cond_6
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    iput v9, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->A:I

    goto/16 :goto_2

    .line 166
    :cond_7
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    iput v8, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->A:I

    goto/16 :goto_2

    .line 167
    :sswitch_0
    invoke-static {p0, p2, p3}, Lcom/yandex/mobile/ads/impl/lu0;->U(Lcom/yandex/mobile/ads/impl/lu0;J)V

    goto/16 :goto_2

    .line 168
    :sswitch_1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 169
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    long-to-int p1, p2

    .line 170
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->e:I

    goto/16 :goto_2

    .line 171
    :sswitch_2
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    long-to-int p1, p2

    if-eqz p1, :cond_b

    if-eq p1, v9, :cond_a

    if-eq p1, v8, :cond_9

    if-eq p1, v7, :cond_8

    goto/16 :goto_2

    .line 172
    :cond_8
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    iput v7, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->r:I

    goto/16 :goto_2

    .line 173
    :cond_9
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    iput v8, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->r:I

    goto/16 :goto_2

    .line 174
    :cond_a
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    iput v9, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->r:I

    goto/16 :goto_2

    .line 175
    :cond_b
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    iput v6, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->r:I

    goto/16 :goto_2

    .line 176
    :sswitch_3
    invoke-static {p0, p2, p3}, Lcom/yandex/mobile/ads/impl/lu0;->R(Lcom/yandex/mobile/ads/impl/lu0;J)V

    goto/16 :goto_2

    .line 177
    :sswitch_4
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 178
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    long-to-int p1, p2

    .line 179
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->P:I

    goto/16 :goto_2

    .line 180
    :sswitch_5
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 181
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    .line 182
    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->S:J

    goto/16 :goto_2

    .line 183
    :sswitch_6
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 184
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    .line 185
    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->R:J

    goto/16 :goto_2

    .line 186
    :sswitch_7
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 187
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    long-to-int p1, p2

    .line 188
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->f:I

    goto/16 :goto_2

    .line 189
    :sswitch_8
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 190
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    cmp-long p1, p2, v3

    if-nez p1, :cond_c

    move v6, v9

    .line 191
    :cond_c
    iput-boolean v6, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->U:Z

    goto/16 :goto_2

    .line 192
    :sswitch_9
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 193
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    long-to-int p1, p2

    .line 194
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->p:I

    goto/16 :goto_2

    .line 195
    :sswitch_a
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 196
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    long-to-int p1, p2

    .line 197
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->q:I

    goto/16 :goto_2

    .line 198
    :sswitch_b
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 199
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    long-to-int p1, p2

    .line 200
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->o:I

    goto/16 :goto_2

    :sswitch_c
    long-to-int p2, p2

    .line 201
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    if-eqz p2, :cond_10

    if-eq p2, v9, :cond_f

    if-eq p2, v7, :cond_e

    const/16 p1, 0xf

    if-eq p2, p1, :cond_d

    goto/16 :goto_2

    .line 202
    :cond_d
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    iput v7, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->w:I

    goto/16 :goto_2

    .line 203
    :cond_e
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    iput v9, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->w:I

    goto/16 :goto_2

    .line 204
    :cond_f
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    iput v8, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->w:I

    goto/16 :goto_2

    .line 205
    :cond_10
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    iput v6, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->w:I

    goto/16 :goto_2

    .line 206
    :sswitch_d
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->x(Lcom/yandex/mobile/ads/impl/lu0;)J

    move-result-wide v0

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/yandex/mobile/ads/impl/lu0;->Z(Lcom/yandex/mobile/ads/impl/lu0;J)V

    goto/16 :goto_2

    :sswitch_e
    cmp-long p0, p2, v3

    if-nez p0, :cond_11

    goto/16 :goto_2

    .line 207
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "AESSettingsCipherMode "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0

    :sswitch_f
    const-wide/16 p0, 0x5

    cmp-long p0, p2, p0

    if-nez p0, :cond_12

    goto/16 :goto_2

    .line 208
    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ContentEncAlgo "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0

    :sswitch_10
    cmp-long p0, p2, v3

    if-nez p0, :cond_13

    goto/16 :goto_2

    .line 209
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "EBMLReadVersion "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0

    :sswitch_11
    cmp-long p0, p2, v3

    if-ltz p0, :cond_14

    const-wide/16 p0, 0x2

    cmp-long p0, p2, p0

    if-gtz p0, :cond_14

    goto/16 :goto_2

    .line 210
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "DocTypeReadVersion "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0

    :sswitch_12
    const-wide/16 p0, 0x3

    cmp-long p0, p2, p0

    if-nez p0, :cond_15

    goto/16 :goto_2

    .line 211
    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ContentCompAlgo "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0

    .line 212
    :sswitch_13
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 213
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    long-to-int p1, p2

    .line 214
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0$b;->d(Lcom/yandex/mobile/ads/impl/lu0$b;I)V

    goto/16 :goto_2

    .line 215
    :sswitch_14
    invoke-static {p0, v9}, Lcom/yandex/mobile/ads/impl/lu0;->Q(Lcom/yandex/mobile/ads/impl/lu0;Z)V

    goto/16 :goto_2

    .line 216
    :sswitch_15
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->g(Lcom/yandex/mobile/ads/impl/lu0;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 217
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->e(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/gt0;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->f(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/gt0;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 218
    invoke-virtual {v1, p2, p3}, Lcom/yandex/mobile/ads/impl/gt0;->a(J)V

    .line 219
    invoke-static {p0, v9}, Lcom/yandex/mobile/ads/impl/lu0;->F(Lcom/yandex/mobile/ads/impl/lu0;Z)V

    goto/16 :goto_2

    .line 220
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0

    :sswitch_16
    long-to-int p1, p2

    .line 221
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->P(Lcom/yandex/mobile/ads/impl/lu0;I)V

    goto/16 :goto_2

    .line 222
    :sswitch_17
    invoke-static {p0, p2, p3}, Lcom/yandex/mobile/ads/impl/lu0;->c0(Lcom/yandex/mobile/ads/impl/lu0;J)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/lu0;->C(Lcom/yandex/mobile/ads/impl/lu0;J)V

    goto/16 :goto_2

    .line 223
    :sswitch_18
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 224
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    long-to-int p1, p2

    .line 225
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->c:I

    goto/16 :goto_2

    .line 226
    :sswitch_19
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 227
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    long-to-int p1, p2

    .line 228
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->n:I

    goto/16 :goto_2

    .line 229
    :sswitch_1a
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->e(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/gt0;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->f(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/gt0;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 230
    invoke-static {p0, p2, p3}, Lcom/yandex/mobile/ads/impl/lu0;->c0(Lcom/yandex/mobile/ads/impl/lu0;J)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Lcom/yandex/mobile/ads/impl/gt0;->a(J)V

    goto/16 :goto_2

    .line 231
    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0

    .line 232
    :sswitch_1b
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 233
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    long-to-int p1, p2

    .line 234
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->m:I

    goto :goto_2

    .line 235
    :sswitch_1c
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 236
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    long-to-int p1, p2

    .line 237
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->O:I

    goto :goto_2

    .line 238
    :sswitch_1d
    invoke-static {p0, p2, p3}, Lcom/yandex/mobile/ads/impl/lu0;->c0(Lcom/yandex/mobile/ads/impl/lu0;J)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/lu0;->I(Lcom/yandex/mobile/ads/impl/lu0;J)V

    goto :goto_2

    .line 239
    :sswitch_1e
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 240
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    cmp-long p1, p2, v3

    if-nez p1, :cond_18

    move v6, v9

    .line 241
    :cond_18
    iput-boolean v6, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->V:Z

    goto :goto_2

    .line 242
    :sswitch_1f
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 243
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    long-to-int p1, p2

    .line 244
    iput p1, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->d:I

    goto :goto_2

    :cond_19
    cmp-long p0, p2, v3

    if-nez p0, :cond_1a

    goto :goto_2

    .line 245
    :cond_1a
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ContentEncodingScope "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0

    :cond_1b
    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-nez p0, :cond_1d

    :cond_1c
    :goto_2
    return-void

    .line 246
    :cond_1d
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ContentEncodingOrder "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1f
        0x88 -> :sswitch_1e
        0x9b -> :sswitch_1d
        0x9f -> :sswitch_1c
        0xb0 -> :sswitch_1b
        0xb3 -> :sswitch_1a
        0xba -> :sswitch_19
        0xd7 -> :sswitch_18
        0xe7 -> :sswitch_17
        0xee -> :sswitch_16
        0xf1 -> :sswitch_15
        0xfb -> :sswitch_14
        0x41e7 -> :sswitch_13
        0x4254 -> :sswitch_12
        0x4285 -> :sswitch_11
        0x42f7 -> :sswitch_10
        0x47e1 -> :sswitch_f
        0x47e8 -> :sswitch_e
        0x53ac -> :sswitch_d
        0x53b8 -> :sswitch_c
        0x54b0 -> :sswitch_b
        0x54b2 -> :sswitch_a
        0x54ba -> :sswitch_9
        0x55aa -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(IJJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/eg1;
        }
    .end annotation

    .line 247
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lu0$a;->a:Lcom/yandex/mobile/ads/impl/lu0;

    .line 248
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->r(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/b80;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0xa0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eq p1, v1, :cond_b

    const/16 v1, 0xae

    if-eq p1, v1, :cond_a

    const/16 v1, 0xbb

    if-eq p1, v1, :cond_9

    const/16 v1, 0x4dbb

    const-wide/16 v5, -0x1

    if-eq p1, v1, :cond_8

    const/16 v1, 0x5035

    const/4 v7, 0x1

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55d0

    if-eq p1, v1, :cond_6

    const v1, 0x18538067

    if-eq p1, v1, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 249
    :cond_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->A(Lcom/yandex/mobile/ads/impl/lu0;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 250
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->t(Lcom/yandex/mobile/ads/impl/lu0;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->B(Lcom/yandex/mobile/ads/impl/lu0;)J

    move-result-wide p1

    cmp-long p1, p1, v5

    if-eqz p1, :cond_1

    .line 251
    invoke-static {p0, v7}, Lcom/yandex/mobile/ads/impl/lu0;->a0(Lcom/yandex/mobile/ads/impl/lu0;Z)V

    goto/16 :goto_1

    .line 252
    :cond_1
    new-instance p1, Lcom/yandex/mobile/ads/impl/ex1$b;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->y(Lcom/yandex/mobile/ads/impl/lu0;)J

    move-result-wide p2

    .line 253
    invoke-direct {p1, p2, p3, v2, v3}, Lcom/yandex/mobile/ads/impl/ex1$b;-><init>(JJ)V

    .line 254
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/b80;->a(Lcom/yandex/mobile/ads/impl/ex1;)V

    .line 255
    invoke-static {p0, v7}, Lcom/yandex/mobile/ads/impl/lu0;->X(Lcom/yandex/mobile/ads/impl/lu0;Z)V

    goto :goto_1

    .line 256
    :cond_2
    new-instance p1, Lcom/yandex/mobile/ads/impl/gt0;

    .line 257
    invoke-direct {p1, v4}, Lcom/yandex/mobile/ads/impl/gt0;-><init>(I)V

    .line 258
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->D(Lcom/yandex/mobile/ads/impl/lu0;Lcom/yandex/mobile/ads/impl/gt0;)V

    .line 259
    new-instance p1, Lcom/yandex/mobile/ads/impl/gt0;

    .line 260
    invoke-direct {p1, v4}, Lcom/yandex/mobile/ads/impl/gt0;-><init>(I)V

    .line 261
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->E(Lcom/yandex/mobile/ads/impl/lu0;Lcom/yandex/mobile/ads/impl/gt0;)V

    goto :goto_1

    .line 262
    :cond_3
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->x(Lcom/yandex/mobile/ads/impl/lu0;)J

    move-result-wide v0

    cmp-long p1, v0, v5

    if-eqz p1, :cond_5

    cmp-long p1, v0, p2

    if-nez p1, :cond_4

    goto :goto_0

    .line 263
    :cond_4
    const-string p0, "Multiple Segment elements not supported"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0

    .line 264
    :cond_5
    :goto_0
    invoke-static {p0, p2, p3}, Lcom/yandex/mobile/ads/impl/lu0;->T(Lcom/yandex/mobile/ads/impl/lu0;J)V

    .line 265
    invoke-static {p0, p4, p5}, Lcom/yandex/mobile/ads/impl/lu0;->S(Lcom/yandex/mobile/ads/impl/lu0;J)V

    goto :goto_1

    .line 266
    :cond_6
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 267
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    .line 268
    iput-boolean v7, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->x:Z

    goto :goto_1

    .line 269
    :cond_7
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 270
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    .line 271
    iput-boolean v7, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->h:Z

    goto :goto_1

    :cond_8
    const/4 p1, -0x1

    .line 272
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->Y(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 273
    invoke-static {p0, v5, v6}, Lcom/yandex/mobile/ads/impl/lu0;->Z(Lcom/yandex/mobile/ads/impl/lu0;J)V

    goto :goto_1

    .line 274
    :cond_9
    invoke-static {p0, v4}, Lcom/yandex/mobile/ads/impl/lu0;->F(Lcom/yandex/mobile/ads/impl/lu0;Z)V

    goto :goto_1

    .line 275
    :cond_a
    new-instance p1, Lcom/yandex/mobile/ads/impl/lu0$b;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/lu0$b;-><init>()V

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->W(Lcom/yandex/mobile/ads/impl/lu0;Lcom/yandex/mobile/ads/impl/lu0$b;)V

    goto :goto_1

    .line 276
    :cond_b
    invoke-static {p0, v4}, Lcom/yandex/mobile/ads/impl/lu0;->Q(Lcom/yandex/mobile/ads/impl/lu0;Z)V

    .line 277
    invoke-static {p0, v2, v3}, Lcom/yandex/mobile/ads/impl/lu0;->R(Lcom/yandex/mobile/ads/impl/lu0;J)V

    :cond_c
    :goto_1
    return-void

    .line 278
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/impl/eg1;
        }
    .end annotation

    .line 279
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lu0$a;->a:Lcom/yandex/mobile/ads/impl/lu0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x86

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 281
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    .line 282
    invoke-static {p0, p2}, Lcom/yandex/mobile/ads/impl/lu0$b;->c(Lcom/yandex/mobile/ads/impl/lu0$b;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 284
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    .line 285
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->a:Ljava/lang/String;

    goto :goto_0

    .line 286
    :cond_2
    const-string p0, "webm"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "matroska"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 287
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "DocType "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/eg1;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/mobile/ads/impl/eg1;

    move-result-object p0

    throw p0

    .line 288
    :cond_4
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/lu0;->d0(Lcom/yandex/mobile/ads/impl/lu0;I)V

    .line 289
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lu0;->z(Lcom/yandex/mobile/ads/impl/lu0;)Lcom/yandex/mobile/ads/impl/lu0$b;

    move-result-object p0

    .line 290
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lu0$b;->b:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method
