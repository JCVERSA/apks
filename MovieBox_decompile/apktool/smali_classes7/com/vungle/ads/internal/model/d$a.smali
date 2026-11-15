.class public final Lcom/vungle/ads/internal/model/d$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/serialization/internal/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/d$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/d$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/model/d$a;->INSTANCE:Lcom/vungle/ads/internal/model/d$a;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "com.vungle.ads.internal.model.DeviceNode"

    .line 11
    .line 12
    const/16 v3, 0xb

    .line 13
    .line 14
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/i0;I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "make"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    const-string v0, "model"

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    const-string v0, "osv"

    .line 29
    .line 30
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const-string v0, "carrier"

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    const-string v0, "os"

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    const-string v0, "w"

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    const-string v0, "h"

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    const-string v0, "ua"

    .line 55
    .line 56
    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    const-string v0, "ifa"

    .line 60
    .line 61
    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    const-string v0, "lmt"

    .line 65
    .line 66
    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    const-string v0, "ext"

    .line 70
    .line 71
    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    sput-object v1, Lcom/vungle/ads/internal/model/d$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    .line 75
    .line 76
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/b;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 2
    .line 3
    invoke-static {v0}, Lry/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    .line 8
    .line 9
    invoke-static {v0}, Lry/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-static {v0}, Lry/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v2}, Lry/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    sget-object v6, Lcom/vungle/ads/internal/model/d$c$a;->INSTANCE:Lcom/vungle/ads/internal/model/d$c$a;

    .line 22
    .line 23
    invoke-static {v6}, Lry/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const/16 v7, 0xb

    .line 28
    .line 29
    new-array v7, v7, [Lkotlinx/serialization/b;

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    aput-object v0, v7, v8

    .line 33
    .line 34
    const/4 v8, 0x1

    .line 35
    aput-object v0, v7, v8

    .line 36
    .line 37
    const/4 v8, 0x2

    .line 38
    aput-object v0, v7, v8

    .line 39
    .line 40
    const/4 v8, 0x3

    .line 41
    aput-object v1, v7, v8

    .line 42
    .line 43
    const/4 v1, 0x4

    .line 44
    aput-object v0, v7, v1

    .line 45
    .line 46
    const/4 v0, 0x5

    .line 47
    aput-object v2, v7, v0

    .line 48
    .line 49
    const/4 v0, 0x6

    .line 50
    aput-object v2, v7, v0

    .line 51
    .line 52
    const/4 v0, 0x7

    .line 53
    aput-object v3, v7, v0

    .line 54
    .line 55
    const/16 v0, 0x8

    .line 56
    .line 57
    aput-object v4, v7, v0

    .line 58
    .line 59
    const/16 v0, 0x9

    .line 60
    .line 61
    aput-object v5, v7, v0

    .line 62
    .line 63
    const/16 v0, 0xa

    .line 64
    .line 65
    aput-object v6, v7, v0

    .line 66
    .line 67
    return-object v7
.end method

.method public deserialize(Lsy/e;)Lcom/vungle/ads/internal/model/d;
    .locals 35

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/model/d$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lsy/e;->b(Lkotlinx/serialization/descriptors/f;)Lsy/c;

    move-result-object v0

    invoke-interface {v0}, Lsy/c;->p()Z

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0x9

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0, v1, v13}, Lsy/c;->m(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v12}, Lsy/c;->m(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v1, v11}, Lsy/c;->m(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-interface {v0, v1, v8, v13, v14}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v1, v10}, Lsy/c;->m(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v1, v7}, Lsy/c;->i(Lkotlinx/serialization/descriptors/f;I)I

    move-result v7

    invoke-interface {v0, v1, v6}, Lsy/c;->i(Lkotlinx/serialization/descriptors/f;I)I

    move-result v6

    invoke-interface {v0, v1, v5, v13, v14}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v1, v9, v13, v14}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sget-object v13, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    invoke-interface {v0, v1, v4, v13, v14}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v13, Lcom/vungle/ads/internal/model/d$c$a;->INSTANCE:Lcom/vungle/ads/internal/model/d$c$a;

    invoke-interface {v0, v1, v3, v13, v14}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v13, 0x7ff

    move-object/from16 v23, v2

    move/from16 v29, v6

    move/from16 v28, v7

    move-object/from16 v27, v10

    move-object/from16 v25, v11

    move-object/from16 v24, v12

    move/from16 v22, v13

    goto/16 :goto_4

    :cond_0
    move/from16 v20, v12

    move v2, v13

    move v15, v2

    move-object v8, v14

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object/from16 v16, v12

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move-object/from16 v13, v19

    move v14, v15

    :goto_0
    if-eqz v20, :cond_1

    invoke-interface {v0, v1}, Lsy/c;->o(Lkotlinx/serialization/descriptors/f;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v7}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v7, Lcom/vungle/ads/internal/model/d$c$a;->INSTANCE:Lcom/vungle/ads/internal/model/d$c$a;

    invoke-interface {v0, v1, v3, v7, v10}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    or-int/lit16 v15, v15, 0x400

    :goto_1
    const/4 v7, 0x5

    goto :goto_0

    :pswitch_1
    sget-object v7, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    invoke-interface {v0, v1, v4, v7, v8}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    or-int/lit16 v15, v15, 0x200

    goto :goto_1

    :pswitch_2
    sget-object v7, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-interface {v0, v1, v9, v7, v11}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    or-int/lit16 v15, v15, 0x100

    goto :goto_1

    :pswitch_3
    sget-object v7, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-interface {v0, v1, v5, v7, v12}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    or-int/lit16 v15, v15, 0x80

    goto :goto_1

    :pswitch_4
    invoke-interface {v0, v1, v6}, Lsy/c;->i(Lkotlinx/serialization/descriptors/f;I)I

    move-result v2

    or-int/lit8 v15, v15, 0x40

    goto :goto_1

    :pswitch_5
    const/4 v7, 0x5

    invoke-interface {v0, v1, v7}, Lsy/c;->i(Lkotlinx/serialization/descriptors/f;I)I

    move-result v14

    or-int/lit8 v15, v15, 0x20

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x4

    const/4 v7, 0x5

    invoke-interface {v0, v1, v3}, Lsy/c;->m(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;

    move-result-object v19

    or-int/lit8 v15, v15, 0x10

    :goto_2
    const/16 v3, 0xa

    goto :goto_0

    :pswitch_7
    const/4 v7, 0x5

    sget-object v3, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4, v3, v13}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    or-int/lit8 v15, v15, 0x8

    :goto_3
    const/16 v3, 0xa

    const/16 v4, 0x9

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v7, 0x5

    invoke-interface {v0, v1, v3}, Lsy/c;->m(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;

    move-result-object v18

    or-int/lit8 v15, v15, 0x4

    goto :goto_3

    :pswitch_9
    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v7, 0x5

    invoke-interface {v0, v1, v3}, Lsy/c;->m(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;

    move-result-object v17

    or-int/lit8 v15, v15, 0x2

    goto :goto_3

    :pswitch_a
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v7, 0x5

    invoke-interface {v0, v1, v3}, Lsy/c;->m(Lkotlinx/serialization/descriptors/f;I)Ljava/lang/String;

    move-result-object v16

    or-int/lit8 v15, v15, 0x1

    goto :goto_3

    :pswitch_b
    const/4 v3, 0x0

    const/4 v7, 0x5

    move/from16 v20, v3

    goto :goto_2

    :cond_1
    move/from16 v29, v2

    move-object v4, v8

    move-object v3, v10

    move-object v9, v11

    move-object v5, v12

    move-object v8, v13

    move/from16 v28, v14

    move/from16 v22, v15

    move-object/from16 v23, v16

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    move-object/from16 v27, v19

    :goto_4
    invoke-interface {v0, v1}, Lsy/c;->c(Lkotlinx/serialization/descriptors/f;)V

    new-instance v0, Lcom/vungle/ads/internal/model/d;

    move-object/from16 v26, v8

    check-cast v26, Ljava/lang/String;

    move-object/from16 v30, v5

    check-cast v30, Ljava/lang/String;

    move-object/from16 v31, v9

    check-cast v31, Ljava/lang/String;

    move-object/from16 v32, v4

    check-cast v32, Ljava/lang/Integer;

    move-object/from16 v33, v3

    check-cast v33, Lcom/vungle/ads/internal/model/d$c;

    const/16 v34, 0x0

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v34}, Lcom/vungle/ads/internal/model/d;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/vungle/ads/internal/model/d$c;Lkotlinx/serialization/internal/w1;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lsy/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/d$a;->deserialize(Lsy/e;)Lcom/vungle/ads/internal/model/d;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/model/d$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public serialize(Lsy/f;Lcom/vungle/ads/internal/model/d;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/d$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lsy/f;->b(Lkotlinx/serialization/descriptors/f;)Lsy/d;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/d;->write$Self(Lcom/vungle/ads/internal/model/d;Lsy/d;Lkotlinx/serialization/descriptors/f;)V

    invoke-interface {p1, v0}, Lsy/d;->c(Lkotlinx/serialization/descriptors/f;)V

    return-void
.end method

.method public bridge synthetic serialize(Lsy/f;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/vungle/ads/internal/model/d;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/d$a;->serialize(Lsy/f;Lcom/vungle/ads/internal/model/d;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/b;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/internal/i0$a;->a(Lkotlinx/serialization/internal/i0;)[Lkotlinx/serialization/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
