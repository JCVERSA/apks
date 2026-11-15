.class public final Lddc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lod4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lddc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lddc$a;

.field public static final synthetic b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lddc$a;

    invoke-direct {v0}, Lddc$a;-><init>()V

    sput-object v0, Lddc$a;->a:Lddc$a;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.yandex.div.internal.viewpool.ViewPreCreationProfile"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lod4;I)V

    const-string v0, "id"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "text"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "image"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "gifImage"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "overlapContainer"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "linearContainer"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "wrapContainer"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "grid"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "gallery"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "pager"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "tab"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "state"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "custom"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "indicator"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "slider"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "input"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "select"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "video"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "switch"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lddc$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhu1;)Lddc;
    .locals 51

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lddc$a;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lhu1;->b(Lkotlinx/serialization/descriptors/a;)Lfd1;

    move-result-object v0

    invoke-interface {v0}, Lfd1;->j()Z

    move-result v2

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x3

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lc0a;->a:Lc0a;

    invoke-interface {v0, v1, v7, v2, v8}, Lfd1;->r(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v7, Lrd8$a;->a:Lrd8$a;

    invoke-interface {v0, v1, v6, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v1, v5, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v1, v15, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v0, v1, v3, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v14, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v0, v1, v13, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v0, v1, v12, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v1, v4, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v1, v11, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v1, v10, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v1, v9, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v21, v2

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    const/16 v2, 0x11

    invoke-interface {v0, v1, v2, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 p1, v6

    const/16 v6, 0x12

    invoke-interface {v0, v1, v6, v7, v8}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const v7, 0x7ffff

    move-object/from16 v28, v6

    move/from16 v30, v7

    move-object v7, v15

    move-object/from16 v6, p1

    move-object v15, v3

    move-object v3, v2

    move-object/from16 v2, v21

    goto/16 :goto_6

    :cond_0
    move v2, v6

    const/16 v6, 0x12

    move/from16 v30, v2

    move-object v2, v8

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v9, v5

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v22, v15

    move-object/from16 v24, v22

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move v8, v7

    move-object/from16 v7, v29

    :goto_0
    if-eqz v30, :cond_1

    invoke-interface {v0, v1}, Lfd1;->v(Lkotlinx/serialization/descriptors/a;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v6}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v6, Lrd8$a;->a:Lrd8$a;

    move-object/from16 v32, v2

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2, v6, v7}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/high16 v6, 0x40000

    or-int/2addr v8, v6

    move v6, v2

    :goto_1
    move-object/from16 v2, v32

    goto :goto_0

    :pswitch_1
    move-object/from16 v32, v2

    const/16 v2, 0x12

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    move-object/from16 v2, v28

    move-object/from16 v28, v7

    const/16 v7, 0x11

    invoke-interface {v0, v1, v7, v6, v2}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/high16 v6, 0x20000

    or-int/2addr v8, v6

    move-object/from16 v7, v28

    const/16 v6, 0x12

    move-object/from16 v28, v2

    goto :goto_1

    :pswitch_2
    move-object/from16 v32, v2

    move-object/from16 v2, v28

    move-object/from16 v28, v7

    const/16 v7, 0x11

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    move-object/from16 v16, v2

    move-object/from16 v7, v27

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2, v6, v7}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    const/high16 v6, 0x10000

    or-int/2addr v8, v6

    :goto_2
    move-object/from16 v7, v28

    move-object/from16 v2, v32

    :goto_3
    const/16 v6, 0x12

    :goto_4
    move-object/from16 v28, v16

    goto :goto_0

    :pswitch_3
    move-object/from16 v32, v2

    move-object/from16 v16, v28

    const/16 v2, 0x10

    move-object/from16 v28, v7

    move-object/from16 v7, v27

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    move-object/from16 v17, v7

    move-object/from16 v2, v26

    const/16 v7, 0xf

    invoke-interface {v0, v1, v7, v6, v2}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    const v2, 0x8000

    or-int/2addr v8, v2

    move-object/from16 v27, v17

    goto :goto_2

    :pswitch_4
    move-object/from16 v32, v2

    move-object/from16 v2, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    move-object/from16 v28, v7

    const/16 v7, 0xf

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    move-object/from16 v18, v2

    move-object/from16 v7, v25

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v6, v7}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    or-int/lit16 v8, v8, 0x4000

    move-object/from16 v26, v18

    goto :goto_2

    :pswitch_5
    move-object/from16 v32, v2

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    const/16 v2, 0xe

    move-object/from16 v28, v7

    move-object/from16 v7, v25

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    move-object/from16 v19, v7

    move-object/from16 v2, v24

    const/16 v7, 0xd

    invoke-interface {v0, v1, v7, v6, v2}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    or-int/lit16 v8, v8, 0x2000

    move-object/from16 v25, v19

    goto :goto_2

    :pswitch_6
    move-object/from16 v32, v2

    move-object/from16 v2, v24

    move-object/from16 v19, v25

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    move-object/from16 v28, v7

    const/16 v7, 0xd

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    const/16 v7, 0xc

    invoke-interface {v0, v1, v7, v6, v9}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    or-int/lit16 v8, v8, 0x1000

    goto :goto_2

    :pswitch_7
    move-object/from16 v32, v2

    move-object/from16 v2, v24

    move-object/from16 v19, v25

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    move-object/from16 v28, v7

    const/16 v7, 0xc

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    const/16 v7, 0xb

    invoke-interface {v0, v1, v7, v6, v10}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    or-int/lit16 v8, v8, 0x800

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v32, v2

    move-object/from16 v2, v24

    move-object/from16 v19, v25

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    move-object/from16 v28, v7

    const/16 v7, 0xb

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    const/16 v7, 0xa

    invoke-interface {v0, v1, v7, v6, v11}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    or-int/lit16 v8, v8, 0x400

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v32, v2

    move-object/from16 v2, v24

    move-object/from16 v19, v25

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    move-object/from16 v28, v7

    const/16 v7, 0xa

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    const/16 v7, 0x9

    invoke-interface {v0, v1, v7, v6, v4}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    or-int/lit16 v8, v8, 0x200

    goto/16 :goto_2

    :pswitch_a
    move-object/from16 v32, v2

    move-object/from16 v2, v24

    move-object/from16 v19, v25

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    move-object/from16 v28, v7

    const/16 v7, 0x9

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    const/16 v7, 0x8

    invoke-interface {v0, v1, v7, v6, v12}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    or-int/lit16 v8, v8, 0x100

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v32, v2

    move-object/from16 v2, v24

    move-object/from16 v19, v25

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    move-object/from16 v28, v7

    const/16 v7, 0x8

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    const/4 v7, 0x7

    invoke-interface {v0, v1, v7, v6, v13}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    or-int/lit16 v8, v8, 0x80

    goto/16 :goto_2

    :pswitch_c
    move-object/from16 v32, v2

    move-object/from16 v2, v24

    move-object/from16 v19, v25

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    move-object/from16 v28, v7

    const/4 v7, 0x7

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    const/4 v7, 0x6

    invoke-interface {v0, v1, v7, v6, v14}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    or-int/lit8 v8, v8, 0x40

    goto/16 :goto_2

    :pswitch_d
    move-object/from16 v32, v2

    move-object/from16 v2, v24

    move-object/from16 v19, v25

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    move-object/from16 v28, v7

    const/4 v7, 0x6

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    const/4 v7, 0x5

    invoke-interface {v0, v1, v7, v6, v3}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    or-int/lit8 v8, v8, 0x20

    goto/16 :goto_2

    :pswitch_e
    move-object/from16 v32, v2

    move-object/from16 v2, v24

    move-object/from16 v19, v25

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    move-object/from16 v28, v7

    const/4 v7, 0x5

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    const/4 v7, 0x4

    invoke-interface {v0, v1, v7, v6, v15}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    or-int/lit8 v8, v8, 0x10

    goto/16 :goto_2

    :pswitch_f
    move-object/from16 v32, v2

    move-object/from16 v2, v24

    move-object/from16 v19, v25

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    move-object/from16 v28, v7

    const/4 v7, 0x4

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    const/4 v7, 0x3

    invoke-interface {v0, v1, v7, v6, v5}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    or-int/lit8 v8, v8, 0x8

    goto/16 :goto_2

    :pswitch_10
    move-object/from16 v32, v2

    move-object/from16 v2, v24

    move-object/from16 v19, v25

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    move-object/from16 v28, v7

    const/4 v7, 0x3

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    move-object/from16 v23, v2

    move-object/from16 v2, v32

    const/4 v7, 0x2

    invoke-interface {v0, v1, v7, v6, v2}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit8 v8, v8, 0x4

    move-object/from16 v24, v23

    :goto_5
    move-object/from16 v7, v28

    goto/16 :goto_3

    :pswitch_11
    move-object/from16 v23, v24

    move-object/from16 v19, v25

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    move-object/from16 v28, v7

    const/4 v7, 0x2

    sget-object v6, Lrd8$a;->a:Lrd8$a;

    move-object/from16 v21, v2

    move-object/from16 v2, v29

    const/4 v7, 0x1

    invoke-interface {v0, v1, v7, v6, v2}, Lfd1;->A(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    or-int/lit8 v8, v8, 0x2

    move-object/from16 v2, v21

    goto :goto_5

    :pswitch_12
    move-object/from16 v21, v2

    move-object/from16 v23, v24

    move-object/from16 v19, v25

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    move-object/from16 v2, v29

    move-object/from16 v28, v7

    const/4 v7, 0x1

    sget-object v6, Lc0a;->a:Lc0a;

    move-object/from16 v7, v22

    move-object/from16 v22, v2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v6, v7}, Lfd1;->r(Lkotlinx/serialization/descriptors/a;ILk92;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    or-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v21

    move-object/from16 v29, v22

    move-object/from16 v7, v28

    move-object/from16 v22, v6

    move-object/from16 v28, v16

    const/16 v6, 0x12

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v21, v2

    move-object/from16 v23, v24

    move-object/from16 v19, v25

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    const/4 v2, 0x0

    move-object/from16 v28, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v29

    move/from16 v30, v2

    move-object/from16 v2, v21

    const/16 v6, 0x12

    move-object/from16 v22, v7

    move-object/from16 v7, v28

    goto/16 :goto_4

    :cond_1
    move-object/from16 v21, v2

    move-object/from16 v23, v24

    move-object/from16 v19, v25

    move-object/from16 v18, v26

    move-object/from16 v17, v27

    move-object/from16 v16, v28

    move-object/from16 v28, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v29

    move-object v2, v7

    move/from16 v30, v8

    move-object/from16 v20, v9

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v6, v22

    move-object v11, v4

    move-object v7, v5

    move-object v4, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v5, v21

    move-object v14, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v23

    :goto_6
    invoke-interface {v0, v1}, Lfd1;->c(Lkotlinx/serialization/descriptors/a;)V

    new-instance v0, Lddc;

    move-object/from16 v29, v0

    move-object/from16 v31, v2

    check-cast v31, Ljava/lang/String;

    move-object/from16 v32, v6

    check-cast v32, Lrd8;

    move-object/from16 v33, v5

    check-cast v33, Lrd8;

    move-object/from16 v34, v7

    check-cast v34, Lrd8;

    move-object/from16 v35, v15

    check-cast v35, Lrd8;

    move-object/from16 v36, v14

    check-cast v36, Lrd8;

    move-object/from16 v37, v13

    check-cast v37, Lrd8;

    move-object/from16 v38, v12

    check-cast v38, Lrd8;

    move-object/from16 v39, v4

    check-cast v39, Lrd8;

    move-object/from16 v40, v11

    check-cast v40, Lrd8;

    move-object/from16 v41, v10

    check-cast v41, Lrd8;

    move-object/from16 v42, v9

    check-cast v42, Lrd8;

    move-object/from16 v43, v20

    check-cast v43, Lrd8;

    move-object/from16 v44, v19

    check-cast v44, Lrd8;

    move-object/from16 v45, v18

    check-cast v45, Lrd8;

    move-object/from16 v46, v17

    check-cast v46, Lrd8;

    move-object/from16 v47, v16

    check-cast v47, Lrd8;

    move-object/from16 v48, v3

    check-cast v48, Lrd8;

    move-object/from16 v49, v28

    check-cast v49, Lrd8;

    const/16 v50, 0x0

    invoke-direct/range {v29 .. v50}, Lddc;-><init>(ILjava/lang/String;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lrd8;Lmd9;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lca3;Lddc;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lddc$a;->getDescriptor()Lkotlinx/serialization/descriptors/a;

    move-result-object p0

    invoke-interface {p1, p0}, Lca3;->b(Lkotlinx/serialization/descriptors/a;)Lid1;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lddc;->v(Lddc;Lid1;Lkotlinx/serialization/descriptors/a;)V

    invoke-interface {p1, p0}, Lid1;->c(Lkotlinx/serialization/descriptors/a;)V

    return-void
.end method

.method public childSerializers()[Lef5;
    .locals 2

    sget-object p0, Lc0a;->a:Lc0a;

    invoke-static {p0}, Lqn0;->t(Lef5;)Lef5;

    move-result-object p0

    const/16 v0, 0x13

    new-array v0, v0, [Lef5;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    sget-object p0, Lrd8$a;->a:Lrd8$a;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const/4 v1, 0x4

    aput-object p0, v0, v1

    const/4 v1, 0x5

    aput-object p0, v0, v1

    const/4 v1, 0x6

    aput-object p0, v0, v1

    const/4 v1, 0x7

    aput-object p0, v0, v1

    const/16 v1, 0x8

    aput-object p0, v0, v1

    const/16 v1, 0x9

    aput-object p0, v0, v1

    const/16 v1, 0xa

    aput-object p0, v0, v1

    const/16 v1, 0xb

    aput-object p0, v0, v1

    const/16 v1, 0xc

    aput-object p0, v0, v1

    const/16 v1, 0xd

    aput-object p0, v0, v1

    const/16 v1, 0xe

    aput-object p0, v0, v1

    const/16 v1, 0xf

    aput-object p0, v0, v1

    const/16 v1, 0x10

    aput-object p0, v0, v1

    const/16 v1, 0x11

    aput-object p0, v0, v1

    const/16 v1, 0x12

    aput-object p0, v0, v1

    return-object v0
.end method

.method public bridge synthetic deserialize(Lhu1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lddc$a;->a(Lhu1;)Lddc;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/a;
    .locals 0

    sget-object p0, Lddc$a;->b:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lca3;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lddc;

    invoke-virtual {p0, p1, p2}, Lddc$a;->b(Lca3;Lddc;)V

    return-void
.end method

.method public typeParametersSerializers()[Lef5;
    .locals 0

    invoke-static {p0}, Lod4$a;->a(Lod4;)[Lef5;

    move-result-object p0

    return-object p0
.end method
