.class public Lvy8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvy8$a;,
        Lvy8$b;,
        Lvy8$c;
    }
.end annotation


# static fields
.field public static final A:Lvy8;

.field public static final B:Lvy8;

.field public static final C:Lvy8;

.field public static final D:Lvy8;

.field public static final E:Lvy8;

.field public static final F:Lvy8;

.field public static final G:Lvy8;

.field public static final H:Lvy8;

.field public static final I:Lvy8;

.field public static final J:Lvy8;

.field public static final K:Lvy8;

.field public static final L:Lvy8;

.field public static final M:Lvy8;

.field public static final N:Ljava/util/Map;

.field public static final d:Lvy8;

.field public static final e:Lvy8;

.field public static final f:Lvy8;

.field public static final g:Lvy8;

.field public static final h:Lvy8;

.field public static final i:Lvy8;

.field public static final j:Lvy8;

.field public static final k:Lvy8;

.field public static final l:Lvy8;

.field public static final m:Lvy8;

.field public static final n:Lvy8;

.field public static final o:Lvy8;

.field public static final p:Lvy8;

.field public static final q:Lvy8;

.field public static final r:Lvy8;

.field public static final s:Lvy8;

.field public static final t:Lvy8;

.field public static final u:Lvy8;

.field public static final v:Lvy8;

.field public static final w:Lvy8;

.field public static final x:Lvy8;

.field public static final y:Lvy8;

.field public static final z:Lvy8;


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:Ljava/lang/String;

.field public final c:Lry8;


# direct methods
.method static constructor <clinit>()V
    .locals 48

    new-instance v1, Lvy8;

    move-object v0, v1

    const v2, 0x10101

    invoke-static {v2}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v11, Lvy8$b;

    const/16 v9, 0x21

    const/16 v10, 0x42

    const/4 v4, 0x1

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v7, 0x16

    const/4 v8, 0x6

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lvy8$b;-><init>(ZIIIIII)V

    const-string v3, "sha2-128f-robust"

    invoke-direct {v1, v2, v3, v11}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v1, Lvy8;->d:Lvy8;

    new-instance v2, Lvy8;

    move-object v1, v2

    const v3, 0x10102

    invoke-static {v3}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v12, Lvy8$b;

    const/16 v10, 0xe

    const/16 v11, 0x3f

    const/4 v5, 0x1

    const/16 v7, 0x10

    const/4 v8, 0x7

    const/16 v9, 0xc

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lvy8$b;-><init>(ZIIIIII)V

    const-string v4, "sha2-128s-robust"

    invoke-direct {v2, v3, v4, v12}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v2, Lvy8;->e:Lvy8;

    new-instance v3, Lvy8;

    move-object v2, v3

    const v4, 0x10103

    invoke-static {v4}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v13, Lvy8$b;

    const/16 v11, 0x21

    const/16 v12, 0x42

    const/4 v6, 0x1

    const/16 v7, 0x18

    const/16 v8, 0x10

    const/16 v9, 0x16

    const/16 v10, 0x8

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lvy8$b;-><init>(ZIIIIII)V

    const-string v5, "sha2-192f-robust"

    invoke-direct {v3, v4, v5, v13}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v3, Lvy8;->f:Lvy8;

    new-instance v4, Lvy8;

    move-object v3, v4

    const v5, 0x10104

    invoke-static {v5}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v14, Lvy8$b;

    const/16 v12, 0x11

    const/16 v13, 0x3f

    const/4 v7, 0x1

    const/16 v8, 0x18

    const/16 v9, 0x10

    const/4 v10, 0x7

    const/16 v11, 0xe

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lvy8$b;-><init>(ZIIIIII)V

    const-string v6, "sha2-192s-robust"

    invoke-direct {v4, v5, v6, v14}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v4, Lvy8;->g:Lvy8;

    new-instance v5, Lvy8;

    move-object v4, v5

    const v6, 0x10105

    invoke-static {v6}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v15, Lvy8$b;

    const/16 v13, 0x23

    const/16 v14, 0x44

    const/4 v8, 0x1

    const/16 v9, 0x20

    const/16 v10, 0x10

    const/16 v11, 0x11

    const/16 v12, 0x9

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lvy8$b;-><init>(ZIIIIII)V

    const-string v7, "sha2-256f-robust"

    invoke-direct {v5, v6, v7, v15}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v5, Lvy8;->h:Lvy8;

    new-instance v6, Lvy8;

    move-object v5, v6

    const v7, 0x10106

    invoke-static {v7}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v15, Lvy8$b;

    const/16 v14, 0x16

    const/16 v16, 0x40

    const/4 v9, 0x1

    const/16 v10, 0x20

    const/16 v11, 0x10

    const/16 v12, 0x8

    const/16 v13, 0xe

    move-object v8, v15

    move-object/from16 v36, v0

    move-object v0, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lvy8$b;-><init>(ZIIIIII)V

    const-string v8, "sha2-256s-robust"

    invoke-direct {v6, v7, v8, v0}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v6, Lvy8;->i:Lvy8;

    new-instance v0, Lvy8;

    move-object v6, v0

    const v7, 0x10201

    invoke-static {v7}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v15, Lvy8$b;

    const/16 v14, 0x21

    const/16 v16, 0x42

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/16 v12, 0x16

    const/4 v13, 0x6

    move-object v8, v15

    move-object/from16 v37, v1

    move-object v1, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lvy8$b;-><init>(ZIIIIII)V

    const-string v8, "sha2-128f"

    invoke-direct {v0, v7, v8, v1}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->j:Lvy8;

    new-instance v0, Lvy8;

    move-object v7, v0

    const v1, 0x10202

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v15, Lvy8$b;

    const/16 v14, 0xe

    const/16 v16, 0x3f

    const/4 v12, 0x7

    const/16 v13, 0xc

    move-object v8, v15

    move-object/from16 v38, v2

    move-object v2, v15

    move/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Lvy8$b;-><init>(ZIIIIII)V

    const-string v8, "sha2-128s"

    invoke-direct {v0, v1, v8, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->k:Lvy8;

    new-instance v0, Lvy8;

    move-object v8, v0

    const v1, 0x10203

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$b;

    const/16 v15, 0x21

    const/16 v16, 0x42

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/16 v12, 0x10

    const/16 v13, 0x16

    const/16 v14, 0x8

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lvy8$b;-><init>(ZIIIIII)V

    const-string v9, "sha2-192f"

    invoke-direct {v0, v1, v9, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->l:Lvy8;

    new-instance v0, Lvy8;

    move-object v9, v0

    const v1, 0x10204

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$b;

    const/16 v16, 0x11

    const/16 v17, 0x3f

    const/4 v11, 0x0

    const/16 v12, 0x18

    const/16 v13, 0x10

    const/4 v14, 0x7

    const/16 v15, 0xe

    move-object v10, v2

    invoke-direct/range {v10 .. v17}, Lvy8$b;-><init>(ZIIIIII)V

    const-string v10, "sha2-192s"

    invoke-direct {v0, v1, v10, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->m:Lvy8;

    new-instance v0, Lvy8;

    move-object v10, v0

    const v1, 0x10205

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$b;

    const/16 v17, 0x23

    const/16 v18, 0x44

    const/4 v12, 0x0

    const/16 v13, 0x20

    const/16 v14, 0x10

    const/16 v15, 0x11

    const/16 v16, 0x9

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lvy8$b;-><init>(ZIIIIII)V

    const-string v11, "sha2-256f"

    invoke-direct {v0, v1, v11, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->n:Lvy8;

    new-instance v0, Lvy8;

    move-object v11, v0

    const v1, 0x10206

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$b;

    const/16 v18, 0x16

    const/16 v19, 0x40

    const/4 v13, 0x0

    const/16 v14, 0x20

    const/16 v15, 0x10

    const/16 v16, 0x8

    const/16 v17, 0xe

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lvy8$b;-><init>(ZIIIIII)V

    const-string v12, "sha2-256s"

    invoke-direct {v0, v1, v12, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->o:Lvy8;

    new-instance v0, Lvy8;

    move-object v12, v0

    const v1, 0x20101

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$c;

    const/16 v19, 0x21

    const/16 v20, 0x42

    const/4 v14, 0x1

    const/16 v16, 0x10

    const/16 v17, 0x16

    const/16 v18, 0x6

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lvy8$c;-><init>(ZIIIIII)V

    const-string v13, "shake-128f-robust"

    invoke-direct {v0, v1, v13, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->p:Lvy8;

    new-instance v0, Lvy8;

    move-object v13, v0

    const v1, 0x20102

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$c;

    const/16 v20, 0xe

    const/16 v21, 0x3f

    const/4 v15, 0x1

    const/16 v17, 0x10

    const/16 v18, 0x7

    const/16 v19, 0xc

    move-object v14, v2

    invoke-direct/range {v14 .. v21}, Lvy8$c;-><init>(ZIIIIII)V

    const-string v14, "shake-128s-robust"

    invoke-direct {v0, v1, v14, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->q:Lvy8;

    new-instance v0, Lvy8;

    move-object v14, v0

    const v1, 0x20103

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$c;

    const/16 v21, 0x21

    const/16 v22, 0x42

    const/16 v16, 0x1

    const/16 v17, 0x18

    const/16 v18, 0x10

    const/16 v19, 0x16

    const/16 v20, 0x8

    move-object v15, v2

    invoke-direct/range {v15 .. v22}, Lvy8$c;-><init>(ZIIIIII)V

    const-string v15, "shake-192f-robust"

    invoke-direct {v0, v1, v15, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->r:Lvy8;

    new-instance v0, Lvy8;

    move-object v15, v0

    const v1, 0x20104

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$c;

    const/16 v22, 0x11

    const/16 v23, 0x3f

    const/16 v17, 0x1

    const/16 v18, 0x18

    const/16 v19, 0x10

    const/16 v20, 0x7

    const/16 v21, 0xe

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v23}, Lvy8$c;-><init>(ZIIIIII)V

    move-object/from16 v39, v3

    const-string v3, "shake-192s-robust"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->s:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v16, v0

    const v1, 0x20105

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$c;

    const/16 v23, 0x23

    const/16 v24, 0x44

    const/16 v18, 0x1

    const/16 v19, 0x20

    const/16 v20, 0x10

    const/16 v21, 0x11

    const/16 v22, 0x9

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v24}, Lvy8$c;-><init>(ZIIIIII)V

    const-string v3, "shake-256f-robust"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->t:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v17, v0

    const v1, 0x20106

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$c;

    const/16 v24, 0x16

    const/16 v25, 0x40

    const/16 v19, 0x1

    const/16 v20, 0x20

    const/16 v21, 0x10

    const/16 v22, 0x8

    const/16 v23, 0xe

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v25}, Lvy8$c;-><init>(ZIIIIII)V

    const-string v3, "shake-256s-robust"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->u:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v18, v0

    const v1, 0x20201

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$c;

    const/16 v25, 0x21

    const/16 v26, 0x42

    const/16 v20, 0x0

    const/16 v22, 0x10

    const/16 v23, 0x16

    const/16 v24, 0x6

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v26}, Lvy8$c;-><init>(ZIIIIII)V

    const-string v3, "shake-128f"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->v:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v19, v0

    const v1, 0x20202

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$c;

    const/16 v26, 0xe

    const/16 v27, 0x3f

    const/16 v21, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x7

    const/16 v25, 0xc

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v27}, Lvy8$c;-><init>(ZIIIIII)V

    const-string v3, "shake-128s"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->w:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v20, v0

    const v1, 0x20203

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$c;

    const/16 v27, 0x21

    const/16 v28, 0x42

    const/16 v22, 0x0

    const/16 v23, 0x18

    const/16 v24, 0x10

    const/16 v25, 0x16

    const/16 v26, 0x8

    move-object/from16 v21, v2

    invoke-direct/range {v21 .. v28}, Lvy8$c;-><init>(ZIIIIII)V

    const-string v3, "shake-192f"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->x:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v21, v0

    const v1, 0x20204

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$c;

    const/16 v28, 0x11

    const/16 v29, 0x3f

    const/16 v23, 0x0

    const/16 v24, 0x18

    const/16 v25, 0x10

    const/16 v26, 0x7

    const/16 v27, 0xe

    move-object/from16 v22, v2

    invoke-direct/range {v22 .. v29}, Lvy8$c;-><init>(ZIIIIII)V

    const-string v3, "shake-192s"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->y:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v22, v0

    const v1, 0x20205

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$c;

    const/16 v29, 0x23

    const/16 v30, 0x44

    const/16 v24, 0x0

    const/16 v25, 0x20

    const/16 v26, 0x10

    const/16 v27, 0x11

    const/16 v28, 0x9

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v30}, Lvy8$c;-><init>(ZIIIIII)V

    const-string v3, "shake-256f"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->z:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v23, v0

    const v1, 0x20206

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$c;

    const/16 v30, 0x16

    const/16 v31, 0x40

    const/16 v25, 0x0

    const/16 v26, 0x20

    const/16 v27, 0x10

    const/16 v28, 0x8

    const/16 v29, 0xe

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v31}, Lvy8$c;-><init>(ZIIIIII)V

    const-string v3, "shake-256s"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->A:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v24, v0

    const v1, 0x30101

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$a;

    const/16 v31, 0x21

    const/16 v32, 0x42

    const/16 v26, 0x1

    const/16 v28, 0x10

    const/16 v29, 0x16

    const/16 v30, 0x6

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v32}, Lvy8$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-128f-robust"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->B:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v25, v0

    const v1, 0x30102

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$a;

    const/16 v32, 0xe

    const/16 v33, 0x3f

    const/16 v27, 0x1

    const/16 v29, 0x10

    const/16 v30, 0x7

    const/16 v31, 0xc

    move-object/from16 v26, v2

    invoke-direct/range {v26 .. v33}, Lvy8$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-128s-robust"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->C:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v26, v0

    const v1, 0x30103

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$a;

    const/16 v33, 0x21

    const/16 v34, 0x42

    const/16 v28, 0x1

    const/16 v29, 0x18

    const/16 v30, 0x10

    const/16 v31, 0x16

    const/16 v32, 0x8

    move-object/from16 v27, v2

    invoke-direct/range {v27 .. v34}, Lvy8$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-192f-robust"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->D:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v27, v0

    const v1, 0x30104

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$a;

    const/16 v34, 0x11

    const/16 v35, 0x3f

    const/16 v29, 0x1

    const/16 v30, 0x18

    const/16 v31, 0x10

    const/16 v32, 0x7

    const/16 v33, 0xe

    move-object/from16 v28, v2

    invoke-direct/range {v28 .. v35}, Lvy8$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-192s-robust"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->E:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v28, v0

    const v1, 0x30105

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$a;

    const/16 v46, 0x23

    const/16 v47, 0x44

    const/16 v41, 0x1

    const/16 v42, 0x20

    const/16 v43, 0x10

    const/16 v44, 0x11

    const/16 v45, 0x9

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lvy8$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-256f-robust"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->F:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v29, v0

    const v1, 0x30106

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$a;

    const/16 v46, 0x16

    const/16 v47, 0x40

    const/16 v44, 0x8

    const/16 v45, 0xe

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lvy8$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-256s-robust"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->G:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v30, v0

    const v1, 0x30201

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$a;

    const/16 v46, 0x21

    const/16 v47, 0x42

    const/16 v41, 0x0

    const/16 v42, 0x10

    const/16 v44, 0x16

    const/16 v45, 0x6

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lvy8$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-128f-simple"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->H:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v31, v0

    const v1, 0x30202

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$a;

    const/16 v46, 0xe

    const/16 v47, 0x3f

    const/16 v44, 0x7

    const/16 v45, 0xc

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lvy8$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-128s-simple"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->I:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v32, v0

    const v1, 0x30203

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$a;

    const/16 v46, 0x21

    const/16 v47, 0x42

    const/16 v42, 0x18

    const/16 v44, 0x16

    const/16 v45, 0x8

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lvy8$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-192f-simple"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->J:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v33, v0

    const v1, 0x30204

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$a;

    const/16 v46, 0x11

    const/16 v47, 0x3f

    const/16 v44, 0x7

    const/16 v45, 0xe

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lvy8$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-192s-simple"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->K:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v34, v0

    const v1, 0x30205

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$a;

    const/16 v46, 0x23

    const/16 v47, 0x44

    const/16 v42, 0x20

    const/16 v44, 0x11

    const/16 v45, 0x9

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lvy8$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-256f-simple"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->L:Lvy8;

    new-instance v0, Lvy8;

    move-object/from16 v35, v0

    const v1, 0x30206

    invoke-static {v1}, Lc35;->d(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lvy8$a;

    const/16 v46, 0x16

    const/16 v47, 0x40

    const/16 v44, 0x8

    const/16 v45, 0xe

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v47}, Lvy8$a;-><init>(ZIIIIII)V

    const-string v3, "haraka-256s-simple"

    invoke-direct {v0, v1, v3, v2}, Lvy8;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V

    sput-object v0, Lvy8;->M:Lvy8;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lvy8;->N:Ljava/util/Map;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    filled-new-array/range {v0 .. v35}, [Lvy8;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x24

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    sget-object v3, Lvy8;->N:Ljava/util/Map;

    invoke-virtual {v2}, Lvy8;->a()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Lry8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvy8;->a:Ljava/lang/Integer;

    iput-object p2, p0, Lvy8;->b:Ljava/lang/String;

    iput-object p3, p0, Lvy8;->c:Lry8;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lvy8;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget-object p0, p0, Lvy8;->c:Lry8;

    invoke-interface {p0}, Lry8;->a()I

    move-result p0

    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvy8;->b:Ljava/lang/String;

    return-object p0
.end method
