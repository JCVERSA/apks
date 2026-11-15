.class public final Lcom/vungle/ads/internal/model/c$i$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/serialization/internal/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/c$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/c$i$a;

.field public static final synthetic descriptor:Lkotlinx/serialization/descriptors/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/c$i$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/c$i$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/model/c$i$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$i$a;

    .line 7
    .line 8
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 9
    .line 10
    const-string v2, "com.vungle.ads.internal.model.CommonRequestBody.RequestParam"

    .line 11
    .line 12
    const/4 v3, 0x6

    .line 13
    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/i0;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "placements"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "ad_size"

    .line 23
    .line 24
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    const-string v0, "ad_start_time"

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    const-string v0, "app_id"

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    const-string v0, "placement_reference_id"

    .line 38
    .line 39
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    const-string v0, "user"

    .line 43
    .line 44
    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->l(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    sput-object v1, Lcom/vungle/ads/internal/model/c$i$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    .line 48
    .line 49
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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/serialization/internal/f;

    .line 2
    .line 3
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lry/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v2, Lcom/vungle/ads/internal/model/c$b$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$b$a;

    .line 13
    .line 14
    invoke-static {v2}, Lry/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    sget-object v3, Lkotlinx/serialization/internal/b1;->a:Lkotlinx/serialization/internal/b1;

    .line 19
    .line 20
    invoke-static {v3}, Lry/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v1}, Lry/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {v1}, Lry/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-static {v1}, Lry/a;->s(Lkotlinx/serialization/b;)Lkotlinx/serialization/b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v6, 0x6

    .line 37
    new-array v6, v6, [Lkotlinx/serialization/b;

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    aput-object v0, v6, v7

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    aput-object v2, v6, v0

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    aput-object v3, v6, v0

    .line 47
    .line 48
    const/4 v0, 0x3

    .line 49
    aput-object v4, v6, v0

    .line 50
    .line 51
    const/4 v0, 0x4

    .line 52
    aput-object v5, v6, v0

    .line 53
    .line 54
    const/4 v0, 0x5

    .line 55
    aput-object v1, v6, v0

    .line 56
    .line 57
    return-object v6
.end method

.method public deserialize(Lsy/e;)Lcom/vungle/ads/internal/model/c$i;
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/model/c$i$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lsy/e;->b(Lkotlinx/serialization/descriptors/f;)Lsy/c;

    move-result-object v0

    invoke-interface {v0}, Lsy/c;->p()Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lkotlinx/serialization/internal/f;

    sget-object v10, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-direct {v2, v10}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    invoke-interface {v0, v1, v8, v2, v9}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v8, Lcom/vungle/ads/internal/model/c$b$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$b$a;

    invoke-interface {v0, v1, v7, v8, v9}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lkotlinx/serialization/internal/b1;->a:Lkotlinx/serialization/internal/b1;

    invoke-interface {v0, v1, v6, v8, v9}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v1, v4, v10, v9}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v5, v10, v9}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v1, v3, v10, v9}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v8, 0x3f

    move v9, v8

    goto/16 :goto_3

    :cond_0
    move v15, v7

    move v2, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    :goto_0
    if-eqz v15, :cond_1

    invoke-interface {v0, v1}, Lsy/c;->o(Lkotlinx/serialization/descriptors/f;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v8}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v8, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-interface {v0, v1, v3, v8, v14}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/lit8 v2, v2, 0x20

    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    :pswitch_1
    sget-object v8, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-interface {v0, v1, v5, v8, v13}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    or-int/lit8 v2, v2, 0x10

    goto :goto_1

    :pswitch_2
    sget-object v8, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-interface {v0, v1, v4, v8, v12}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    or-int/lit8 v2, v2, 0x8

    goto :goto_1

    :pswitch_3
    sget-object v8, Lkotlinx/serialization/internal/b1;->a:Lkotlinx/serialization/internal/b1;

    invoke-interface {v0, v1, v6, v8, v11}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    or-int/lit8 v2, v2, 0x4

    goto :goto_1

    :pswitch_4
    sget-object v8, Lcom/vungle/ads/internal/model/c$b$a;->INSTANCE:Lcom/vungle/ads/internal/model/c$b$a;

    invoke-interface {v0, v1, v7, v8, v10}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    or-int/lit8 v2, v2, 0x2

    goto :goto_1

    :pswitch_5
    new-instance v8, Lkotlinx/serialization/internal/f;

    sget-object v3, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-direct {v8, v3}, Lkotlinx/serialization/internal/f;-><init>(Lkotlinx/serialization/b;)V

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v8, v9}, Lsy/c;->n(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    or-int/lit8 v2, v2, 0x1

    move v8, v3

    :goto_2
    const/4 v3, 0x5

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x0

    move v8, v3

    move v15, v8

    goto :goto_2

    :cond_1
    move-object v7, v10

    move-object v6, v11

    move-object v4, v12

    move-object v5, v13

    move-object v3, v14

    move-object/from16 v17, v9

    move v9, v2

    move-object/from16 v2, v17

    :goto_3
    invoke-interface {v0, v1}, Lsy/c;->c(Lkotlinx/serialization/descriptors/f;)V

    new-instance v0, Lcom/vungle/ads/internal/model/c$i;

    move-object v10, v2

    check-cast v10, Ljava/util/List;

    move-object v11, v7

    check-cast v11, Lcom/vungle/ads/internal/model/c$b;

    move-object v12, v6

    check-cast v12, Ljava/lang/Long;

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    move-object v14, v5

    check-cast v14, Ljava/lang/String;

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    const/16 v16, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/vungle/ads/internal/model/c$i;-><init>(ILjava/util/List;Lcom/vungle/ads/internal/model/c$b;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/w1;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
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
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/c$i$a;->deserialize(Lsy/e;)Lcom/vungle/ads/internal/model/c$i;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/model/c$i$a;->descriptor:Lkotlinx/serialization/descriptors/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public serialize(Lsy/f;Lcom/vungle/ads/internal/model/c$i;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/model/c$i$a;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v0

    invoke-interface {p1, v0}, Lsy/f;->b(Lkotlinx/serialization/descriptors/f;)Lsy/d;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/vungle/ads/internal/model/c$i;->write$Self(Lcom/vungle/ads/internal/model/c$i;Lsy/d;Lkotlinx/serialization/descriptors/f;)V

    invoke-interface {p1, v0}, Lsy/d;->c(Lkotlinx/serialization/descriptors/f;)V

    return-void
.end method

.method public bridge synthetic serialize(Lsy/f;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/vungle/ads/internal/model/c$i;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/model/c$i$a;->serialize(Lsy/f;Lcom/vungle/ads/internal/model/c$i;)V

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
