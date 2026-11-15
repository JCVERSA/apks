.class public Luy8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final A:Luy8;

.field public static final B:Luy8;

.field public static final C:Luy8;

.field public static final D:Luy8;

.field public static final E:Luy8;

.field public static final F:Luy8;

.field public static final G:Luy8;

.field public static final H:Luy8;

.field public static final I:Luy8;

.field public static final J:Luy8;

.field public static final K:Luy8;

.field public static L:Ljava/util/Map;

.field public static final b:Luy8;

.field public static final c:Luy8;

.field public static final d:Luy8;

.field public static final e:Luy8;

.field public static final f:Luy8;

.field public static final g:Luy8;

.field public static final h:Luy8;

.field public static final i:Luy8;

.field public static final j:Luy8;

.field public static final k:Luy8;

.field public static final l:Luy8;

.field public static final m:Luy8;

.field public static final n:Luy8;

.field public static final o:Luy8;

.field public static final p:Luy8;

.field public static final q:Luy8;

.field public static final r:Luy8;

.field public static final s:Luy8;

.field public static final t:Luy8;

.field public static final u:Luy8;

.field public static final v:Luy8;

.field public static final w:Luy8;

.field public static final x:Luy8;

.field public static final y:Luy8;

.field public static final z:Luy8;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 50

    new-instance v0, Luy8;

    const-string v1, "sha2-128f-robust"

    invoke-direct {v0, v1}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v0, Luy8;->b:Luy8;

    new-instance v1, Luy8;

    const-string v2, "sha2-128s-robust"

    invoke-direct {v1, v2}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v1, Luy8;->c:Luy8;

    new-instance v2, Luy8;

    const-string v3, "sha2-192f-robust"

    invoke-direct {v2, v3}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v2, Luy8;->d:Luy8;

    new-instance v3, Luy8;

    const-string v4, "sha2-192s-robust"

    invoke-direct {v3, v4}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v3, Luy8;->e:Luy8;

    new-instance v4, Luy8;

    const-string v5, "sha2-256f-robust"

    invoke-direct {v4, v5}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v4, Luy8;->f:Luy8;

    new-instance v5, Luy8;

    const-string v6, "sha2-256s-robust"

    invoke-direct {v5, v6}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v5, Luy8;->g:Luy8;

    new-instance v6, Luy8;

    const-string v7, "sha2-128s"

    invoke-direct {v6, v7}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v6, Luy8;->h:Luy8;

    new-instance v8, Luy8;

    const-string v9, "sha2-128f"

    invoke-direct {v8, v9}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v8, Luy8;->i:Luy8;

    new-instance v10, Luy8;

    const-string v11, "sha2-192f"

    invoke-direct {v10, v11}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v10, Luy8;->j:Luy8;

    new-instance v12, Luy8;

    const-string v13, "sha2-192s"

    invoke-direct {v12, v13}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v12, Luy8;->k:Luy8;

    new-instance v14, Luy8;

    const-string v15, "sha2-256f"

    invoke-direct {v14, v15}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v14, Luy8;->l:Luy8;

    move-object/from16 v16, v15

    new-instance v15, Luy8;

    move-object/from16 v17, v13

    const-string v13, "sha2-256s"

    invoke-direct {v15, v13}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v15, Luy8;->m:Luy8;

    move-object/from16 v18, v13

    new-instance v13, Luy8;

    move-object/from16 v19, v11

    const-string v11, "shake-128f-robust"

    invoke-direct {v13, v11}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v13, Luy8;->n:Luy8;

    new-instance v11, Luy8;

    move-object/from16 v20, v13

    const-string v13, "shake-128s-robust"

    invoke-direct {v11, v13}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v11, Luy8;->o:Luy8;

    new-instance v13, Luy8;

    move-object/from16 v21, v11

    const-string v11, "shake-192f-robust"

    invoke-direct {v13, v11}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v13, Luy8;->p:Luy8;

    new-instance v11, Luy8;

    move-object/from16 v22, v13

    const-string v13, "shake-192s-robust"

    invoke-direct {v11, v13}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v11, Luy8;->q:Luy8;

    new-instance v13, Luy8;

    move-object/from16 v23, v11

    const-string v11, "shake-256f-robust"

    invoke-direct {v13, v11}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v13, Luy8;->r:Luy8;

    new-instance v11, Luy8;

    move-object/from16 v24, v13

    const-string v13, "shake-256s-robust"

    invoke-direct {v11, v13}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v11, Luy8;->s:Luy8;

    new-instance v13, Luy8;

    move-object/from16 v25, v11

    const-string v11, "shake-128f"

    invoke-direct {v13, v11}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v13, Luy8;->t:Luy8;

    move-object/from16 v26, v11

    new-instance v11, Luy8;

    move-object/from16 v27, v13

    const-string v13, "shake-128s"

    invoke-direct {v11, v13}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v11, Luy8;->u:Luy8;

    move-object/from16 v28, v13

    new-instance v13, Luy8;

    move-object/from16 v29, v11

    const-string v11, "shake-192f"

    invoke-direct {v13, v11}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v13, Luy8;->v:Luy8;

    move-object/from16 v30, v11

    new-instance v11, Luy8;

    move-object/from16 v31, v13

    const-string v13, "shake-192s"

    invoke-direct {v11, v13}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v11, Luy8;->w:Luy8;

    move-object/from16 v32, v13

    new-instance v13, Luy8;

    move-object/from16 v33, v11

    const-string v11, "shake-256f"

    invoke-direct {v13, v11}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v13, Luy8;->x:Luy8;

    move-object/from16 v34, v11

    new-instance v11, Luy8;

    move-object/from16 v35, v13

    const-string v13, "shake-256s"

    invoke-direct {v11, v13}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v11, Luy8;->y:Luy8;

    move-object/from16 v36, v13

    new-instance v13, Luy8;

    move-object/from16 v37, v11

    const-string v11, "haraka-128f-robust"

    invoke-direct {v13, v11}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v13, Luy8;->z:Luy8;

    new-instance v11, Luy8;

    move-object/from16 v38, v13

    const-string v13, "haraka-128s-robust"

    invoke-direct {v11, v13}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v11, Luy8;->A:Luy8;

    new-instance v13, Luy8;

    move-object/from16 v39, v11

    const-string v11, "haraka-256f-robust"

    invoke-direct {v13, v11}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v13, Luy8;->B:Luy8;

    new-instance v11, Luy8;

    move-object/from16 v40, v13

    const-string v13, "haraka-256s-robust"

    invoke-direct {v11, v13}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v11, Luy8;->C:Luy8;

    new-instance v13, Luy8;

    move-object/from16 v41, v11

    const-string v11, "haraka-192f-robust"

    invoke-direct {v13, v11}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v13, Luy8;->D:Luy8;

    new-instance v11, Luy8;

    move-object/from16 v42, v13

    const-string v13, "haraka-192s-robust"

    invoke-direct {v11, v13}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v11, Luy8;->E:Luy8;

    new-instance v13, Luy8;

    move-object/from16 v43, v11

    const-string v11, "haraka-128f-simple"

    invoke-direct {v13, v11}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v13, Luy8;->F:Luy8;

    new-instance v11, Luy8;

    move-object/from16 v44, v13

    const-string v13, "haraka-128s-simple"

    invoke-direct {v11, v13}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v11, Luy8;->G:Luy8;

    new-instance v13, Luy8;

    move-object/from16 v45, v11

    const-string v11, "haraka-192f-simple"

    invoke-direct {v13, v11}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v13, Luy8;->H:Luy8;

    new-instance v11, Luy8;

    move-object/from16 v46, v13

    const-string v13, "haraka-192s-simple"

    invoke-direct {v11, v13}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v11, Luy8;->I:Luy8;

    new-instance v13, Luy8;

    move-object/from16 v47, v11

    const-string v11, "haraka-256f-simple"

    invoke-direct {v13, v11}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v13, Luy8;->J:Luy8;

    new-instance v11, Luy8;

    move-object/from16 v48, v13

    const-string v13, "haraka-256s-simple"

    invoke-direct {v11, v13}, Luy8;-><init>(Ljava/lang/String;)V

    sput-object v11, Luy8;->K:Luy8;

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sput-object v13, Luy8;->L:Ljava/util/Map;

    move-object/from16 v49, v11

    invoke-virtual {v0}, Luy8;->b()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v13, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual {v1}, Luy8;->b()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual {v2}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual {v3}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual {v4}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual {v5}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual {v6}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual {v8}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual {v10}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual {v12}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual {v14}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual {v15}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v20 .. v20}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v21 .. v21}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v22 .. v22}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v23 .. v23}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v24 .. v24}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v25 .. v25}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v27 .. v27}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v29 .. v29}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v31 .. v31}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v31

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v33 .. v33}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v33

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v35 .. v35}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v35

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v37 .. v37}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v7, v37

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    move-object/from16 v1, v30

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    move-object/from16 v1, v36

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v38 .. v38}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v39 .. v39}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v42 .. v42}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v43 .. v43}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v40 .. v40}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v41 .. v41}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v44 .. v44}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v45 .. v45}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v46 .. v46}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v47 .. v47}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v48 .. v48}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v48

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-virtual/range {v49 .. v49}, Luy8;->b()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v49

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luy8;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Luy8;
    .locals 1

    sget-object v0, Luy8;->L:Ljava/util/Map;

    invoke-static {p0}, Lu0a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luy8;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Luy8;->a:Ljava/lang/String;

    return-object p0
.end method
