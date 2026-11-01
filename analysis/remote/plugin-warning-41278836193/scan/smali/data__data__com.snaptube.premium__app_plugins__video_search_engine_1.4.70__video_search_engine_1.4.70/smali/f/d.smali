.class public final Lf/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d$a;,
        Lf/d$b;
    }
.end annotation


# static fields
.field public static final a:Lf/d;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z

.field private static final e:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 60

    new-instance v0, Lf/d;

    invoke-direct {v0}, Lf/d;-><init>()V

    sput-object v0, Lf/d;->a:Lf/d;

    .line 1
    new-instance v0, Lf/d$a;

    const v1, 0x46bc1b1

    const-string v2, "o.c5"

    const v3, 0x7f090993

    invoke-direct {v0, v1, v2, v3}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 2
    new-instance v1, Lf/d$a;

    const v4, 0x46a146e

    const-string v5, "o.b5"

    const v6, 0x7f090b23

    invoke-direct {v1, v4, v5, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 3
    new-instance v4, Lf/d$a;

    const v7, 0x46b99e2

    const v8, 0x7f090b1d

    invoke-direct {v4, v7, v2, v8}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 4
    new-instance v7, Lf/d$a;

    const v9, 0x469eaa2

    const v10, 0x7f090999

    invoke-direct {v7, v9, v5, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 5
    new-instance v9, Lf/d$a;

    const v11, 0x4699dae

    const-string v12, "o.d6"

    invoke-direct {v9, v11, v12, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 6
    new-instance v11, Lf/d$a;

    const v13, 0x4699c82

    const-string v14, "o.k6"

    invoke-direct {v11, v13, v14, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 7
    new-instance v13, Lf/d$a;

    const v15, 0x46b70de

    invoke-direct {v13, v15, v2, v3}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 8
    new-instance v15, Lf/d$a;

    const v8, 0x46a1662

    invoke-direct {v15, v8, v5, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 9
    new-instance v8, Lf/d$a;

    const v3, 0x4699eda

    invoke-direct {v8, v3, v12, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 10
    new-instance v3, Lf/d$a;

    const v6, 0x4699d4a

    invoke-direct {v3, v6, v12, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 11
    new-instance v6, Lf/d$a;

    move-object/from16 v19, v3

    const v3, 0x4699e76

    invoke-direct {v6, v3, v5, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 12
    new-instance v3, Lf/d$a;

    move-object/from16 v20, v6

    const v6, 0x4699ce6

    invoke-direct {v3, v6, v12, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 13
    new-instance v6, Lf/d$a;

    const v12, 0x46a1342

    const v10, 0x7f090b23

    invoke-direct {v6, v12, v5, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 14
    new-instance v10, Lf/d$a;

    const v12, 0x46bbf59

    move-object/from16 v22, v6

    const v6, 0x7f090993

    invoke-direct {v10, v12, v2, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 15
    new-instance v12, Lf/d$a;

    move-object/from16 v23, v10

    const v10, 0x46bbef5

    invoke-direct {v12, v10, v2, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 16
    new-instance v6, Lf/d$a;

    const v10, 0x46b9c3a

    move-object/from16 v24, v12

    const v12, 0x7f090b1d

    invoke-direct {v6, v10, v2, v12}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 17
    new-instance v10, Lf/d$a;

    const v12, 0x46a172a

    move-object/from16 v25, v6

    const v6, 0x7f090b23

    invoke-direct {v10, v12, v5, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 18
    new-instance v12, Lf/d$a;

    move-object/from16 v26, v10

    const v10, 0x46a178e

    invoke-direct {v12, v10, v5, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 19
    new-instance v6, Lf/d$a;

    const v10, 0x46b997e

    move-object/from16 v27, v12

    const v12, 0x7f090b1d

    invoke-direct {v6, v10, v2, v12}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 20
    new-instance v10, Lf/d$a;

    const v12, 0x46ab5b9

    move-object/from16 v16, v6

    const v6, 0x7f090993

    invoke-direct {v10, v12, v5, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 21
    new-instance v6, Lf/d$a;

    const v12, 0x46ab61d

    move-object/from16 v28, v10

    const v10, 0x7f090999

    invoke-direct {v6, v12, v2, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 22
    new-instance v12, Lf/d$a;

    const v10, 0x46a1856

    move-object/from16 v29, v6

    const v6, 0x7f090b23

    invoke-direct {v12, v10, v5, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 23
    new-instance v6, Lf/d$a;

    const v10, 0x46a4025

    move-object/from16 v30, v12

    const v12, 0x7f090999

    invoke-direct {v6, v10, v5, v12}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 24
    new-instance v10, Lf/d$a;

    const v12, 0x46ab681

    move-object/from16 v31, v6

    const v6, 0x7f090993

    invoke-direct {v10, v12, v2, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 25
    new-instance v12, Lf/d$a;

    const v6, 0x46ab8d9

    move-object/from16 v32, v10

    const v10, 0x7f09098c

    invoke-direct {v12, v6, v14, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 26
    new-instance v6, Lf/d$a;

    const v14, 0x46ab875

    const v10, 0x7f090993

    invoke-direct {v6, v14, v2, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 27
    new-instance v10, Lf/d$a;

    const v14, 0x46a391d

    move-object/from16 v33, v6

    const v6, 0x7f090999

    invoke-direct {v10, v14, v5, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 28
    new-instance v14, Lf/d$a;

    const v6, 0x46a13a6

    move-object/from16 v34, v10

    const v10, 0x7f090b23

    invoke-direct {v14, v6, v5, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 29
    new-instance v6, Lf/d$a;

    const v10, 0x46a3981

    move-object/from16 v35, v14

    const v14, 0x7f090999

    invoke-direct {v6, v10, v5, v14}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 30
    new-instance v10, Lf/d$a;

    const v14, 0x46ab93d

    move-object/from16 v36, v6

    const v6, 0x7f090993

    invoke-direct {v10, v14, v2, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 31
    new-instance v14, Lf/d$a;

    const v6, 0x46a4601

    move-object/from16 v37, v10

    const v10, 0x7f090999

    invoke-direct {v14, v6, v5, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 32
    new-instance v6, Lf/d$a;

    const v10, 0x46bc0e9

    move-object/from16 v38, v14

    const v14, 0x7f090993

    invoke-direct {v6, v10, v2, v14}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 33
    new-instance v10, Lf/d$a;

    const v14, 0x4692c5d

    move-object/from16 v39, v6

    const v6, 0x7f090998

    invoke-direct {v10, v14, v5, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 34
    new-instance v6, Lf/d$a;

    const v14, 0x4692cc1

    move-object/from16 v40, v10

    const v10, 0x7f090999

    invoke-direct {v6, v14, v5, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 35
    new-instance v10, Lf/d$a;

    const-string v14, "o.x4"

    move-object/from16 v41, v6

    const v6, 0x7f09099a

    move-object/from16 v42, v12

    const v12, 0x4692bf9

    invoke-direct {v10, v12, v14, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 36
    new-instance v6, Lf/d$a;

    const v12, 0x46a18ba

    const v14, 0x7f090b23

    invoke-direct {v6, v12, v5, v14}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 37
    new-instance v12, Lf/d$a;

    const v14, 0x7f090b19

    move-object/from16 v18, v6

    const v6, 0x46a191e

    move-object/from16 v43, v10

    const-string v10, "o.o6"

    invoke-direct {v12, v6, v10, v14}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 38
    new-instance v6, Lf/d$a;

    const v14, 0x46a3ca1

    move-object/from16 v44, v12

    const v12, 0x7f090999

    invoke-direct {v6, v14, v5, v12}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 39
    new-instance v12, Lf/d$a;

    const v14, 0x46a3d69

    move-object/from16 v45, v6

    const v6, 0x7f09098f

    invoke-direct {v12, v14, v10, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 40
    new-instance v14, Lf/d$a;

    move-object/from16 v46, v12

    const v12, 0x46a3d05

    move-object/from16 v47, v3

    const-string v3, "o.p6"

    invoke-direct {v14, v12, v3, v6}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 41
    new-instance v6, Lf/d$a;

    const-string v12, "o.j6"

    move-object/from16 v48, v14

    const v14, 0x7f090b16

    move-object/from16 v49, v8

    const v8, 0x46b9b72

    invoke-direct {v6, v8, v12, v14}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 42
    new-instance v8, Lf/d$a;

    const v12, 0x46b9b0e

    const v14, 0x7f090b13

    invoke-direct {v8, v12, v10, v14}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 43
    new-instance v10, Lf/d$a;

    const v12, 0x46a440d

    const v14, 0x7f090999

    invoke-direct {v10, v12, v5, v14}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 44
    new-instance v12, Lf/d$a;

    move-object/from16 v21, v10

    const v10, 0x46a43a9

    invoke-direct {v12, v10, v5, v14}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 45
    new-instance v10, Lf/d$a;

    move-object/from16 v50, v12

    const v12, 0x469329d

    invoke-direct {v10, v12, v5, v14}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 46
    new-instance v12, Lf/d$a;

    move-object/from16 v51, v10

    const v10, 0x46a4859

    invoke-direct {v12, v10, v5, v14}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 47
    new-instance v10, Lf/d$a;

    const v14, 0x46bc021

    move-object/from16 v53, v12

    const v12, 0x7f090993

    invoke-direct {v10, v14, v2, v12}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 48
    new-instance v12, Lf/d$a;

    const v14, 0x46a47f5

    move-object/from16 v54, v10

    const v10, 0x7f090999

    invoke-direct {v12, v14, v5, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 49
    new-instance v10, Lf/d$a;

    const v14, 0x46c3939

    move-object/from16 v52, v12

    const-string v12, "o.w6"

    move-object/from16 v55, v8

    const v8, 0x7f090982

    invoke-direct {v10, v14, v12, v8}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 50
    new-instance v14, Lf/d$a;

    const-string v8, "o.v6"

    move-object/from16 v56, v10

    const v10, 0x7f090b0c

    move-object/from16 v57, v6

    const v6, 0x46d1ef2

    invoke-direct {v14, v6, v8, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 51
    new-instance v6, Lf/d$a;

    const v8, 0x46c34ed

    const v10, 0x7f090993

    invoke-direct {v6, v8, v2, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 52
    new-instance v8, Lf/d$a;

    move-object/from16 v58, v6

    const v6, 0x46c3bf5

    invoke-direct {v8, v6, v2, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 53
    new-instance v6, Lf/d$a;

    const v10, 0x46c3b91

    move-object/from16 v59, v8

    const v8, 0x7f09098c

    invoke-direct {v6, v10, v5, v8}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 54
    new-instance v5, Lf/d$a;

    const v8, 0x46c3c59

    const v10, 0x7f090989

    invoke-direct {v5, v8, v3, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 55
    new-instance v3, Lf/d$a;

    const v8, 0x46c3b2d

    const v10, 0x7f090982

    invoke-direct {v3, v8, v12, v10}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 56
    new-instance v8, Lf/d$a;

    const v10, 0x46c3cbd

    const v12, 0x7f090993

    invoke-direct {v8, v10, v2, v12}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    .line 57
    new-instance v10, Lf/d$a;

    move-object/from16 v17, v8

    const v8, 0x46c3d21

    invoke-direct {v10, v8, v2, v12}, Lf/d$a;-><init>(ILjava/lang/String;I)V

    const/16 v2, 0x39

    new-array v2, v2, [Lf/d$a;

    const/4 v8, 0x0

    aput-object v0, v2, v8

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v7, v2, v0

    const/4 v0, 0x4

    aput-object v9, v2, v0

    const/4 v0, 0x5

    aput-object v11, v2, v0

    const/4 v0, 0x6

    aput-object v13, v2, v0

    const/4 v0, 0x7

    aput-object v15, v2, v0

    const/16 v0, 0x8

    aput-object v49, v2, v0

    const/16 v0, 0x9

    aput-object v19, v2, v0

    const/16 v0, 0xa

    aput-object v20, v2, v0

    const/16 v0, 0xb

    aput-object v47, v2, v0

    const/16 v0, 0xc

    aput-object v22, v2, v0

    const/16 v0, 0xd

    aput-object v23, v2, v0

    const/16 v0, 0xe

    aput-object v24, v2, v0

    const/16 v0, 0xf

    aput-object v25, v2, v0

    const/16 v0, 0x10

    aput-object v26, v2, v0

    const/16 v0, 0x11

    aput-object v27, v2, v0

    const/16 v0, 0x12

    aput-object v16, v2, v0

    const/16 v0, 0x13

    aput-object v28, v2, v0

    const/16 v0, 0x14

    aput-object v29, v2, v0

    const/16 v0, 0x15

    aput-object v30, v2, v0

    const/16 v0, 0x16

    aput-object v31, v2, v0

    const/16 v0, 0x17

    aput-object v32, v2, v0

    const/16 v0, 0x18

    aput-object v42, v2, v0

    const/16 v0, 0x19

    aput-object v33, v2, v0

    const/16 v0, 0x1a

    aput-object v34, v2, v0

    const/16 v0, 0x1b

    aput-object v35, v2, v0

    const/16 v0, 0x1c

    aput-object v36, v2, v0

    const/16 v0, 0x1d

    aput-object v37, v2, v0

    const/16 v0, 0x1e

    aput-object v38, v2, v0

    const/16 v0, 0x1f

    aput-object v39, v2, v0

    const/16 v0, 0x20

    aput-object v40, v2, v0

    const/16 v0, 0x21

    aput-object v41, v2, v0

    const/16 v0, 0x22

    aput-object v43, v2, v0

    const/16 v0, 0x23

    aput-object v18, v2, v0

    const/16 v0, 0x24

    aput-object v44, v2, v0

    const/16 v0, 0x25

    aput-object v45, v2, v0

    const/16 v0, 0x26

    aput-object v46, v2, v0

    const/16 v0, 0x27

    aput-object v48, v2, v0

    const/16 v0, 0x28

    aput-object v57, v2, v0

    const/16 v0, 0x29

    aput-object v55, v2, v0

    const/16 v0, 0x2a

    aput-object v21, v2, v0

    const/16 v0, 0x2b

    aput-object v50, v2, v0

    const/16 v0, 0x2c

    aput-object v51, v2, v0

    const/16 v0, 0x2d

    aput-object v53, v2, v0

    const/16 v0, 0x2e

    aput-object v54, v2, v0

    const/16 v0, 0x2f

    aput-object v52, v2, v0

    const/16 v0, 0x30

    aput-object v56, v2, v0

    const/16 v0, 0x31

    aput-object v14, v2, v0

    const/16 v0, 0x32

    aput-object v58, v2, v0

    const/16 v0, 0x33

    aput-object v59, v2, v0

    const/16 v0, 0x34

    aput-object v6, v2, v0

    const/16 v0, 0x35

    aput-object v5, v2, v0

    const/16 v0, 0x36

    aput-object v3, v2, v0

    const/16 v0, 0x37

    aput-object v17, v2, v0

    const/16 v0, 0x38

    aput-object v10, v2, v0

    .line 58
    invoke-static {v2}, Lw/F;->c([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lf/d;->e:Ljava/util/Set;

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

.method public static synthetic a(Lf/d;Landroid/view/View;Landroid/view/View;Lf/d$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lf/d;->g(Lf/d;Landroid/view/View;Landroid/view/View;Lf/d$b;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lf/d;->h(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private final c(Lf/d$a;Lf/d$b;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lf/d;->d(Lf/d$a;Lf/d$b;)Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lf/d;->e(Lf/d$b;)Landroid/app/Activity;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    return-object p1
.end method

.method private final d(Lf/d$a;Lf/d$b;)Landroid/app/Activity;
    .locals 4

    .line 1
    sget-boolean v0, Lf/d;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string p1, "ActivityStackUtils failed past"

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lf/d$b;->a(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    :try_start_0
    sget-object v0, Lf/d;->b:Ljava/lang/reflect/Method;

    .line 13
    .line 14
    if-nez v0, :cond_5

    .line 15
    .line 16
    invoke-static {}, Ls/d;->a()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lf/d$a;->a()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lz/b;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/reflect/Method;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    .line 65
    const/16 v3, 0x1a

    .line 66
    .line 67
    if-lt v2, v3, :cond_3

    .line 68
    .line 69
    invoke-static {v0}, Lf/a;->a(Ljava/lang/reflect/Method;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-lez v2, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-class v3, Landroid/app/Activity;

    .line 83
    .line 84
    invoke-static {v2, v3}, Lz/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    sput-object v0, Lf/d;->b:Ljava/lang/reflect/Method;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-class v3, Ljava/util/Stack;

    .line 98
    .line 99
    invoke-static {v2, v3}, Lz/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_1

    .line 104
    .line 105
    sput-object v0, Lf/d;->c:Ljava/lang/reflect/Method;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    sget-object p1, Lf/d;->b:Ljava/lang/reflect/Method;

    .line 109
    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    invoke-static {p1}, Lz/f;->b(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Landroid/app/Activity;

    .line 120
    .line 121
    invoke-direct {p0, p1}, Lf/d;->l(Landroid/app/Activity;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    return-object p1

    .line 128
    :cond_6
    sget-object p1, Lf/d;->c:Ljava/lang/reflect/Method;

    .line 129
    .line 130
    if-eqz p1, :cond_9

    .line 131
    .line 132
    invoke-static {p1}, Lz/f;->b(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Ljava/util/Stack;

    .line 140
    .line 141
    if-eqz p1, :cond_9

    .line 142
    .line 143
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_8

    .line 152
    .line 153
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    move-object v2, v0

    .line 158
    check-cast v2, Landroid/app/Activity;

    .line 159
    .line 160
    sget-object v3, Lf/d;->a:Lf/d;

    .line 161
    .line 162
    invoke-direct {v3, v2}, Lf/d;->l(Landroid/app/Activity;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eqz v2, :cond_7

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_8
    move-object v0, v1

    .line 170
    :goto_1
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .line 172
    return-object v0

    .line 173
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v2, "ActivityStackUtils catch: "

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p2, p1}, Lf/d$b;->a(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_9
    const/4 p1, 0x1

    .line 198
    sput-boolean p1, Lf/d;->d:Z

    .line 199
    .line 200
    return-object v1
.end method

.method private final e(Lf/d$b;)Landroid/app/Activity;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ls/d;->a()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "com.sensorsdata.analytics.android.sdk.AppStateManager"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "getInstance"

    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "getForegroundActivity"

    .line 27
    .line 28
    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/app/Activity;

    .line 37
    .line 38
    invoke-direct {p0, v1}, Lf/d;->l(Landroid/app/Activity;)Z

    .line 39
    .line 40
    .line 41
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    return-object v1

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v3, "AppStateManager catch:"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p1, v1}, Lf/d$b;->a(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-object v0
.end method

.method public static final f()V
    .locals 7

    .line 1
    new-instance v0, Lf/d$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lf/d$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lf/d;->a:Lf/d;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    sget-object v3, Lv/g;->a:Lv/g$a;

    .line 10
    .line 11
    invoke-direct {v1}, Lf/d;->n()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_6

    .line 16
    .line 17
    invoke-direct {v1}, Lf/d;->m()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    invoke-static {}, Ls/l;->a()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {v3}, Lf/d;->j(I)Lf/d$a;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-direct {v1, v3, v0}, Lf/d;->c(Lf/d$a;Lf/d$b;)Landroid/app/Activity;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lf/d$b;->b()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v5, "ExploreActivity not found: "

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-direct {v1, v2, v2, v3}, Lf/d;->o(ZILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception v1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v3}, Lf/d$a;->b()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-virtual {v4, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-nez v3, :cond_3

    .line 78
    .line 79
    invoke-virtual {v0}, Lf/d$b;->b()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v5, "statusBarView not found: "

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-direct {v1, v2, v2, v3}, Lf/d;->o(ZILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    const-string v6, "android.view.View"

    .line 113
    .line 114
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-nez v5, :cond_4

    .line 119
    .line 120
    invoke-virtual {v0}, Lf/d$b;->b()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v5, "statusBarView not View: "

    .line 130
    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-direct {v1, v2, v2, v3}, Lf/d;->o(ZILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_4
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    const-string v5, "getDecorView(...)"

    .line 154
    .line 155
    invoke-static {v4, v5}, Lz/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-gtz v5, :cond_5

    .line 163
    .line 164
    return-void

    .line 165
    :cond_5
    new-instance v5, Lf/b;

    .line 166
    .line 167
    invoke-direct {v5, v1, v3, v4, v0}, Lf/b;-><init>(Lf/d;Landroid/view/View;Landroid/view/View;Lf/d$b;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v1}, Lv/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    goto :goto_2

    .line 183
    :cond_6
    :goto_0
    return-void

    .line 184
    :goto_1
    sget-object v3, Lv/g;->a:Lv/g$a;

    .line 185
    .line 186
    invoke-static {v1}, Lv/h;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-static {v1}, Lv/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    :goto_2
    invoke-static {v1}, Lv/g;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    if-eqz v1, :cond_7

    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v0, v3}, Lf/d$b;->a(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    sget-object v0, Lf/d;->a:Lf/d;

    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-direct {v0, v2, v2, v1}, Lf/d;->o(ZILjava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_7
    return-void
.end method

.method private static final g(Lf/d;Landroid/view/View;Landroid/view/View;Lf/d$b;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lv/g;->a:Lv/g$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    div-int/lit8 p2, p2, 0x2

    .line 18
    .line 19
    if-le v0, p2, :cond_2

    .line 20
    .line 21
    invoke-direct {p0}, Lf/d;->k()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-lez p2, :cond_0

    .line 30
    .line 31
    move v2, p2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/high16 v2, 0x41c80000    # 25.0f

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Lf/d;->i(F)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    :goto_0
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    new-instance v1, Lf/c;

    .line 45
    .line 46
    invoke-direct {v1}, Lf/c;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 50
    .line 51
    .line 52
    if-lez p2, :cond_1

    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v1, "system bar height: "

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    const-string p1, "default height apply"

    .line 75
    .line 76
    :goto_1
    const/4 p2, 0x1

    .line 77
    invoke-direct {p0, p2, v0, p1}, Lf/d;->o(ZILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    sget-object p1, Lv/l;->a:Lv/l;

    .line 81
    .line 82
    invoke-static {p1}, Lv/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    goto :goto_3

    .line 87
    :goto_2
    sget-object p2, Lv/g;->a:Lv/g$a;

    .line 88
    .line 89
    invoke-static {p1}, Lv/h;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Lv/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :goto_3
    invoke-static {p1}, Lv/g;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p3, p1}, Lf/d$b;->a(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Lf/d$b;->b()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string p3, "height update fail: "

    .line 120
    .line 121
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const/4 p2, 0x0

    .line 132
    invoke-direct {p0, p2, p2, p1}, Lf/d;->o(ZILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    return-void
.end method

.method private static final h(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    const-string v0, "<unused var>"

    invoke-static {p0, v0}, Lz/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insets"

    invoke-static {p1, p0}, Lz/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final j(I)Lf/d$a;
    .locals 3

    .line 1
    sget-object v0, Lf/d;->e:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v2, v1

    .line 18
    check-cast v2, Lf/d$a;

    .line 19
    .line 20
    invoke-virtual {v2}, Lf/d$a;->c()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ne v2, p0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    :goto_0
    check-cast v1, Lf/d$a;

    .line 29
    .line 30
    return-object v1
.end method

.method private final k()I
    .locals 5

    .line 1
    invoke-static {}, Ls/d;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "dimen"

    .line 10
    .line 11
    const-string v3, "android"

    .line 12
    .line 13
    const-string v4, "status_bar_height"

    .line 14
    .line 15
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0
.end method

.method private final l(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "com.snaptube.premium.activity.ExploreActivity"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method private final m()Z
    .locals 2

    .line 1
    const-class v0, Lf/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Ls/d;->a()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method private final n()Z
    .locals 3

    .line 1
    invoke-static {}, Ls/l;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x4692681

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-gt v1, v0, :cond_0

    .line 10
    .line 11
    const v1, 0x46dba60

    .line 12
    .line 13
    .line 14
    if-ge v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    :cond_0
    return v2
.end method

.method private final o(ZILjava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lv/g;->a:Lv/g$a;

    .line 2
    .line 3
    new-instance v0, Ll/e;

    .line 4
    .line 5
    invoke-direct {v0}, Ll/e;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "Search"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ll/e;->f(Ljava/lang/String;)Ll/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "hotfix_status_bar_view"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ll/e;->e(Ljava/lang/String;)Ll/e;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "error"

    .line 21
    .line 22
    invoke-virtual {v0, v1, p3}, Ll/e;->g(Ljava/lang/String;Ljava/lang/Object;)Ll/e;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    const-string v0, "success"

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p3, v0, p1}, Ll/e;->g(Ljava/lang/String;Ljava/lang/Object;)Ll/e;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string p3, "arg2"

    .line 37
    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p1, p3, p2}, Ll/e;->g(Ljava/lang/String;Ljava/lang/Object;)Ll/e;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ll/e;->d()V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lv/l;->a:Lv/l;

    .line 50
    .line 51
    invoke-static {p1}, Lv/g;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    sget-object p2, Lv/g;->a:Lv/g$a;

    .line 57
    .line 58
    invoke-static {p1}, Lv/h;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lv/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method


# virtual methods
.method public final i(F)I
    .locals 2

    .line 1
    invoke-static {}, Ls/d;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    float-to-int p1, p1

    .line 19
    return p1
.end method
