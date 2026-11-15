.class public abstract Lio/appmetrica/analytics/impl/Cf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;

.field public static final b:Landroid/util/SparseArray;

.field public static final c:Ljava/util/Map;

.field public static final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lio/appmetrica/analytics/impl/zk;->b:Lio/appmetrica/analytics/impl/zk;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lio/appmetrica/analytics/impl/zk;->c:Lio/appmetrica/analytics/impl/zk;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/Cf;->a:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sput-object v0, Lio/appmetrica/analytics/impl/Cf;->b:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->d:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lio/appmetrica/analytics/impl/hb;->e:Lio/appmetrica/analytics/impl/hb;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lio/appmetrica/analytics/impl/hb;->o:Lio/appmetrica/analytics/impl/hb;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lio/appmetrica/analytics/impl/hb;->g:Lio/appmetrica/analytics/impl/hb;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lio/appmetrica/analytics/impl/hb;->t:Lio/appmetrica/analytics/impl/hb;

    const/16 v6, 0x1a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lio/appmetrica/analytics/impl/hb;->s:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lio/appmetrica/analytics/impl/hb;->r:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lio/appmetrica/analytics/impl/hb;->y:Lio/appmetrica/analytics/impl/hb;

    const/16 v10, 0x19

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lio/appmetrica/analytics/impl/hb;->x:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lio/appmetrica/analytics/impl/hb;->w:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lio/appmetrica/analytics/impl/hb;->u:Lio/appmetrica/analytics/impl/hb;

    const/16 v12, 0x1b

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lio/appmetrica/analytics/impl/hb;->v:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lio/appmetrica/analytics/impl/hb;->A:Lio/appmetrica/analytics/impl/hb;

    const/16 v14, 0xd

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lio/appmetrica/analytics/impl/hb;->B:Lio/appmetrica/analytics/impl/hb;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lio/appmetrica/analytics/impl/hb;->E:Lio/appmetrica/analytics/impl/hb;

    const/16 v16, 0x10

    move-object/from16 v17, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lio/appmetrica/analytics/impl/hb;->F:Lio/appmetrica/analytics/impl/hb;

    const/16 v16, 0x11

    move-object/from16 v18, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->G:Lio/appmetrica/analytics/impl/hb;

    const/16 v16, 0x12

    move-object/from16 v19, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lio/appmetrica/analytics/impl/hb;->H:Lio/appmetrica/analytics/impl/hb;

    const/16 v16, 0x13

    move-object/from16 v20, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->i:Lio/appmetrica/analytics/impl/hb;

    const/16 v16, 0x14

    move-object/from16 v21, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lio/appmetrica/analytics/impl/hb;->k:Lio/appmetrica/analytics/impl/hb;

    const/16 v16, 0x15

    move-object/from16 v22, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->l:Lio/appmetrica/analytics/impl/hb;

    const/16 v16, 0x28

    move-object/from16 v23, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lio/appmetrica/analytics/impl/hb;->m:Lio/appmetrica/analytics/impl/hb;

    const/16 v16, 0x23

    move-object/from16 v24, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->I:Lio/appmetrica/analytics/impl/hb;

    const/16 v16, 0x1d

    move-object/from16 v25, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->J:Lio/appmetrica/analytics/impl/hb;

    const/16 v12, 0x26

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lio/appmetrica/analytics/impl/hb;->h:Lio/appmetrica/analytics/impl/hb;

    const/16 v16, 0x2a

    move-object/from16 v26, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/Cf;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/B8;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/B8;-><init>()V

    move-object/from16 v16, v12

    new-instance v12, Lio/appmetrica/analytics/impl/H8;

    move-object/from16 v27, v15

    new-instance v15, Lio/appmetrica/analytics/impl/L8;

    invoke-direct {v15}, Lio/appmetrica/analytics/impl/L8;-><init>()V

    invoke-direct {v12, v15}, Lio/appmetrica/analytics/impl/H8;-><init>(Lio/appmetrica/analytics/impl/L8;)V

    new-instance v15, Lio/appmetrica/analytics/impl/C8;

    invoke-direct {v15}, Lio/appmetrica/analytics/impl/C8;-><init>()V

    move-object/from16 v28, v14

    new-instance v14, Lio/appmetrica/analytics/impl/w3;

    move-object/from16 v29, v9

    new-instance v9, Lio/appmetrica/analytics/impl/L8;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/L8;-><init>()V

    invoke-direct {v14, v9}, Lio/appmetrica/analytics/impl/w3;-><init>(Lio/appmetrica/analytics/impl/L8;)V

    new-instance v9, Lio/appmetrica/analytics/impl/mn;

    move-object/from16 v30, v8

    new-instance v8, Lio/appmetrica/analytics/impl/L8;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/L8;-><init>()V

    invoke-direct {v9, v8}, Lio/appmetrica/analytics/impl/mn;-><init>(Lio/appmetrica/analytics/impl/L8;)V

    new-instance v8, Lio/appmetrica/analytics/impl/yf;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/yf;-><init>()V

    move-object/from16 v31, v7

    invoke-static {}, Lio/appmetrica/analytics/impl/a9;->a()Lio/appmetrica/analytics/impl/Z8;

    move-result-object v7

    iput-object v8, v7, Lio/appmetrica/analytics/impl/Z8;->b:Lio/appmetrica/analytics/impl/Qn;

    iput-object v8, v7, Lio/appmetrica/analytics/impl/Z8;->c:Lio/appmetrica/analytics/impl/D8;

    new-instance v8, Lio/appmetrica/analytics/impl/a9;

    invoke-direct {v8, v7}, Lio/appmetrica/analytics/impl/a9;-><init>(Lio/appmetrica/analytics/impl/Z8;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/a9;->a()Lio/appmetrica/analytics/impl/Z8;

    move-result-object v7

    iput-object v12, v7, Lio/appmetrica/analytics/impl/Z8;->b:Lio/appmetrica/analytics/impl/Qn;

    new-instance v12, Lio/appmetrica/analytics/impl/a9;

    invoke-direct {v12, v7}, Lio/appmetrica/analytics/impl/a9;-><init>(Lio/appmetrica/analytics/impl/Z8;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/a9;->a()Lio/appmetrica/analytics/impl/Z8;

    move-result-object v7

    iput-object v14, v7, Lio/appmetrica/analytics/impl/Z8;->b:Lio/appmetrica/analytics/impl/Qn;

    move-object/from16 v32, v14

    new-instance v14, Lio/appmetrica/analytics/impl/a9;

    invoke-direct {v14, v7}, Lio/appmetrica/analytics/impl/a9;-><init>(Lio/appmetrica/analytics/impl/Z8;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/a9;->a()Lio/appmetrica/analytics/impl/Z8;

    move-result-object v7

    iput-object v9, v7, Lio/appmetrica/analytics/impl/Z8;->b:Lio/appmetrica/analytics/impl/Qn;

    new-instance v9, Lio/appmetrica/analytics/impl/a9;

    invoke-direct {v9, v7}, Lio/appmetrica/analytics/impl/a9;-><init>(Lio/appmetrica/analytics/impl/Z8;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/a9;->a()Lio/appmetrica/analytics/impl/Z8;

    move-result-object v7

    iput-object v1, v7, Lio/appmetrica/analytics/impl/Z8;->a:Lio/appmetrica/analytics/impl/wd;

    move-object/from16 v33, v9

    new-instance v9, Lio/appmetrica/analytics/impl/a9;

    invoke-direct {v9, v7}, Lio/appmetrica/analytics/impl/a9;-><init>(Lio/appmetrica/analytics/impl/Z8;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/a9;->a()Lio/appmetrica/analytics/impl/Z8;

    move-result-object v7

    move-object/from16 v34, v9

    new-instance v9, Lio/appmetrica/analytics/impl/Rn;

    move-object/from16 v35, v5

    new-instance v5, Lio/appmetrica/analytics/impl/H8;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/H8;-><init>()V

    invoke-direct {v9, v5}, Lio/appmetrica/analytics/impl/Rn;-><init>(Lio/appmetrica/analytics/impl/H8;)V

    iput-object v9, v7, Lio/appmetrica/analytics/impl/Z8;->b:Lio/appmetrica/analytics/impl/Qn;

    new-instance v5, Lio/appmetrica/analytics/impl/a9;

    invoke-direct {v5, v7}, Lio/appmetrica/analytics/impl/a9;-><init>(Lio/appmetrica/analytics/impl/Z8;)V

    invoke-virtual {v0, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lio/appmetrica/analytics/impl/a9;->a()Lio/appmetrica/analytics/impl/Z8;

    move-result-object v2

    new-instance v7, Lio/appmetrica/analytics/impl/Af;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/Af;-><init>()V

    iput-object v7, v2, Lio/appmetrica/analytics/impl/Z8;->b:Lio/appmetrica/analytics/impl/Qn;

    new-instance v7, Lio/appmetrica/analytics/impl/a9;

    invoke-direct {v7, v2}, Lio/appmetrica/analytics/impl/a9;-><init>(Lio/appmetrica/analytics/impl/Z8;)V

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lio/appmetrica/analytics/impl/a9;->a()Lio/appmetrica/analytics/impl/Z8;

    move-result-object v2

    iput-object v1, v2, Lio/appmetrica/analytics/impl/Z8;->a:Lio/appmetrica/analytics/impl/wd;

    iput-object v15, v2, Lio/appmetrica/analytics/impl/Z8;->b:Lio/appmetrica/analytics/impl/Qn;

    new-instance v1, Lio/appmetrica/analytics/impl/c8;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/c8;-><init>()V

    iput-object v1, v2, Lio/appmetrica/analytics/impl/Z8;->e:Lio/appmetrica/analytics/impl/ac;

    new-instance v1, Lio/appmetrica/analytics/impl/d8;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/d8;-><init>()V

    iput-object v1, v2, Lio/appmetrica/analytics/impl/Z8;->f:Lio/appmetrica/analytics/impl/Md;

    new-instance v1, Lio/appmetrica/analytics/impl/a9;

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/a9;-><init>(Lio/appmetrica/analytics/impl/Z8;)V

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lio/appmetrica/analytics/impl/a9;->a()Lio/appmetrica/analytics/impl/Z8;

    move-result-object v1

    new-instance v2, Lio/appmetrica/analytics/impl/B8;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/B8;-><init>()V

    iput-object v2, v1, Lio/appmetrica/analytics/impl/Z8;->a:Lio/appmetrica/analytics/impl/wd;

    move-object/from16 v2, v32

    iput-object v2, v1, Lio/appmetrica/analytics/impl/Z8;->b:Lio/appmetrica/analytics/impl/Qn;

    new-instance v2, Lio/appmetrica/analytics/impl/a9;

    invoke-direct {v2, v1}, Lio/appmetrica/analytics/impl/a9;-><init>(Lio/appmetrica/analytics/impl/Z8;)V

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->C:Lio/appmetrica/analytics/impl/hb;

    invoke-static {}, Lio/appmetrica/analytics/impl/a9;->a()Lio/appmetrica/analytics/impl/Z8;

    move-result-object v2

    new-instance v3, Lio/appmetrica/analytics/impl/Bf;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/Bf;-><init>()V

    iput-object v3, v2, Lio/appmetrica/analytics/impl/Z8;->d:Lio/appmetrica/analytics/impl/z9;

    new-instance v3, Lio/appmetrica/analytics/impl/a9;

    invoke-direct {v3, v2}, Lio/appmetrica/analytics/impl/a9;-><init>(Lio/appmetrica/analytics/impl/Z8;)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v20

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/Cf;->d:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lio/appmetrica/analytics/impl/o9;
    .locals 5

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/o9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/o9;-><init>()V

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lio/appmetrica/analytics/impl/o9;->a:J

    .line 3
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    check-cast p0, Ljava/util/GregorianCalendar;

    .line 5
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 6
    invoke-virtual {p0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    .line 7
    iput p0, v0, Lio/appmetrica/analytics/impl/o9;->b:I

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    iput-wide p0, v0, Lio/appmetrica/analytics/impl/o9;->c:J

    :cond_1
    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lio/appmetrica/analytics/impl/o9;->d:Z

    :cond_2
    return-object v0
.end method

.method public static a(Lio/appmetrica/analytics/impl/m9;)V
    .locals 3

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/m9;->c:[Lio/appmetrica/analytics/impl/k9;

    if-eqz p0, :cond_0

    .line 11
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
