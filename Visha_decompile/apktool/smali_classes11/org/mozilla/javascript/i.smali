.class public Lorg/mozilla/javascript/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Lorg/mozilla/javascript/Token$CommentType;

.field public B:Z

.field public C:Z

.field public D:I

.field public E:Lorg/mozilla/javascript/Parser;

.field public F:Ljava/lang/String;

.field public G:I

.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:D

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:[C

.field public k:I

.field public l:Lorg/mozilla/javascript/ObjToIntMap;

.field public final m:[I

.field public n:I

.field public o:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:Ljava/lang/String;

.field public t:Ljava/io/Reader;

.field public u:[C

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    const/16 v1, 0x80

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/mozilla/javascript/i;->j:[C

    new-instance v1, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v1, p0, Lorg/mozilla/javascript/i;->l:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/mozilla/javascript/i;->m:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/javascript/i;->o:Z

    iput v1, p0, Lorg/mozilla/javascript/i;->p:I

    const/4 v2, -0x1

    iput v2, p0, Lorg/mozilla/javascript/i;->q:I

    iput-object v0, p0, Lorg/mozilla/javascript/i;->F:Ljava/lang/String;

    iput v2, p0, Lorg/mozilla/javascript/i;->G:I

    iput-object p1, p0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    iput p4, p0, Lorg/mozilla/javascript/i;->r:I

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iput-object p2, p0, Lorg/mozilla/javascript/i;->t:Ljava/io/Reader;

    const/16 p1, 0x200

    new-array p1, p1, [C

    iput-object p1, p0, Lorg/mozilla/javascript/i;->u:[C

    iput v1, p0, Lorg/mozilla/javascript/i;->v:I

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    iput-object p3, p0, Lorg/mozilla/javascript/i;->s:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/i;->v:I

    :goto_0
    iput v1, p0, Lorg/mozilla/javascript/i;->x:I

    iput v1, p0, Lorg/mozilla/javascript/i;->w:I

    return-void
.end method

.method public static A(Ljava/lang/String;IZ)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/i;->T(Ljava/lang/String;IZ)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static T(Ljava/lang/String;IZ)I
    .locals 1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/javascript/i;->V(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p2}, Lorg/mozilla/javascript/i;->U(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static U(Ljava/lang/String;Z)I
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x70

    const/16 v7, 0x66

    const/16 v8, 0x64

    const/16 v9, 0x63

    const/16 v10, 0x6d

    const/16 v12, 0x75

    const/16 v13, 0x61

    const/16 v14, 0x74

    const/16 v15, 0x69

    const/16 v11, 0x6e

    const/16 v3, 0x72

    const/16 v5, 0x65

    const/16 v16, 0x80

    const/4 v6, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "implements"

    :goto_0
    move/from16 v3, v16

    goto/16 :goto_3

    :cond_0
    if-ne v1, v11, :cond_29

    const-string v1, "instanceof"

    const/16 v2, 0x35

    :goto_1
    move v3, v2

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_1

    if-eqz p1, :cond_1

    const-string v1, "interface"

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_29

    if-eqz p1, :cond_29

    const-string v1, "protected"

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v9, :cond_4

    if-eq v1, v8, :cond_3

    if-eq v1, v7, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v1, "function"

    move v3, v11

    goto/16 :goto_3

    :cond_3
    const-string v1, "debugger"

    const/16 v2, 0xa1

    goto :goto_1

    :cond_4
    const-string v1, "continue"

    const/16 v2, 0x7a

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v13, :cond_8

    if-eq v1, v5, :cond_9

    if-eq v1, v15, :cond_7

    if-eq v1, v3, :cond_5

    const/16 v2, 0x78

    if-eq v1, v2, :cond_6

    goto/16 :goto_2

    :cond_5
    if-eqz p1, :cond_6

    const-string v1, "private"

    goto :goto_0

    :cond_6
    const-string v1, "extends"

    goto :goto_0

    :cond_7
    const-string v1, "finally"

    const/16 v2, 0x7e

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    const-string v1, "package"

    goto :goto_0

    :cond_9
    const-string v1, "default"

    move v3, v12

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_e

    if-eq v1, v10, :cond_d

    if-eq v1, v14, :cond_a

    if-eq v1, v12, :cond_b

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_5
    const-string v1, "typeof"

    const/16 v2, 0x20

    goto :goto_1

    :pswitch_6
    const-string v1, "export"

    goto :goto_0

    :cond_a
    if-eqz p1, :cond_b

    const-string v1, "static"

    goto/16 :goto_0

    :cond_b
    if-eqz p1, :cond_c

    const-string v1, "public"

    goto/16 :goto_0

    :cond_c
    :pswitch_7
    const-string v1, "switch"

    const/16 v3, 0x73

    goto/16 :goto_3

    :cond_d
    const-string v1, "import"

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_f

    const-string v1, "delete"

    const/16 v2, 0x1f

    goto/16 :goto_1

    :cond_f
    if-ne v1, v3, :cond_29

    const-string v1, "return"

    const/4 v2, 0x4

    goto/16 :goto_1

    :pswitch_8
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v13, :cond_18

    if-eq v1, v5, :cond_16

    if-eq v1, v15, :cond_15

    const/16 v5, 0x6c

    if-eq v1, v5, :cond_14

    if-eq v1, v11, :cond_13

    if-eq v1, v2, :cond_12

    if-eq v1, v3, :cond_11

    if-eq v1, v14, :cond_10

    goto/16 :goto_2

    :cond_10
    const-string v1, "catch"

    const/16 v2, 0x7d

    goto/16 :goto_1

    :cond_11
    const-string v1, "throw"

    const/16 v2, 0x32

    goto/16 :goto_1

    :cond_12
    const-string v1, "super"

    goto/16 :goto_0

    :cond_13
    const-string v1, "const"

    const/16 v2, 0x9b

    goto/16 :goto_1

    :cond_14
    const-string v1, "false"

    const/16 v2, 0x2c

    goto/16 :goto_1

    :cond_15
    const-string v1, "while"

    const/16 v3, 0x76

    goto/16 :goto_3

    :cond_16
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_17

    const-string v1, "break"

    const/16 v3, 0x79

    goto/16 :goto_3

    :cond_17
    const/16 v2, 0x79

    if-ne v1, v2, :cond_29

    const-string v1, "yield"

    const/16 v2, 0x49

    goto/16 :goto_1

    :cond_18
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_19

    const-string v1, "class"

    goto/16 :goto_0

    :cond_19
    if-ne v1, v13, :cond_29

    const-string v1, "await"

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v9, :cond_21

    if-eq v1, v5, :cond_1f

    if-eq v1, v11, :cond_1e

    if-eq v1, v14, :cond_1c

    const/16 v7, 0x76

    if-eq v1, v7, :cond_1b

    const/16 v2, 0x77

    if-eq v1, v2, :cond_1a

    goto/16 :goto_2

    :cond_1a
    const-string v1, "with"

    const/16 v2, 0x7c

    goto/16 :goto_1

    :cond_1b
    const-string v1, "void"

    const/16 v2, 0x7f

    goto/16 :goto_1

    :cond_1c
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1d

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_29

    const/16 v3, 0x2d

    goto/16 :goto_4

    :cond_1d
    const/4 v2, 0x2

    const/16 v3, 0x73

    if-ne v1, v3, :cond_29

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_29

    const/16 v3, 0x2b

    goto/16 :goto_4

    :cond_1e
    const-string v1, "null"

    const/16 v2, 0x2a

    goto/16 :goto_1

    :cond_1f
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_20

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_29

    goto/16 :goto_4

    :cond_20
    const/4 v7, 0x2

    if-ne v1, v10, :cond_29

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_29

    move/from16 v3, v16

    goto/16 :goto_4

    :cond_21
    const/4 v7, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_29

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_29

    move v3, v14

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_26

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_25

    if-eq v1, v11, :cond_24

    if-eq v1, v14, :cond_23

    const/16 v2, 0x76

    if-eq v1, v2, :cond_22

    goto/16 :goto_2

    :cond_22
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_29

    const/16 v3, 0x7b

    goto/16 :goto_4

    :cond_23
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_29

    const/16 v3, 0x52

    goto/16 :goto_4

    :cond_24
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_29

    const/16 v3, 0x1e

    goto :goto_4

    :cond_25
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_29

    const/16 v3, 0x9a

    goto :goto_4

    :cond_26
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_29

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_29

    const/16 v3, 0x78

    goto :goto_4

    :pswitch_b
    const/16 v2, 0x77

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_27

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_29

    const/16 v3, 0x71

    goto :goto_4

    :cond_27
    if-ne v1, v11, :cond_28

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_29

    const/16 v3, 0x34

    goto :goto_4

    :cond_28
    const/16 v3, 0x6f

    if-ne v1, v3, :cond_29

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_29

    move v3, v2

    goto :goto_4

    :cond_29
    :goto_2
    const/4 v1, 0x0

    move v3, v4

    :goto_3
    if-eqz v1, :cond_2a

    if-eq v1, v0, :cond_2a

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    move v3, v4

    :cond_2a
    :goto_4
    if-nez v3, :cond_2b

    return v4

    :cond_2b
    and-int/lit16 v0, v3, 0xff

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x77
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static V(Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0x64

    const/16 v6, 0x63

    const/16 v7, 0x6d

    const/16 v10, 0x6f

    const/16 v11, 0x76

    const/16 v13, 0x66

    const/16 v14, 0x61

    const/16 v15, 0x69

    const/16 v2, 0x6e

    const/16 v3, 0x74

    const/16 v12, 0x72

    const/16 v8, 0x65

    const/4 v9, 0x1

    const/16 v16, 0x80

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    const-string v1, "synchronized"

    :goto_0
    move/from16 v2, v16

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_0

    const-string v1, "implements"

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_33

    const-string v1, "instanceof"

    const/16 v2, 0x35

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_1

    const-string v1, "interface"

    goto :goto_0

    :cond_1
    const/16 v2, 0x70

    if-ne v1, v2, :cond_2

    const-string v1, "protected"

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_33

    const-string v1, "transient"

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_7

    if-eq v1, v13, :cond_6

    if-eq v1, v11, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string v1, "debugger"

    const/16 v2, 0xa1

    goto/16 :goto_4

    :cond_4
    const-string v1, "continue"

    const/16 v2, 0x7a

    goto/16 :goto_4

    :cond_5
    const-string v1, "volatile"

    goto :goto_0

    :cond_6
    const-string v1, "function"

    goto/16 :goto_4

    :cond_7
    const-string v1, "abstract"

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_d

    if-eq v1, v8, :cond_c

    if-eq v1, v15, :cond_b

    if-eq v1, v10, :cond_a

    if-eq v1, v12, :cond_9

    const/16 v2, 0x78

    if-eq v1, v2, :cond_8

    goto/16 :goto_3

    :cond_8
    const-string v1, "extends"

    goto :goto_0

    :cond_9
    const-string v1, "private"

    goto :goto_0

    :cond_a
    const-string v1, "boolean"

    goto :goto_0

    :cond_b
    const-string v1, "finally"

    const/16 v2, 0x7e

    goto/16 :goto_4

    :cond_c
    const-string v1, "default"

    const/16 v2, 0x75

    goto/16 :goto_4

    :cond_d
    const-string v1, "package"

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_15

    if-eq v1, v8, :cond_13

    const/16 v2, 0x68

    if-eq v1, v2, :cond_12

    if-eq v1, v7, :cond_11

    if-eq v1, v10, :cond_10

    if-eq v1, v3, :cond_f

    const/16 v2, 0x75

    if-eq v1, v2, :cond_e

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_7
    const-string v1, "typeof"

    const/16 v2, 0x20

    goto/16 :goto_4

    :pswitch_8
    const-string v1, "export"

    goto/16 :goto_0

    :pswitch_9
    const-string v1, "switch"

    const/16 v2, 0x73

    goto/16 :goto_4

    :cond_e
    const-string v1, "public"

    goto/16 :goto_0

    :cond_f
    const-string v1, "static"

    goto/16 :goto_0

    :cond_10
    const-string v1, "double"

    goto/16 :goto_0

    :cond_11
    const-string v1, "import"

    goto/16 :goto_0

    :cond_12
    const-string v1, "throws"

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_14

    const-string v1, "delete"

    const/16 v2, 0x1f

    goto/16 :goto_4

    :cond_14
    if-ne v1, v12, :cond_33

    const-string v1, "return"

    const/4 v2, 0x4

    goto/16 :goto_4

    :cond_15
    const-string v1, "native"

    goto/16 :goto_0

    :pswitch_a
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v14, :cond_1e

    if-eq v1, v8, :cond_1c

    if-eq v1, v15, :cond_1b

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_1a

    if-eq v1, v12, :cond_19

    if-eq v1, v3, :cond_18

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_3

    :pswitch_b
    const-string v1, "super"

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_16

    const-string v1, "float"

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0x73

    if-ne v1, v2, :cond_33

    const-string v1, "short"

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_17

    const-string v1, "const"

    const/16 v2, 0x9b

    goto/16 :goto_4

    :cond_17
    if-ne v1, v13, :cond_33

    const-string v1, "final"

    goto/16 :goto_0

    :cond_18
    const-string v1, "catch"

    const/16 v2, 0x7d

    goto/16 :goto_4

    :cond_19
    const-string v1, "throw"

    const/16 v2, 0x32

    goto/16 :goto_4

    :cond_1a
    const-string v1, "false"

    const/16 v2, 0x2c

    goto/16 :goto_4

    :cond_1b
    const-string v1, "while"

    move v2, v11

    goto/16 :goto_4

    :cond_1c
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_1d

    const-string v1, "break"

    const/16 v2, 0x79

    goto/16 :goto_4

    :cond_1d
    const/16 v2, 0x79

    if-ne v1, v2, :cond_33

    const-string v1, "yield"

    const/16 v2, 0x49

    goto/16 :goto_4

    :cond_1e
    const-string v1, "class"

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x62

    if-eq v1, v5, :cond_2a

    if-eq v1, v6, :cond_28

    if-eq v1, v8, :cond_26

    const/16 v5, 0x67

    if-eq v1, v5, :cond_25

    const/16 v5, 0x6c

    if-eq v1, v5, :cond_24

    if-eq v1, v2, :cond_23

    if-eq v1, v3, :cond_21

    if-eq v1, v11, :cond_20

    const/16 v2, 0x77

    if-eq v1, v2, :cond_1f

    goto/16 :goto_3

    :cond_1f
    const-string v1, "with"

    const/16 v2, 0x7c

    goto/16 :goto_4

    :cond_20
    const-string v1, "void"

    const/16 v2, 0x7f

    goto/16 :goto_4

    :cond_21
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_22

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_33

    const/16 v2, 0x2d

    goto/16 :goto_5

    :cond_22
    const/4 v2, 0x2

    const/16 v3, 0x73

    if-ne v1, v3, :cond_33

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_33

    const/16 v2, 0x2b

    goto/16 :goto_5

    :cond_23
    const-string v1, "null"

    const/16 v2, 0x2a

    goto/16 :goto_4

    :cond_24
    const-string v1, "long"

    goto/16 :goto_0

    :cond_25
    const-string v1, "goto"

    goto/16 :goto_0

    :cond_26
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_27

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_33

    move v2, v12

    goto/16 :goto_5

    :cond_27
    const/4 v5, 0x2

    if-ne v1, v7, :cond_33

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x75

    if-ne v1, v3, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_33

    :goto_1
    move/from16 v2, v16

    goto/16 :goto_5

    :cond_28
    const/4 v5, 0x2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_29

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_33

    :goto_2
    move v2, v3

    goto/16 :goto_5

    :cond_29
    if-ne v1, v12, :cond_33

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_33

    goto :goto_1

    :cond_2a
    const-string v1, "byte"

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v13, :cond_30

    if-eq v1, v15, :cond_2f

    const/16 v5, 0x6c

    if-eq v1, v5, :cond_2e

    if-eq v1, v2, :cond_2d

    if-eq v1, v3, :cond_2c

    if-eq v1, v11, :cond_2b

    goto/16 :goto_3

    :cond_2b
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_33

    const/16 v2, 0x7b

    goto/16 :goto_5

    :cond_2c
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_33

    const/16 v2, 0x52

    goto/16 :goto_5

    :cond_2d
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x77

    if-ne v1, v3, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_33

    const/16 v2, 0x1e

    goto/16 :goto_5

    :cond_2e
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_33

    const/16 v2, 0x9a

    goto :goto_5

    :cond_2f
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_33

    goto/16 :goto_1

    :cond_30
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_33

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_33

    const/16 v2, 0x78

    goto :goto_5

    :pswitch_10
    const/16 v3, 0x77

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_31

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_33

    const/16 v2, 0x71

    goto :goto_5

    :cond_31
    if-ne v1, v2, :cond_32

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v15, :cond_33

    const/16 v2, 0x34

    goto :goto_5

    :cond_32
    if-ne v1, v10, :cond_33

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_33

    goto/16 :goto_2

    :cond_33
    :goto_3
    const/4 v1, 0x0

    move v2, v4

    :goto_4
    if-eqz v1, :cond_34

    if-eq v1, v0, :cond_34

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    move v2, v4

    :cond_34
    :goto_5
    if-nez v2, :cond_35

    return v4

    :cond_35
    and-int/lit16 v0, v2, 0xff

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x77
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\\u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4

    if-ge v2, v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static w(I)Z
    .locals 3

    const/16 v0, 0x5a

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static x(I)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y(I)Z
    .locals 1

    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static z(I)Z
    .locals 4

    const/16 v0, 0x7f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-gt p0, v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    if-eq p0, v3, :cond_1

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/16 v0, 0xa0

    if-eq p0, v0, :cond_4

    const v0, 0xfeff

    if-eq p0, v0, :cond_4

    int-to-char p0, p0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    if-ne p0, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public final B()Z
    .locals 1

    iget p0, p0, Lorg/mozilla/javascript/i;->G:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final C()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/javascript/i;->e:Z

    return p0
.end method

.method public final D()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/javascript/i;->h:Z

    return p0
.end method

.method public final E()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/javascript/i;->g:Z

    return p0
.end method

.method public final F()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/javascript/i;->f:Z

    return p0
.end method

.method public G()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/javascript/i;->B:Z

    return p0
.end method

.method public final H()V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->I(Ljava/lang/String;)V

    return-void
.end method

.method public final I(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingComments()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/i;->t:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/mozilla/javascript/i;->F:Ljava/lang/String;

    iget p1, p0, Lorg/mozilla/javascript/i;->w:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/i;->G:I

    :cond_0
    return-void
.end method

.method public final J(I)Z
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->j()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget p1, p0, Lorg/mozilla/javascript/i;->x:I

    iput p1, p0, Lorg/mozilla/javascript/i;->z:I

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->Y(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final K()I
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->X(I)V

    return v0
.end method

.method public L()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/i;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Z
    .locals 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v0

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->a(I)V

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->K()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->K()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->a(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/i;->k:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.XML.bad.form"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method public final N()Z
    .locals 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->a(I)V

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_1

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_2

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/i;->k:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.XML.bad.form"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method public final O()Z
    .locals 2

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->a(I)V

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->K()I

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->a(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/i;->k:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.XML.bad.form"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method public final P(I)Z
    .locals 2

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->a(I)V

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/javascript/i;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    const-string v0, "msg.XML.bad.form"

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return p1
.end method

.method public Q(I)V
    .locals 8

    iget v0, p0, Lorg/mozilla/javascript/i;->y:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/javascript/i;->k:I

    const/16 v2, 0x65

    const-string v3, "msg.unterminated.re.lit"

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x3d

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/i;->a(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x18

    if-eq p1, v2, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->K()I

    move-result p1

    const/16 v2, 0x2a

    if-ne p1, v2, :cond_2

    iget p1, p0, Lorg/mozilla/javascript/i;->x:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/mozilla/javascript/i;->z:I

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/i;->j:[C

    iget v2, p0, Lorg/mozilla/javascript/i;->k:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    move p1, v1

    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v2

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_9

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    iget p1, p0, Lorg/mozilla/javascript/i;->k:I

    :goto_2
    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/i;->a(I)V

    goto :goto_2

    :cond_4
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/i;->a(I)V

    goto :goto_2

    :cond_5
    const/16 v2, 0x6d

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/i;->a(I)V

    goto :goto_2

    :cond_6
    const/16 v2, 0x79

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/i;->a(I)V

    goto :goto_2

    :cond_7
    iget v2, p0, Lorg/mozilla/javascript/i;->k:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/mozilla/javascript/i;->z:I

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->K()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/i;->w(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.invalid.re.flag"

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    :cond_8
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/javascript/i;->j:[C

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/i;->j:[C

    iget v2, p0, Lorg/mozilla/javascript/i;->k:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/mozilla/javascript/i;->b:Ljava/lang/String;

    return-void

    :cond_9
    :goto_3
    const/16 v5, 0xa

    if-eq v2, v5, :cond_f

    const/4 v6, -0x1

    if-ne v2, v6, :cond_a

    goto :goto_5

    :cond_a
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_c

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v2

    if-eq v2, v5, :cond_b

    if-ne v2, v6, :cond_e

    :cond_b
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/i;->X(I)V

    iget p1, p0, Lorg/mozilla/javascript/i;->x:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/mozilla/javascript/i;->z:I

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/i;->j:[C

    iget v2, p0, Lorg/mozilla/javascript/i;->k:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-void

    :cond_c
    const/16 v5, 0x5b

    if-ne v2, v5, :cond_d

    move p1, v4

    goto :goto_4

    :cond_d
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_e

    move p1, v1

    :cond_e
    :goto_4
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/i;->a(I)V

    goto/16 :goto_1

    :cond_f
    :goto_5
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/i;->X(I)V

    iget p1, p0, Lorg/mozilla/javascript/i;->x:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/mozilla/javascript/i;->z:I

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/i;->j:[C

    iget v2, p0, Lorg/mozilla/javascript/i;->k:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-void
.end method

.method public final R()Z
    .locals 3

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v0

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->a(I)V

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->K()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->K()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->a(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/i;->k:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.XML.bad.form"

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method public final S()V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->X(I)V

    iget v0, p0, Lorg/mozilla/javascript/i;->x:I

    iput v0, p0, Lorg/mozilla/javascript/i;->z:I

    return-void
.end method

.method public final W(II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/i;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sub-int/2addr p2, p1

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/i;->u:[C

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final X(I)V
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/i;->n:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/i;->m:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/i;->m:[I

    iget v1, p0, Lorg/mozilla/javascript/i;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/i;->n:I

    aput p1, v0, v1

    iget p1, p0, Lorg/mozilla/javascript/i;->x:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/i;->x:I

    return-void
.end method

.method public final Y(I)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/i;->m:[I

    iget v1, p0, Lorg/mozilla/javascript/i;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/i;->n:I

    aput p1, v0, v1

    iget p1, p0, Lorg/mozilla/javascript/i;->x:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/i;->x:I

    return-void
.end method

.method public final a(I)V
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/i;->k:I

    iget-object v1, p0, Lorg/mozilla/javascript/i;->j:[C

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/mozilla/javascript/i;->j:[C

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/i;->j:[C

    int-to-char p1, p1

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/i;->k:I

    return-void
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/i;->n:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/mozilla/javascript/i;->m:[I

    sub-int/2addr v0, v1

    aget p0, p0, v0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final c(I)I
    .locals 3

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/i;->s:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget p0, p0, Lorg/mozilla/javascript/i;->v:I

    if-lt p1, p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_2
    iget v1, p0, Lorg/mozilla/javascript/i;->v:I

    if-lt p1, v1, :cond_4

    iget v1, p0, Lorg/mozilla/javascript/i;->w:I

    :try_start_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->f()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    return v0

    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/i;->w:I

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    goto :goto_0

    :catch_0
    return v0

    :cond_4
    :goto_0
    iget-object p0, p0, Lorg/mozilla/javascript/i;->u:[C

    aget-char p0, p0, p1

    return p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/javascript/i;->o:Z

    return p0
.end method

.method public final f()Z
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/i;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/i;->v:I

    iget-object v1, p0, Lorg/mozilla/javascript/i;->u:[C

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/mozilla/javascript/i;->p:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->B()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/javascript/i;->u:[C

    iget v1, p0, Lorg/mozilla/javascript/i;->p:I

    iget v3, p0, Lorg/mozilla/javascript/i;->v:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/mozilla/javascript/i;->v:I

    iget v1, p0, Lorg/mozilla/javascript/i;->p:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/i;->v:I

    iget v0, p0, Lorg/mozilla/javascript/i;->w:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/i;->w:I

    iput v2, p0, Lorg/mozilla/javascript/i;->p:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/i;->u:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    iget v3, p0, Lorg/mozilla/javascript/i;->v:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/mozilla/javascript/i;->u:[C

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/i;->t:Ljava/io/Reader;

    iget-object v1, p0, Lorg/mozilla/javascript/i;->u:[C

    iget v3, p0, Lorg/mozilla/javascript/i;->v:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gez v0, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/mozilla/javascript/i;->v:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/mozilla/javascript/i;->v:I

    const/4 p0, 0x1

    return p0
.end method

.method public final g()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/mozilla/javascript/i;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/i;->s:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/i;->y:I

    iget p0, p0, Lorg/mozilla/javascript/i;->z:I

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->B()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/i;->F:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/javascript/i;->u:[C

    iget v2, p0, Lorg/mozilla/javascript/i;->G:I

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->v()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/i;->F:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    iput v1, p0, Lorg/mozilla/javascript/i;->G:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->i(Z)I

    move-result p0

    return p0
.end method

.method public final i(Z)I
    .locals 6

    iget v0, p0, Lorg/mozilla/javascript/i;->n:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lorg/mozilla/javascript/i;->x:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/i;->x:I

    iget-object p1, p0, Lorg/mozilla/javascript/i;->m:[I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/i;->n:I

    aget p0, p1, v0

    return p0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/i;->s:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    iget v3, p0, Lorg/mozilla/javascript/i;->w:I

    iget v4, p0, Lorg/mozilla/javascript/i;->v:I

    if-ne v3, v4, :cond_1

    iput-boolean v1, p0, Lorg/mozilla/javascript/i;->o:Z

    return v2

    :cond_1
    iget v4, p0, Lorg/mozilla/javascript/i;->x:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/mozilla/javascript/i;->x:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/javascript/i;->w:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/mozilla/javascript/i;->w:I

    iget v3, p0, Lorg/mozilla/javascript/i;->v:I

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->f()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lorg/mozilla/javascript/i;->o:Z

    return v2

    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/i;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/i;->x:I

    iget-object v0, p0, Lorg/mozilla/javascript/i;->u:[C

    iget v3, p0, Lorg/mozilla/javascript/i;->w:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/javascript/i;->w:I

    aget-char v0, v0, v3

    :goto_1
    iget v3, p0, Lorg/mozilla/javascript/i;->q:I

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-ltz v3, :cond_5

    if-ne v3, v4, :cond_4

    if-ne v0, v5, :cond_4

    iput v5, p0, Lorg/mozilla/javascript/i;->q:I

    goto :goto_0

    :cond_4
    iput v2, p0, Lorg/mozilla/javascript/i;->q:I

    iget v2, p0, Lorg/mozilla/javascript/i;->w:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/i;->p:I

    iget v2, p0, Lorg/mozilla/javascript/i;->r:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/i;->r:I

    :cond_5
    const/16 v2, 0x7f

    if-gt v0, v2, :cond_7

    if-eq v0, v5, :cond_6

    if-ne v0, v4, :cond_a

    :cond_6
    iput v0, p0, Lorg/mozilla/javascript/i;->q:I

    :goto_2
    move v0, v5

    goto :goto_3

    :cond_7
    const v2, 0xfeff

    if-ne v0, v2, :cond_8

    return v0

    :cond_8
    if-eqz p1, :cond_9

    invoke-static {v0}, Lorg/mozilla/javascript/i;->y(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0

    :cond_9
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iput v0, p0, Lorg/mozilla/javascript/i;->q:I

    goto :goto_2

    :cond_a
    :goto_3
    return v0
.end method

.method public final j()I
    .locals 5

    iget v0, p0, Lorg/mozilla/javascript/i;->n:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, p0, Lorg/mozilla/javascript/i;->x:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/i;->x:I

    iget-object v2, p0, Lorg/mozilla/javascript/i;->m:[I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/i;->n:I

    aget p0, v2, v0

    return p0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/i;->s:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    iget v3, p0, Lorg/mozilla/javascript/i;->w:I

    iget v4, p0, Lorg/mozilla/javascript/i;->v:I

    if-ne v3, v4, :cond_1

    iput-boolean v1, p0, Lorg/mozilla/javascript/i;->o:Z

    return v2

    :cond_1
    iget v2, p0, Lorg/mozilla/javascript/i;->x:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/i;->x:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/mozilla/javascript/i;->w:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/mozilla/javascript/i;->w:I

    iget v3, p0, Lorg/mozilla/javascript/i;->v:I

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->f()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lorg/mozilla/javascript/i;->o:Z

    return v2

    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/i;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/i;->x:I

    iget-object v0, p0, Lorg/mozilla/javascript/i;->u:[C

    iget v2, p0, Lorg/mozilla/javascript/i;->w:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/javascript/i;->w:I

    aget-char v0, v0, v2

    :goto_1
    const/16 v2, 0x7f

    const/16 v3, 0xa

    if-gt v0, v2, :cond_5

    if-eq v0, v3, :cond_4

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    :cond_4
    iput v0, p0, Lorg/mozilla/javascript/i;->q:I

    :goto_2
    move v0, v3

    goto :goto_3

    :cond_5
    const v2, 0xfeff

    if-ne v0, v2, :cond_6

    return v0

    :cond_6
    invoke-static {v0}, Lorg/mozilla/javascript/i;->y(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iput v0, p0, Lorg/mozilla/javascript/i;->q:I

    goto :goto_2

    :cond_8
    :goto_3
    return v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/i;->D:I

    iput-boolean v0, p0, Lorg/mozilla/javascript/i;->B:Z

    iput-boolean v0, p0, Lorg/mozilla/javascript/i;->C:Z

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/i;->X(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->o()I

    move-result p0

    return p0
.end method

.method public final l()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/mozilla/javascript/i;->w:I

    iget v1, p0, Lorg/mozilla/javascript/i;->q:I

    if-ltz v1, :cond_0

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->c(I)I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_3

    add-int/lit8 v2, v0, -0x2

    goto :goto_2

    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/i;->p:I

    sub-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lorg/mozilla/javascript/i;->p:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->c(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v1, p0, Lorg/mozilla/javascript/i;->p:I

    add-int v2, v1, v0

    :cond_3
    :goto_2
    iget v0, p0, Lorg/mozilla/javascript/i;->p:I

    invoke-virtual {p0, v0, v2}, Lorg/mozilla/javascript/i;->W(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final m(I[I)Ljava/lang/String;
    .locals 7

    iget v0, p0, Lorg/mozilla/javascript/i;->x:I

    iget v1, p0, Lorg/mozilla/javascript/i;->n:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget p1, p0, Lorg/mozilla/javascript/i;->w:I

    if-le v0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/i;->c(I)I

    move-result v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v3, 0xa

    if-ne v4, v3, :cond_1

    add-int/lit8 v3, p1, -0x2

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/i;->c(I)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, -0x1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    if-lez p1, :cond_5

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/i;->c(I)I

    move-result v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move p1, v1

    :goto_2
    iget v4, p0, Lorg/mozilla/javascript/i;->r:I

    sub-int/2addr v4, v2

    iget v5, p0, Lorg/mozilla/javascript/i;->q:I

    const/4 v6, 0x1

    if-ltz v5, :cond_6

    move v5, v6

    goto :goto_3

    :cond_6
    move v5, v1

    :goto_3
    add-int/2addr v4, v5

    aput v4, p2, v1

    aput v0, p2, v6

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-virtual {p0, p1, v3}, Lorg/mozilla/javascript/i;->W(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final n()I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/i;->r:I

    return p0
.end method

.method public o()I
    .locals 10

    iget v0, p0, Lorg/mozilla/javascript/i;->x:I

    iput v0, p0, Lorg/mozilla/javascript/i;->y:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/i;->k:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    const-string v2, "msg.XML.bad.form"

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_13

    iget-boolean v5, p0, Lorg/mozilla/javascript/i;->C:Z

    const/16 v6, 0x92

    const/16 v7, 0x7b

    const/16 v8, 0x2f

    const/4 v9, 0x1

    if-eqz v5, :cond_8

    const/16 v2, 0x9

    if-eq v1, v2, :cond_6

    const/16 v2, 0xa

    if-eq v1, v2, :cond_6

    const/16 v2, 0xd

    if-eq v1, v2, :cond_6

    const/16 v2, 0x20

    if-eq v1, v2, :cond_6

    const/16 v2, 0x22

    if-eq v1, v2, :cond_5

    const/16 v2, 0x27

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3e

    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_3

    const/16 v3, 0x3d

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    iput-boolean v0, p0, Lorg/mozilla/javascript/i;->B:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    iput-boolean v0, p0, Lorg/mozilla/javascript/i;->C:Z

    iput-boolean v0, p0, Lorg/mozilla/javascript/i;->B:Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    iput-boolean v9, p0, Lorg/mozilla/javascript/i;->B:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->X(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    return v6

    :cond_4
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->K()I

    move-result v1

    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    iput-boolean v0, p0, Lorg/mozilla/javascript/i;->C:Z

    iget v1, p0, Lorg/mozilla/javascript/i;->D:I

    sub-int/2addr v1, v9

    iput v1, p0, Lorg/mozilla/javascript/i;->D:I

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->P(I)Z

    move-result v1

    if-nez v1, :cond_7

    return v4

    :cond_6
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    :cond_7
    :goto_1
    iget-boolean v1, p0, Lorg/mozilla/javascript/i;->C:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/mozilla/javascript/i;->D:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    const/16 p0, 0x95

    return p0

    :cond_8
    const/16 v5, 0x3c

    if-eq v1, v5, :cond_a

    if-eq v1, v7, :cond_9

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->X(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    return v6

    :cond_a
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->K()I

    move-result v1

    const/16 v5, 0x21

    if-eq v1, v5, :cond_e

    if-eq v1, v8, :cond_c

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_b

    iput-boolean v9, p0, Lorg/mozilla/javascript/i;->C:Z

    iget v1, p0, Lorg/mozilla/javascript/i;->D:I

    add-int/2addr v1, v9

    iput v1, p0, Lorg/mozilla/javascript/i;->D:I

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->O()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_c
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    iget v1, p0, Lorg/mozilla/javascript/i;->D:I

    if-nez v1, :cond_d

    iput v0, p0, Lorg/mozilla/javascript/i;->k:I

    iput-object v3, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4

    :cond_d
    iput-boolean v9, p0, Lorg/mozilla/javascript/i;->C:Z

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/mozilla/javascript/i;->D:I

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->K()I

    move-result v1

    const/16 v5, 0x2d

    if-eq v1, v5, :cond_11

    const/16 v5, 0x5b

    if-eq v1, v5, :cond_f

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->N()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_f
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    const/16 v6, 0x43

    if-ne v1, v6, :cond_10

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    const/16 v7, 0x44

    if-ne v1, v7, :cond_10

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    const/16 v8, 0x41

    if-ne v1, v8, :cond_10

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    const/16 v9, 0x54

    if-ne v1, v9, :cond_10

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    if-ne v1, v8, :cond_10

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    if-ne v1, v5, :cond_10

    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0, v9}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0, v8}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0, v5}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->M()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_10
    iput v0, p0, Lorg/mozilla/javascript/i;->k:I

    iput-object v3, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4

    :cond_11
    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    if-ne v1, v5, :cond_12

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/i;->R()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    :cond_12
    iput v0, p0, Lorg/mozilla/javascript/i;->k:I

    iput-object v3, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4

    :cond_13
    iget v1, p0, Lorg/mozilla/javascript/i;->x:I

    iput v1, p0, Lorg/mozilla/javascript/i;->z:I

    iput v0, p0, Lorg/mozilla/javascript/i;->k:I

    iput-object v3, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    iget-object p0, p0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4
.end method

.method public final p()D
    .locals 2

    iget-wide v0, p0, Lorg/mozilla/javascript/i;->d:D

    return-wide v0
.end method

.method public final q()I
    .locals 2

    iget v0, p0, Lorg/mozilla/javascript/i;->w:I

    iget v1, p0, Lorg/mozilla/javascript/i;->p:I

    sub-int/2addr v0, v1

    iget p0, p0, Lorg/mozilla/javascript/i;->q:I

    if-ltz p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public final r()C
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/i;->i:I

    int-to-char p0, p0

    return p0
.end method

.method public final s()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final t()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/i;->x:I

    iput v0, p0, Lorg/mozilla/javascript/i;->z:I

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/i;->j:[C

    const/4 v2, 0x0

    iget p0, p0, Lorg/mozilla/javascript/i;->k:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final u()I
    .locals 16

    move-object/from16 v0, p0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget v1, v0, Lorg/mozilla/javascript/i;->x:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lorg/mozilla/javascript/i;->y:I

    iput v1, v0, Lorg/mozilla/javascript/i;->z:I

    return v3

    :cond_1
    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne v1, v4, :cond_2

    iput-boolean v3, v0, Lorg/mozilla/javascript/i;->a:Z

    iget v1, v0, Lorg/mozilla/javascript/i;->x:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lorg/mozilla/javascript/i;->y:I

    iput v1, v0, Lorg/mozilla/javascript/i;->z:I

    return v5

    :cond_2
    invoke-static {v1}, Lorg/mozilla/javascript/i;->z(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x2d

    if-eq v1, v6, :cond_3

    iput-boolean v5, v0, Lorg/mozilla/javascript/i;->a:Z

    :cond_3
    iget v7, v0, Lorg/mozilla/javascript/i;->x:I

    add-int/lit8 v8, v7, -0x1

    iput v8, v0, Lorg/mozilla/javascript/i;->y:I

    iput v7, v0, Lorg/mozilla/javascript/i;->z:I

    const/16 v7, 0x40

    if-ne v1, v7, :cond_4

    const/16 v0, 0x94

    return v0

    :cond_4
    const/16 v7, 0x75

    const/16 v8, 0x5c

    if-ne v1, v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    if-ne v1, v7, :cond_5

    iput v3, v0, Lorg/mozilla/javascript/i;->k:I

    move v9, v5

    move v10, v9

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->X(I)V

    move v9, v3

    move v10, v9

    move v1, v8

    goto :goto_0

    :cond_6
    int-to-char v9, v1

    invoke-static {v9}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v9

    if-eqz v9, :cond_7

    iput v3, v0, Lorg/mozilla/javascript/i;->k:I

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    :cond_7
    move v10, v3

    :goto_0
    const/16 v11, 0x27

    const/4 v12, 0x4

    if-eqz v9, :cond_17

    move v1, v10

    :goto_1
    if-eqz v10, :cond_b

    move v4, v3

    move v6, v4

    :goto_2
    if-eq v4, v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v9

    invoke-static {v9, v6}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    if-gez v6, :cond_a

    iget-object v0, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.invalid.escape"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_a
    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/i;->a(I)V

    move v10, v3

    goto :goto_1

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v4

    if-ne v4, v8, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    if-ne v1, v7, :cond_c

    move v1, v5

    move v10, v1

    goto :goto_1

    :cond_c
    iget-object v0, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    const-string v3, "msg.illegal.character"

    invoke-virtual {v0, v3, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;I)V

    return v2

    :cond_d
    if-eq v4, v2, :cond_f

    const v6, 0xfeff

    if-eq v4, v6, :cond_f

    int-to-char v6, v4

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/i;->a(I)V

    goto :goto_1

    :cond_f
    :goto_4
    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/i;->X(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->t()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_15

    iget-object v1, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    iget-object v3, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v3}, Lorg/mozilla/javascript/Parser;->inUseStrictDirective()Z

    move-result v3

    invoke-static {v2, v1, v3}, Lorg/mozilla/javascript/i;->T(Ljava/lang/String;IZ)I

    move-result v1

    if-eqz v1, :cond_16

    const/16 v3, 0x9a

    if-eq v1, v3, :cond_10

    const/16 v3, 0x49

    if-ne v1, v3, :cond_12

    :cond_10
    iget-object v3, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xaa

    if-ge v3, v4, :cond_12

    const/16 v3, 0x9a

    if-ne v1, v3, :cond_11

    const-string v1, "let"

    goto :goto_5

    :cond_11
    const-string v1, "yield"

    :goto_5
    iput-object v1, v0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    move v1, v11

    :cond_12
    iget-object v3, v0, Lorg/mozilla/javascript/i;->l:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    const/16 v3, 0x80

    if-eq v1, v3, :cond_13

    return v1

    :cond_13
    iget-object v3, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_14

    return v1

    :cond_14
    iget-object v3, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    iget-object v3, v3, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v3}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result v3

    if-nez v3, :cond_16

    return v1

    :cond_15
    iget-object v1, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    iget-object v1, v1, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    iget-object v3, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v3}, Lorg/mozilla/javascript/Parser;->inUseStrictDirective()Z

    move-result v3

    invoke-static {v2, v1, v3}, Lorg/mozilla/javascript/i;->A(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {v2}, Lorg/mozilla/javascript/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_16
    iget-object v1, v0, Lorg/mozilla/javascript/i;->l:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    return v11

    :cond_17
    invoke-static {v1}, Lorg/mozilla/javascript/i;->x(I)Z

    move-result v9

    const/16 v10, 0x10

    const/16 v13, 0x78

    const/4 v14, 0x2

    const/16 v7, 0x2e

    const/16 v15, 0x30

    if-nez v9, :cond_57

    if-ne v1, v7, :cond_18

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->K()I

    move-result v9

    invoke-static {v9}, Lorg/mozilla/javascript/i;->x(I)Z

    move-result v9

    if-eqz v9, :cond_18

    goto/16 :goto_10

    :cond_18
    const/16 v9, 0x22

    if-eq v1, v9, :cond_47

    if-eq v1, v11, :cond_47

    const/16 v9, 0x60

    if-ne v1, v9, :cond_19

    goto/16 :goto_a

    :cond_19
    const/16 v9, 0x2f

    const/16 v11, 0x21

    const/16 v13, 0x3d

    if-eq v1, v11, :cond_44

    const/16 v15, 0x5b

    if-eq v1, v15, :cond_43

    const/16 v15, 0x25

    if-eq v1, v15, :cond_41

    const/16 v15, 0x26

    if-eq v1, v15, :cond_3e

    const/16 v15, 0x5d

    if-eq v1, v15, :cond_3d

    const/16 v15, 0x5e

    if-eq v1, v15, :cond_3b

    const/16 v4, 0x3e

    const/16 v15, 0xa2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    iget-object v0, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    const-string v3, "msg.illegal.character"

    invoke-virtual {v0, v3, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;I)V

    return v2

    :pswitch_0
    const/16 v0, 0x1b

    return v0

    :pswitch_1
    const/16 v0, 0x57

    return v0

    :pswitch_2
    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v0, 0x69

    return v0

    :cond_1a
    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    return v8

    :cond_1b
    const/16 v0, 0x9

    return v0

    :pswitch_3
    const/16 v0, 0x56

    return v0

    :pswitch_4
    const/16 v0, 0x67

    return v0

    :pswitch_5
    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v0, 0x61

    return v0

    :cond_1c
    const/16 v0, 0x14

    return v0

    :cond_1d
    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x60

    return v0

    :cond_1e
    const/16 v0, 0x13

    return v0

    :cond_1f
    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x11

    return v0

    :cond_20
    return v10

    :pswitch_6
    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_21

    return v7

    :cond_21
    const/16 v0, 0xc

    return v0

    :cond_22
    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 v0, 0xa5

    return v0

    :cond_23
    const/16 v0, 0x5b

    return v0

    :pswitch_7
    invoke-virtual {v0, v11}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_24

    iget v1, v0, Lorg/mozilla/javascript/i;->x:I

    sub-int/2addr v1, v12

    iput v1, v0, Lorg/mozilla/javascript/i;->y:I

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->S()V

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/i;->A:Lorg/mozilla/javascript/Token$CommentType;

    return v15

    :cond_24
    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/i;->Y(I)V

    :cond_25
    invoke-virtual {v0, v11}, Lorg/mozilla/javascript/i;->Y(I)V

    :cond_26
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v0, 0x5f

    return v0

    :cond_27
    const/16 v0, 0x12

    return v0

    :cond_28
    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0xf

    return v0

    :cond_29
    const/16 v0, 0xe

    return v0

    :pswitch_8
    const/16 v0, 0x53

    return v0

    :pswitch_9
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v0, 0x91

    return v0

    :cond_2a
    const/16 v0, 0x68

    return v0

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->H()V

    invoke-virtual {v0, v9}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget v1, v0, Lorg/mozilla/javascript/i;->x:I

    sub-int/2addr v1, v14

    iput v1, v0, Lorg/mozilla/javascript/i;->y:I

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->S()V

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->LINE:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/i;->A:Lorg/mozilla/javascript/Token$CommentType;

    return v15

    :cond_2b
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_31

    iget v1, v0, Lorg/mozilla/javascript/i;->x:I

    sub-int/2addr v1, v14

    iput v1, v0, Lorg/mozilla/javascript/i;->y:I

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->JSDOC:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/i;->A:Lorg/mozilla/javascript/Token$CommentType;

    :goto_6
    move v1, v5

    goto :goto_8

    :cond_2c
    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->BLOCK_COMMENT:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/i;->A:Lorg/mozilla/javascript/Token$CommentType;

    :goto_7
    move v1, v3

    :cond_2d
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v4

    if-ne v4, v2, :cond_2e

    iget v1, v0, Lorg/mozilla/javascript/i;->x:I

    sub-int/2addr v1, v5

    iput v1, v0, Lorg/mozilla/javascript/i;->z:I

    iget-object v0, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.unterminated.comment"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v15

    :cond_2e
    const/16 v6, 0x2a

    if-ne v4, v6, :cond_2f

    goto :goto_6

    :cond_2f
    if-ne v4, v9, :cond_30

    if-eqz v1, :cond_2d

    iget v1, v0, Lorg/mozilla/javascript/i;->x:I

    iput v1, v0, Lorg/mozilla/javascript/i;->z:I

    return v15

    :cond_30
    iget v1, v0, Lorg/mozilla/javascript/i;->x:I

    iput v1, v0, Lorg/mozilla/javascript/i;->z:I

    goto :goto_7

    :cond_31
    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 v0, 0x65

    return v0

    :cond_32
    const/16 v0, 0x18

    return v0

    :pswitch_b
    invoke-virtual {v0, v7}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_33

    const/16 v0, 0x90

    return v0

    :cond_33
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 v0, 0x93

    return v0

    :cond_34
    const/16 v0, 0x6d

    return v0

    :pswitch_c
    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_35

    const/16 v1, 0x63

    goto :goto_9

    :cond_35
    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-boolean v1, v0, Lorg/mozilla/javascript/i;->a:Z

    if-nez v1, :cond_36

    invoke-virtual {v0, v4}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "--"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->I(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->S()V

    sget-object v1, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v1, v0, Lorg/mozilla/javascript/i;->A:Lorg/mozilla/javascript/Token$CommentType;

    return v15

    :cond_36
    const/16 v1, 0x6c

    goto :goto_9

    :cond_37
    const/16 v1, 0x16

    :goto_9
    iput-boolean v5, v0, Lorg/mozilla/javascript/i;->a:Z

    return v1

    :pswitch_d
    const/16 v0, 0x5a

    return v0

    :pswitch_e
    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_38

    const/16 v0, 0x62

    return v0

    :cond_38
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_39

    const/16 v0, 0x6b

    return v0

    :cond_39
    const/16 v0, 0x15

    return v0

    :pswitch_f
    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/16 v0, 0x64

    return v0

    :cond_3a
    const/16 v0, 0x17

    return v0

    :pswitch_10
    const/16 v0, 0x59

    return v0

    :pswitch_11
    const/16 v0, 0x58

    return v0

    :cond_3b
    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v0, 0x5d

    return v0

    :cond_3c
    return v4

    :cond_3d
    const/16 v0, 0x55

    return v0

    :cond_3e
    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    const/16 v0, 0x6a

    return v0

    :cond_3f
    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_40

    const/16 v0, 0x5e

    return v0

    :cond_40
    const/16 v0, 0xb

    return v0

    :cond_41
    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_42

    const/16 v0, 0x66

    return v0

    :cond_42
    const/16 v0, 0x19

    return v0

    :cond_43
    const/16 v0, 0x54

    return v0

    :cond_44
    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->J(I)Z

    move-result v0

    if-eqz v0, :cond_45

    return v9

    :cond_45
    const/16 v0, 0xd

    return v0

    :cond_46
    const/16 v0, 0x1a

    return v0

    :cond_47
    :goto_a
    iput v1, v0, Lorg/mozilla/javascript/i;->i:I

    iput v3, v0, Lorg/mozilla/javascript/i;->k:I

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/i;->i(Z)I

    move-result v1

    :goto_b
    iget v5, v0, Lorg/mozilla/javascript/i;->i:I

    if-eq v1, v5, :cond_56

    if-eq v1, v4, :cond_55

    if-ne v1, v2, :cond_48

    goto/16 :goto_f

    :cond_48
    if-ne v1, v8, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    if-eq v1, v4, :cond_54

    const/16 v5, 0x62

    if-eq v1, v5, :cond_53

    const/16 v5, 0x66

    if-eq v1, v5, :cond_52

    const/16 v5, 0x6e

    if-eq v1, v5, :cond_51

    const/16 v5, 0x72

    if-eq v1, v5, :cond_50

    if-eq v1, v13, :cond_4e

    packed-switch v1, :pswitch_data_3

    if-gt v15, v1, :cond_4a

    const/16 v5, 0x38

    if-ge v1, v5, :cond_4a

    add-int/lit8 v1, v1, -0x30

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v6

    if-gt v15, v6, :cond_49

    if-ge v6, v5, :cond_49

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v6

    sub-int/2addr v1, v15

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v6

    if-gt v15, v6, :cond_49

    if-ge v6, v5, :cond_49

    const/16 v5, 0x1f

    if-gt v1, v5, :cond_49

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v6

    sub-int/2addr v1, v15

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v6

    :cond_49
    invoke-virtual {v0, v6}, Lorg/mozilla/javascript/i;->X(I)V

    :cond_4a
    :goto_c
    const/16 v5, 0x75

    goto/16 :goto_e

    :pswitch_12
    const/16 v1, 0xb

    goto :goto_c

    :pswitch_13
    iget v1, v0, Lorg/mozilla/javascript/i;->k:I

    const/16 v5, 0x75

    invoke-virtual {v0, v5}, Lorg/mozilla/javascript/i;->a(I)V

    move v6, v3

    move v7, v6

    :goto_d
    if-eq v7, v12, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v9

    invoke-static {v9, v6}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_4b

    move v1, v9

    goto :goto_b

    :cond_4b
    invoke-virtual {v0, v9}, Lorg/mozilla/javascript/i;->a(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_4c
    iput v1, v0, Lorg/mozilla/javascript/i;->k:I

    :cond_4d
    move v1, v6

    goto :goto_e

    :pswitch_14
    const/16 v5, 0x75

    const/16 v1, 0x9

    goto :goto_e

    :cond_4e
    const/16 v5, 0x75

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    invoke-static {v1, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_4f

    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->a(I)V

    goto/16 :goto_b

    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v7

    invoke-static {v7, v6}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v6

    if-gez v6, :cond_4d

    invoke-virtual {v0, v13}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    move v1, v7

    goto/16 :goto_b

    :cond_50
    const/16 v5, 0x75

    const/16 v1, 0xd

    goto :goto_e

    :cond_51
    const/16 v5, 0x75

    move v1, v4

    goto :goto_e

    :cond_52
    const/16 v5, 0x75

    const/16 v1, 0xc

    goto :goto_e

    :cond_53
    const/16 v5, 0x75

    const/16 v1, 0x8

    goto :goto_e

    :cond_54
    const/16 v5, 0x75

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    goto/16 :goto_b

    :goto_e
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual {v0, v3}, Lorg/mozilla/javascript/i;->i(Z)I

    move-result v1

    goto/16 :goto_b

    :cond_55
    :goto_f
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->X(I)V

    iget v1, v0, Lorg/mozilla/javascript/i;->x:I

    iput v1, v0, Lorg/mozilla/javascript/i;->z:I

    iget-object v0, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.unterminated.string.lit"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_56
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/mozilla/javascript/i;->l:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    const/16 v0, 0x29

    return v0

    :cond_57
    :goto_10
    iput v3, v0, Lorg/mozilla/javascript/i;->k:I

    iput-boolean v3, v0, Lorg/mozilla/javascript/i;->e:Z

    iput-boolean v3, v0, Lorg/mozilla/javascript/i;->g:Z

    iput-boolean v3, v0, Lorg/mozilla/javascript/i;->f:Z

    iput-boolean v3, v0, Lorg/mozilla/javascript/i;->h:Z

    iget-object v8, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    iget-object v8, v8, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v8}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v8

    const/16 v9, 0xc8

    if-lt v8, v9, :cond_58

    move v8, v5

    goto :goto_11

    :cond_58
    move v8, v3

    :goto_11
    if-ne v1, v15, :cond_5f

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    if-eq v1, v13, :cond_60

    const/16 v9, 0x58

    if-ne v1, v9, :cond_59

    goto :goto_13

    :cond_59
    if-eqz v8, :cond_5b

    const/16 v9, 0x6f

    if-eq v1, v9, :cond_5a

    const/16 v9, 0x4f

    if-ne v1, v9, :cond_5b

    :cond_5a
    iput-boolean v5, v0, Lorg/mozilla/javascript/i;->g:Z

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    :goto_12
    const/16 v8, 0x8

    goto :goto_14

    :cond_5b
    if-eqz v8, :cond_5d

    const/16 v8, 0x62

    if-eq v1, v8, :cond_5c

    const/16 v8, 0x42

    if-ne v1, v8, :cond_5d

    :cond_5c
    iput-boolean v5, v0, Lorg/mozilla/javascript/i;->e:Z

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    move v8, v14

    goto :goto_14

    :cond_5d
    invoke-static {v1}, Lorg/mozilla/javascript/i;->x(I)Z

    move-result v8

    if-eqz v8, :cond_5e

    iput-boolean v5, v0, Lorg/mozilla/javascript/i;->f:Z

    goto :goto_12

    :cond_5e
    invoke-virtual {v0, v15}, Lorg/mozilla/javascript/i;->a(I)V

    :cond_5f
    move v8, v4

    goto :goto_14

    :cond_60
    :goto_13
    iput-boolean v5, v0, Lorg/mozilla/javascript/i;->h:Z

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    move v8, v10

    :goto_14
    const-string v9, "msg.caught.nfe"

    if-ne v8, v10, :cond_61

    move v10, v5

    :goto_15
    invoke-static {v1, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v11

    if-ltz v11, :cond_66

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    move v10, v3

    goto :goto_15

    :cond_61
    move v10, v5

    :goto_16
    if-gt v15, v1, :cond_66

    const/16 v11, 0x39

    if-gt v1, v11, :cond_66

    const/16 v11, 0x8

    const/16 v12, 0x38

    if-ne v8, v11, :cond_64

    if-lt v1, v12, :cond_64

    iget-boolean v8, v0, Lorg/mozilla/javascript/i;->f:Z

    if-eqz v8, :cond_63

    iget-object v8, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    if-ne v1, v12, :cond_62

    const-string v10, "8"

    goto :goto_17

    :cond_62
    const-string v10, "9"

    :goto_17
    const-string v13, "msg.bad.octal.literal"

    invoke-virtual {v8, v13, v10}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v4

    goto :goto_18

    :cond_63
    iget-object v0, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v9}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_64
    if-ne v8, v14, :cond_65

    const/16 v10, 0x32

    if-lt v1, v10, :cond_65

    iget-object v0, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v9}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_65
    :goto_18
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    move v10, v3

    goto :goto_16

    :cond_66
    if-eqz v10, :cond_68

    iget-boolean v10, v0, Lorg/mozilla/javascript/i;->e:Z

    if-nez v10, :cond_67

    iget-boolean v10, v0, Lorg/mozilla/javascript/i;->g:Z

    if-nez v10, :cond_67

    iget-boolean v10, v0, Lorg/mozilla/javascript/i;->h:Z

    if-eqz v10, :cond_68

    :cond_67
    iget-object v0, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v9}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_68
    if-ne v8, v4, :cond_71

    if-eq v1, v7, :cond_69

    const/16 v10, 0x65

    if-eq v1, v10, :cond_69

    const/16 v10, 0x45

    if-ne v1, v10, :cond_71

    :cond_69
    if-ne v1, v7, :cond_6b

    :cond_6a
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/i;->x(I)Z

    move-result v5

    if-nez v5, :cond_6a

    :cond_6b
    const/16 v5, 0x65

    if-eq v1, v5, :cond_6d

    const/16 v5, 0x45

    if-ne v1, v5, :cond_6c

    goto :goto_1a

    :cond_6c
    :goto_19
    move v5, v3

    goto :goto_1b

    :cond_6d
    :goto_1a
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    const/16 v5, 0x2b

    if-eq v1, v5, :cond_6e

    if-ne v1, v6, :cond_6f

    :cond_6e
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    :cond_6f
    invoke-static {v1}, Lorg/mozilla/javascript/i;->x(I)Z

    move-result v5

    if-nez v5, :cond_70

    iget-object v0, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.missing.exponent"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_70
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->a(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->h()I

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/i;->x(I)Z

    move-result v5

    if-nez v5, :cond_70

    goto :goto_19

    :cond_71
    :goto_1b
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/i;->X(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/i;->t()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/mozilla/javascript/i;->c:Ljava/lang/String;

    if-ne v8, v4, :cond_72

    if-nez v5, :cond_72

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1c

    :catch_0
    iget-object v0, v0, Lorg/mozilla/javascript/i;->E:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v9}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v2

    :cond_72
    invoke-static {v1, v3, v8}, Lorg/mozilla/javascript/ScriptRuntime;->stringPrefixToNumber(Ljava/lang/String;II)D

    move-result-wide v1

    :goto_1c
    iput-wide v1, v0, Lorg/mozilla/javascript/i;->d:D

    const/16 v0, 0x28

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x74
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/i;->z:I

    iget p0, p0, Lorg/mozilla/javascript/i;->y:I

    sub-int/2addr v0, p0

    return v0
.end method
