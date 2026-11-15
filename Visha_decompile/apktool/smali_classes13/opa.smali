.class public Lopa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:[C

.field public d:I

.field public final e:Lorg/mozilla/javascript/ObjToIntMap;

.field public final f:[I

.field public g:I

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public final l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public final q:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lopa;->b:Ljava/lang/String;

    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lopa;->c:[C

    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v0, p0, Lopa;->e:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lopa;->f:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lopa;->h:Z

    iput v0, p0, Lopa;->i:I

    const/4 v1, -0x1

    iput v1, p0, Lopa;->j:I

    iput-object p1, p0, Lopa;->l:Ljava/lang/String;

    iput v0, p0, Lopa;->m:I

    iput v0, p0, Lopa;->n:I

    iput p2, p0, Lopa;->k:I

    iput p3, p0, Lopa;->q:I

    return-void
.end method

.method public static A(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "abstract"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x3c

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "default"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x3b

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "function"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x3a

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "transient"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x39

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "instanceof"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x38

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "debugger"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x37

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "interface"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x36

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "yield"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x35

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "while"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x34

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "throw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x33

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "super"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x32

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "short"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x31

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "float"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x30

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "final"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x2f

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "false"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x2e

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "const"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x2d

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "class"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x2c

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "catch"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x2b

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "break"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0x2a

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "boolean"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x29

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "with"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x28

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "void"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0x27

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0x26

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "this"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x25

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "long"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x23

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "goto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "enum"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "else"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "char"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "case"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "byte"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "var"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "try"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "new"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "let"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "int"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_25
    const-string v1, "for"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "in"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_27
    const-string v1, "if"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_28
    const-string v1, "do"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_29
    const-string v1, "private"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_2a
    const-string v1, "continue"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_2b
    const-string v1, "protected"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_2c
    const-string v1, "package"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_2d
    const-string v1, "finally"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_2e
    const-string v1, "typeof"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_2f
    const-string v1, "throws"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_30
    const-string v1, "switch"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_31
    const-string v1, "static"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_32
    const-string v1, "implements"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_33
    const-string v1, "return"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_34
    const-string v1, "public"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_35
    const-string v1, "native"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto :goto_0

    :cond_35
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_36
    const-string v1, "import"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto :goto_0

    :cond_36
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_37
    const-string v1, "export"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto :goto_0

    :cond_37
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_38
    const-string v1, "extends"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_0

    :cond_38
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_39
    const-string v1, "double"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto :goto_0

    :cond_39
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3a
    const-string v1, "delete"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_0

    :cond_3a
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3b
    const-string v1, "synchronized"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto :goto_0

    :cond_3b
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3c
    const-string v1, "volatile"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto :goto_0

    :cond_3c
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEFAULT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FUNCTION:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->INSTANCEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEBUGGER:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->YIELD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->WHILE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THROW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FALSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CONST:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CATCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BREAK:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_b
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->WITH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_c
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->VOID:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_d
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TRUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_e
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THIS:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_f
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NULL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_10
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ELSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_11
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CASE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_12
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->VAR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_13
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TRY:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_14
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NEW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_15
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LET:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_16
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_17
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_18
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_19
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DO:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_1a
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CONTINUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_1b
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FINALLY:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_1c
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TYPEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_1d
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SWITCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_1e
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RETURN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_1f
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EXPORT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_20
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DELPROP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_21
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RESERVED:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x70890264 -> :sswitch_3c
        -0x576a7aec -> :sswitch_3b
        -0x4f997a55 -> :sswitch_3a
        -0x4f08842f -> :sswitch_39
        -0x4dd2db67 -> :sswitch_38
        -0x4cd6ec4c -> :sswitch_37
        -0x469e8c5b -> :sswitch_36
        -0x3ebdafe9 -> :sswitch_35
        -0x3a424d97 -> :sswitch_34
        -0x37b1c2d0 -> :sswitch_33
        -0x368fa850 -> :sswitch_32
        -0x35323192 -> :sswitch_31
        -0x350448cc -> :sswitch_30
        -0x341ec9b3 -> :sswitch_2f
        -0x3330496f -> :sswitch_2e
        -0x32dbb67d -> :sswitch_2d
        -0x301acbba -> :sswitch_2c
        -0x24459452 -> :sswitch_2b
        -0x21ced359 -> :sswitch_2a
        -0x12beda7d -> :sswitch_29
        0xc8b -> :sswitch_28
        0xd1d -> :sswitch_27
        0xd25 -> :sswitch_26
        0x18cc9 -> :sswitch_25
        0x197ef -> :sswitch_24
        0x1a21b -> :sswitch_23
        0x1a9a0 -> :sswitch_22
        0x1c1bb -> :sswitch_21
        0x1c727 -> :sswitch_20
        0x2e6108 -> :sswitch_1f
        0x2e7b30 -> :sswitch_1e
        0x2e9356 -> :sswitch_1d
        0x2f8d39 -> :sswitch_1c
        0x2f9501 -> :sswitch_1b
        0x308163 -> :sswitch_1a
        0x32c67c -> :sswitch_19
        0x33c587 -> :sswitch_18
        0x364e9e -> :sswitch_17
        0x36758e -> :sswitch_16
        0x375194 -> :sswitch_15
        0x37b0c6 -> :sswitch_14
        0x3db6c28 -> :sswitch_13
        0x59a58ff -> :sswitch_12
        0x5a0eebb -> :sswitch_11
        0x5a5a978 -> :sswitch_10
        0x5a73763 -> :sswitch_f
        0x5cb1923 -> :sswitch_e
        0x5cec176 -> :sswitch_d
        0x5d0225c -> :sswitch_c
        0x685847c -> :sswitch_b
        0x68b6f7b -> :sswitch_a
        0x693a6e6 -> :sswitch_9
        0x6bdcb31 -> :sswitch_8
        0x6da5f8d -> :sswitch_7
        0x1df56d39 -> :sswitch_6
        0x20a6f421 -> :sswitch_5
        0x35c3d12c -> :sswitch_4
        0x3ebfa28a -> :sswitch_3
        0x524f73d8 -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x6749f022 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_21
        :pswitch_20
        :pswitch_21
        :pswitch_21
        :pswitch_1f
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_1e
        :pswitch_21
        :pswitch_21
        :pswitch_1d
        :pswitch_21
        :pswitch_1c
        :pswitch_1b
        :pswitch_21
        :pswitch_21
        :pswitch_1a
        :pswitch_21
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_21
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_21
        :pswitch_11
        :pswitch_21
        :pswitch_10
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_21
        :pswitch_a
        :pswitch_9
        :pswitch_21
        :pswitch_8
        :pswitch_7
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_21
        :pswitch_3
        :pswitch_2
        :pswitch_21
        :pswitch_1
        :pswitch_0
        :pswitch_21
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
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

.method public static j(I)Z
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

.method public static k(I)Z
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

.method public static l(II)Z
    .locals 1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lopa;->k(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/16 v0, 0x10

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Lopa;->n(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lopa;->r(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    invoke-static {p1}, Lopa;->m(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static m(I)Z
    .locals 1

    const/16 v0, 0x30

    if-eq v0, p0, :cond_1

    const/16 v0, 0x31

    if-ne p0, v0, :cond_0

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

.method public static n(I)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static o(I)Z
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

.method public static p(I)Z
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

.method public static q(Ljava/lang/String;IZ)Z
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-static {p0, p1, p2}, Lopa;->y(Ljava/lang/String;IZ)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static r(I)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x37

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y(Ljava/lang/String;IZ)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .locals 1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_0

    invoke-static {p0}, Lopa;->A(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p2}, Lopa;->z(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/String;Z)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "default"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x2d

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "function"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x2c

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "instanceof"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x2b

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "debugger"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x2a

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "interface"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x29

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "yield"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x28

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "while"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x27

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "throw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x26

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "super"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x25

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "false"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "const"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x23

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "class"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "catch"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "break"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "await"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "with"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "void"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "this"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "enum"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "else"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "case"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "var"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "try"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "new"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "let"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "for"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "in"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "if"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "do"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "private"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "continue"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "protected"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "package"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "finally"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "typeof"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_25
    const-string v1, "switch"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "static"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_0

    :cond_26
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_27
    const-string v1, "implements"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_0

    :cond_27
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_28
    const-string v1, "return"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_0

    :cond_28
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_29
    const-string v1, "public"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_0

    :cond_29
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2a
    const-string v1, "import"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto :goto_0

    :cond_2a
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2b
    const-string v1, "export"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_0

    :cond_2b
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2c
    const-string v1, "extends"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_0

    :cond_2c
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2d
    const-string v1, "delete"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_0

    :cond_2d
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEFAULT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FUNCTION:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->INSTANCEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEBUGGER:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->YIELD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->WHILE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THROW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FALSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CONST:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CATCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BREAK:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_b
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->WITH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_c
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->VOID:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_d
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TRUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_e
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THIS:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_f
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NULL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_10
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ELSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_11
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CASE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_12
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->VAR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_13
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TRY:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_14
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NEW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_15
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LET:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_16
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_17
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_18
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_19
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DO:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_1a
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CONTINUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_1b
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FINALLY:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_1c
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TYPEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_1d
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SWITCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_1e
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RETURN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_1f
    if-eqz p1, :cond_2e

    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RESERVED:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :cond_2e
    :goto_1
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_20
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IMPORT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_21
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EXPORT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_22
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RESERVED:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    :pswitch_23
    sget-object p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DELPROP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_2d
        -0x4dd2db67 -> :sswitch_2c
        -0x4cd6ec4c -> :sswitch_2b
        -0x469e8c5b -> :sswitch_2a
        -0x3a424d97 -> :sswitch_29
        -0x37b1c2d0 -> :sswitch_28
        -0x368fa850 -> :sswitch_27
        -0x35323192 -> :sswitch_26
        -0x350448cc -> :sswitch_25
        -0x3330496f -> :sswitch_24
        -0x32dbb67d -> :sswitch_23
        -0x301acbba -> :sswitch_22
        -0x24459452 -> :sswitch_21
        -0x21ced359 -> :sswitch_20
        -0x12beda7d -> :sswitch_1f
        0xc8b -> :sswitch_1e
        0xd1d -> :sswitch_1d
        0xd25 -> :sswitch_1c
        0x18cc9 -> :sswitch_1b
        0x1a21b -> :sswitch_1a
        0x1a9a0 -> :sswitch_19
        0x1c1bb -> :sswitch_18
        0x1c727 -> :sswitch_17
        0x2e7b30 -> :sswitch_16
        0x2f8d39 -> :sswitch_15
        0x2f9501 -> :sswitch_14
        0x33c587 -> :sswitch_13
        0x364e9e -> :sswitch_12
        0x36758e -> :sswitch_11
        0x375194 -> :sswitch_10
        0x37b0c6 -> :sswitch_f
        0x58e7956 -> :sswitch_e
        0x59a58ff -> :sswitch_d
        0x5a0eebb -> :sswitch_c
        0x5a5a978 -> :sswitch_b
        0x5a73763 -> :sswitch_a
        0x5cb1923 -> :sswitch_9
        0x68b6f7b -> :sswitch_8
        0x693a6e6 -> :sswitch_7
        0x6bdcb31 -> :sswitch_6
        0x6da5f8d -> :sswitch_5
        0x1df56d39 -> :sswitch_4
        0x20a6f421 -> :sswitch_3
        0x35c3d12c -> :sswitch_2
        0x524f73d8 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1f
        :pswitch_1f
        :pswitch_1a
        :pswitch_1f
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_22
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_22
        :pswitch_a
        :pswitch_9
        :pswitch_22
        :pswitch_8
        :pswitch_7
        :pswitch_22
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final B(I)V
    .locals 3

    iget v0, p0, Lopa;->g:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lopa;->f:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lopa;->f:[I

    iget v1, p0, Lopa;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lopa;->g:I

    aput p1, v0, v1

    iget p1, p0, Lopa;->n:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lopa;->n:I

    return-void
.end method

.method public final C(I)V
    .locals 3

    iget-object v0, p0, Lopa;->f:[I

    iget v1, p0, Lopa;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lopa;->g:I

    aput p1, v0, v1

    iget p1, p0, Lopa;->n:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lopa;->n:I

    return-void
.end method

.method public final a(I)V
    .locals 4

    iget v0, p0, Lopa;->d:I

    iget-object v1, p0, Lopa;->c:[C

    array-length v2, v1

    if-ne v0, v2, :cond_0

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lopa;->c:[C

    :cond_0
    iget-object v1, p0, Lopa;->c:[C

    int-to-char p1, p1

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lopa;->d:I

    return-void
.end method

.method public final c()I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lopa;->e(ZZ)I

    move-result p0

    return p0
.end method

.method public final d(Z)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lopa;->e(ZZ)I

    move-result p0

    return p0
.end method

.method public final e(ZZ)I
    .locals 6

    iget v0, p0, Lopa;->g:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lopa;->n:I

    add-int/2addr p1, v1

    iput p1, p0, Lopa;->n:I

    iget-object p1, p0, Lopa;->f:[I

    sub-int/2addr v0, v1

    iput v0, p0, Lopa;->g:I

    aget p0, p1, v0

    return p0

    :cond_0
    :goto_0
    iget v0, p0, Lopa;->m:I

    iget-object v2, p0, Lopa;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    iput-boolean v1, p0, Lopa;->h:Z

    return v3

    :cond_1
    iget v0, p0, Lopa;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lopa;->n:I

    iget-object v0, p0, Lopa;->l:Ljava/lang/String;

    iget v2, p0, Lopa;->m:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lopa;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xd

    const/16 v4, 0xa

    if-nez p2, :cond_3

    iget v5, p0, Lopa;->j:I

    if-ltz v5, :cond_3

    if-ne v5, v2, :cond_2

    if-ne v0, v4, :cond_2

    iput v4, p0, Lopa;->j:I

    goto :goto_0

    :cond_2
    iput v3, p0, Lopa;->j:I

    iget v3, p0, Lopa;->m:I

    sub-int/2addr v3, v1

    iput v3, p0, Lopa;->i:I

    iget v3, p0, Lopa;->k:I

    add-int/2addr v3, v1

    iput v3, p0, Lopa;->k:I

    :cond_3
    const/16 v3, 0x7f

    if-gt v0, v3, :cond_5

    if-eq v0, v4, :cond_4

    if-ne v0, v2, :cond_8

    :cond_4
    iput v0, p0, Lopa;->j:I

    :goto_1
    move v0, v4

    goto :goto_2

    :cond_5
    const v2, 0xfeff

    if-ne v0, v2, :cond_6

    return v0

    :cond_6
    if-eqz p1, :cond_7

    invoke-static {v0}, Lopa;->o(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result p1

    if-eqz p1, :cond_8

    iput v0, p0, Lopa;->j:I

    goto :goto_1

    :cond_8
    :goto_2
    return v0
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lopa;->e(ZZ)I

    move-result p0

    return p0
.end method

.method public final g(Z)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lopa;->e(ZZ)I

    move-result p0

    return p0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lopa;->n:I

    iput v0, p0, Lopa;->p:I

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lopa;->c:[C

    const/4 v2, 0x0

    iget p0, p0, Lopa;->d:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final i()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .locals 16

    move-object/from16 v0, p0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v1, v0, Lopa;->n:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lopa;->o:I

    iput v1, v0, Lopa;->p:I

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_1
    const/16 v3, 0xa

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    iput-boolean v4, v0, Lopa;->a:Z

    iget v1, v0, Lopa;->n:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lopa;->o:I

    iput v1, v0, Lopa;->p:I

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_2
    invoke-static {v1}, Lopa;->p(I)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x2d

    const/4 v6, 0x1

    if-eq v1, v5, :cond_3

    iput-boolean v6, v0, Lopa;->a:Z

    :cond_3
    iget v7, v0, Lopa;->n:I

    add-int/lit8 v8, v7, -0x1

    iput v8, v0, Lopa;->o:I

    iput v7, v0, Lopa;->p:I

    const/16 v7, 0x75

    const/16 v8, 0x5c

    if-ne v1, v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v1

    if-ne v1, v7, :cond_4

    iput v4, v0, Lopa;->d:I

    move v9, v6

    move v10, v9

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v1}, Lopa;->B(I)V

    move v9, v4

    move v10, v9

    move v1, v8

    goto :goto_0

    :cond_5
    int-to-char v9, v1

    invoke-static {v9}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v9

    if-eqz v9, :cond_6

    iput v4, v0, Lopa;->d:I

    invoke-virtual {v0, v1}, Lopa;->a(I)V

    :cond_6
    move v10, v4

    :goto_0
    const-string v11, "illegal character: \'%c\'"

    const/16 v12, 0xc8

    const/4 v13, 0x4

    if-eqz v9, :cond_15

    move v1, v10

    :goto_1
    if-eqz v10, :cond_a

    move v3, v4

    move v5, v3

    :goto_2
    if-eq v3, v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v9

    invoke-static {v9, v5}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v5

    if-gez v5, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    if-ltz v5, :cond_9

    invoke-virtual {v0, v5}, Lopa;->a(I)V

    move v10, v4

    goto :goto_1

    :cond_9
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "invalid unicode escape"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v3

    if-ne v3, v8, :cond_c

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v1

    if-ne v1, v7, :cond_b

    move v1, v6

    move v10, v1

    goto :goto_1

    :cond_b
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-eq v3, v2, :cond_e

    const v5, 0xfeff

    if-eq v3, v5, :cond_e

    int-to-char v5, v3

    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {v0, v3}, Lopa;->a(I)V

    goto :goto_1

    :cond_e
    :goto_4
    invoke-virtual {v0, v3}, Lopa;->B(I)V

    invoke-virtual/range {p0 .. p0}, Lopa;->h()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_13

    iget v1, v0, Lopa;->q:I

    invoke-static {v2, v1, v4}, Lopa;->y(Ljava/lang/String;IZ)Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object v1

    sget-object v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v1, v3, :cond_14

    sget-object v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LET:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v1, v3, :cond_f

    sget-object v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->YIELD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v1, v4, :cond_11

    :cond_f
    iget v4, v0, Lopa;->q:I

    const/16 v5, 0xaa

    if-ge v4, v5, :cond_11

    if-ne v1, v3, :cond_10

    const-string v1, "let"

    goto :goto_5

    :cond_10
    const-string v1, "yield"

    :goto_5
    iput-object v1, v0, Lopa;->b:Ljava/lang/String;

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NAME:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    :cond_11
    iget-object v3, v0, Lopa;->e:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lopa;->b:Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RESERVED:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v1, v3, :cond_12

    return-object v1

    :cond_12
    iget v3, v0, Lopa;->q:I

    if-lt v3, v12, :cond_14

    return-object v1

    :cond_13
    iget v1, v0, Lopa;->q:I

    invoke-static {v2, v1, v4}, Lopa;->q(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v2}, Lopa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_14
    iget-object v1, v0, Lopa;->e:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lopa;->b:Ljava/lang/String;

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NAME:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_15
    invoke-static {v1}, Lopa;->k(I)Z

    move-result v9

    const/16 v10, 0x2e

    const/16 v15, 0x78

    const/4 v7, 0x2

    const/16 v14, 0x30

    if-nez v9, :cond_58

    if-ne v1, v10, :cond_16

    invoke-virtual/range {p0 .. p0}, Lopa;->u()I

    move-result v9

    invoke-static {v9}, Lopa;->k(I)Z

    move-result v9

    if-eqz v9, :cond_16

    goto/16 :goto_12

    :cond_16
    const/16 v9, 0x22

    if-eq v1, v9, :cond_44

    const/16 v9, 0x27

    if-eq v1, v9, :cond_44

    const/16 v9, 0x60

    if-ne v1, v9, :cond_17

    goto/16 :goto_a

    :cond_17
    const/16 v3, 0x21

    const/16 v8, 0x3d

    if-eq v1, v3, :cond_41

    const/16 v9, 0x5b

    if-eq v1, v9, :cond_40

    const/16 v9, 0x25

    if-eq v1, v9, :cond_3e

    const/16 v9, 0x26

    if-eq v1, v9, :cond_3b

    const/16 v9, 0x5d

    if-eq v1, v9, :cond_3a

    const/16 v9, 0x5e

    if-eq v1, v9, :cond_38

    const/16 v9, 0x2a

    const/16 v10, 0x3e

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v11, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITNOT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_1
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_2
    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->OR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_18
    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_BITOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_19
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_3
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_4
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->HOOK:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_5
    invoke-virtual {v0, v10}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0, v10}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_URSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_1a
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->URSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_1b
    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_RSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_1c
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_1d
    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->GE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_1e
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->GT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_6
    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SHEQ:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_1f
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EQ:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_20
    invoke-virtual {v0, v10}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ARROW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_21
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_7
    invoke-virtual {v0, v3}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0, v5}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0, v5}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_22

    iget v1, v0, Lopa;->n:I

    sub-int/2addr v1, v13

    iput v1, v0, Lopa;->o:I

    invoke-virtual/range {p0 .. p0}, Lopa;->x()V

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_22
    invoke-virtual {v0, v5}, Lopa;->C(I)V

    :cond_23
    invoke-virtual {v0, v3}, Lopa;->C(I)V

    :cond_24
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_LSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_25
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_26
    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_27
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_8
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SEMI:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_9
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COLON:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_a
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_28

    iget v1, v0, Lopa;->n:I

    sub-int/2addr v1, v7

    iput v1, v0, Lopa;->o:I

    invoke-virtual/range {p0 .. p0}, Lopa;->x()V

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_28
    invoke-virtual {v0, v9}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget v1, v0, Lopa;->n:I

    sub-int/2addr v1, v7

    iput v1, v0, Lopa;->o:I

    invoke-virtual {v0, v9}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_29

    :goto_6
    move v1, v6

    goto :goto_8

    :cond_29
    :goto_7
    move v1, v4

    :cond_2a
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v3

    if-eq v3, v2, :cond_2d

    if-ne v3, v9, :cond_2b

    goto :goto_6

    :cond_2b
    const/16 v5, 0x2f

    if-ne v3, v5, :cond_2c

    if-eqz v1, :cond_2a

    iget v1, v0, Lopa;->n:I

    iput v1, v0, Lopa;->p:I

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_2c
    iget v1, v0, Lopa;->n:I

    iput v1, v0, Lopa;->p:I

    goto :goto_7

    :cond_2d
    iget v1, v0, Lopa;->n:I

    sub-int/2addr v1, v6

    iput v1, v0, Lopa;->p:I

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "unterminated comment"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_2f
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_b
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DOT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_c
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SUB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v2

    if-eqz v2, :cond_30

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_SUB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    goto :goto_9

    :cond_30
    invoke-virtual {v0, v5}, Lopa;->s(I)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-boolean v1, v0, Lopa;->a:Z

    if-nez v1, :cond_31

    invoke-virtual {v0, v10}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual/range {p0 .. p0}, Lopa;->x()V

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_31
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    :cond_32
    :goto_9
    iput-boolean v6, v0, Lopa;->a:Z

    return-object v1

    :pswitch_d
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMA:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_e
    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_33

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_ADD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_33
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->INC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_34
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ADD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_f
    iget v1, v0, Lopa;->q:I

    if-lt v1, v12, :cond_36

    invoke-virtual {v0, v9}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_EXP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_35
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EXP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_36
    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_MUL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_37
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->MUL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_10
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :pswitch_11
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_38
    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_BITXOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_39
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITXOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_3a
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_3b
    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_3c

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->AND:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_3c
    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_BITAND:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_3d
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITAND:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_3e
    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_MOD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_3f
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->MOD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_40
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_41
    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0, v8}, Lopa;->s(I)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SHNE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_42
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_43
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NOT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_44
    :goto_a
    iput v4, v0, Lopa;->d:I

    invoke-virtual {v0, v4}, Lopa;->g(Z)I

    move-result v5

    :goto_b
    if-eq v5, v1, :cond_56

    if-ne v5, v2, :cond_46

    :cond_45
    move v7, v6

    goto :goto_d

    :cond_46
    if-ne v5, v3, :cond_48

    iget v7, v0, Lopa;->j:I

    if-eq v7, v3, :cond_45

    const/16 v9, 0xd

    if-eq v7, v9, :cond_45

    const/16 v9, 0x2028

    if-eq v7, v9, :cond_47

    const/16 v9, 0x2029

    if-eq v7, v9, :cond_47

    goto :goto_c

    :cond_47
    move v5, v7

    :cond_48
    :goto_c
    move v7, v4

    :goto_d
    if-nez v7, :cond_55

    if-ne v5, v8, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v5

    if-eq v5, v3, :cond_54

    const/16 v7, 0x62

    if-eq v5, v7, :cond_53

    const/16 v7, 0x66

    if-eq v5, v7, :cond_52

    const/16 v7, 0x6e

    if-eq v5, v7, :cond_51

    const/16 v7, 0x72

    if-eq v5, v7, :cond_50

    if-eq v5, v15, :cond_4e

    packed-switch v5, :pswitch_data_3

    if-gt v14, v5, :cond_4a

    const/16 v7, 0x38

    if-ge v5, v7, :cond_4a

    add-int/lit8 v5, v5, -0x30

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v9

    if-gt v14, v9, :cond_49

    if-ge v9, v7, :cond_49

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v9

    sub-int/2addr v5, v14

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v9

    if-gt v14, v9, :cond_49

    if-ge v9, v7, :cond_49

    const/16 v7, 0x1f

    if-gt v5, v7, :cond_49

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v9

    sub-int/2addr v5, v14

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v9

    :cond_49
    invoke-virtual {v0, v9}, Lopa;->B(I)V

    :cond_4a
    :goto_e
    const/16 v7, 0x75

    goto/16 :goto_10

    :pswitch_12
    const/16 v5, 0xb

    goto :goto_e

    :pswitch_13
    iget v5, v0, Lopa;->d:I

    const/16 v7, 0x75

    invoke-virtual {v0, v7}, Lopa;->a(I)V

    move v9, v4

    move v10, v9

    :goto_f
    if-eq v10, v13, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v11

    invoke-static {v11, v9}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v9

    if-gez v9, :cond_4b

    move v5, v11

    goto/16 :goto_b

    :cond_4b
    invoke-virtual {v0, v11}, Lopa;->a(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_4c
    iput v5, v0, Lopa;->d:I

    :cond_4d
    move v5, v9

    goto :goto_10

    :pswitch_14
    const/16 v7, 0x75

    const/16 v5, 0x9

    goto :goto_10

    :cond_4e
    const/16 v7, 0x75

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v5

    invoke-static {v5, v4}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v9

    if-gez v9, :cond_4f

    invoke-virtual {v0, v15}, Lopa;->a(I)V

    goto/16 :goto_b

    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v10

    invoke-static {v10, v9}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v9

    if-gez v9, :cond_4d

    invoke-virtual {v0, v15}, Lopa;->a(I)V

    invoke-virtual {v0, v5}, Lopa;->a(I)V

    move v5, v10

    goto/16 :goto_b

    :cond_50
    const/16 v7, 0x75

    const/16 v5, 0xd

    goto :goto_10

    :cond_51
    const/16 v7, 0x75

    move v5, v3

    goto :goto_10

    :cond_52
    const/16 v7, 0x75

    const/16 v5, 0xc

    goto :goto_10

    :cond_53
    const/16 v7, 0x75

    const/16 v5, 0x8

    goto :goto_10

    :cond_54
    const/16 v7, 0x75

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v5

    goto/16 :goto_b

    :goto_10
    invoke-virtual {v0, v5}, Lopa;->a(I)V

    invoke-virtual {v0, v4}, Lopa;->d(Z)I

    move-result v5

    goto/16 :goto_b

    :cond_55
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "unterminated string literal"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    invoke-virtual/range {p0 .. p0}, Lopa;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lopa;->e:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v3, v2}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lopa;->b:Ljava/lang/String;

    const/16 v0, 0x60

    if-ne v1, v0, :cond_57

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TEMPLATE_LITERAL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    goto :goto_11

    :cond_57
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->STRING:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    :goto_11
    return-object v0

    :cond_58
    :goto_12
    iput v4, v0, Lopa;->d:I

    iget v2, v0, Lopa;->q:I

    if-lt v2, v12, :cond_59

    move v2, v6

    goto :goto_13

    :cond_59
    move v2, v4

    :goto_13
    if-ne v1, v14, :cond_60

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v1

    if-eq v1, v15, :cond_61

    const/16 v8, 0x58

    if-ne v1, v8, :cond_5a

    goto :goto_15

    :cond_5a
    if-eqz v2, :cond_5c

    const/16 v8, 0x6f

    if-eq v1, v8, :cond_5b

    const/16 v8, 0x4f

    if-ne v1, v8, :cond_5c

    :cond_5b
    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v1

    :goto_14
    const/16 v6, 0x8

    goto :goto_16

    :cond_5c
    if-eqz v2, :cond_5e

    const/16 v8, 0x62

    if-eq v1, v8, :cond_5d

    const/16 v8, 0x42

    if-ne v1, v8, :cond_5e

    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v1

    move v6, v7

    goto :goto_16

    :cond_5e
    invoke-static {v1}, Lopa;->k(I)Z

    move-result v8

    if-eqz v8, :cond_5f

    move v4, v6

    goto :goto_14

    :cond_5f
    invoke-virtual {v0, v14}, Lopa;->a(I)V

    :cond_60
    move v6, v3

    goto :goto_16

    :cond_61
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v1

    const/16 v6, 0x10

    :goto_16
    iget v8, v0, Lopa;->d:I

    const/4 v9, -0x2

    const-string v11, "number format error"

    if-eq v6, v3, :cond_66

    const/16 v12, 0x10

    if-eq v6, v12, :cond_66

    const/16 v12, 0x8

    if-ne v6, v12, :cond_62

    if-eqz v4, :cond_66

    :cond_62
    if-ne v6, v7, :cond_63

    goto :goto_18

    :cond_63
    :goto_17
    invoke-static {v1}, Lopa;->k(I)Z

    move-result v4

    if-eqz v4, :cond_67

    const/16 v4, 0x38

    if-lt v1, v4, :cond_65

    invoke-virtual {v0, v3, v1}, Lopa;->v(II)I

    move-result v1

    if-eq v1, v9, :cond_64

    move v6, v3

    goto :goto_19

    :cond_64
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v0, v11}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    invoke-virtual {v0, v1}, Lopa;->a(I)V

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v1

    goto :goto_17

    :cond_66
    :goto_18
    invoke-virtual {v0, v6, v1}, Lopa;->v(II)I

    move-result v1

    if-eq v1, v9, :cond_74

    :cond_67
    :goto_19
    iget v4, v0, Lopa;->d:I

    if-ne v4, v8, :cond_69

    if-ne v6, v3, :cond_68

    goto :goto_1a

    :cond_68
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v0, v11}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    :goto_1a
    if-eqz v2, :cond_6a

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_6a

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v1

    goto :goto_1c

    :cond_6a
    if-ne v6, v3, :cond_73

    if-eq v1, v10, :cond_6b

    const/16 v2, 0x65

    if-eq v1, v2, :cond_6b

    const/16 v2, 0x45

    if-ne v1, v2, :cond_73

    :cond_6b
    if-ne v1, v10, :cond_6d

    invoke-virtual {v0, v1}, Lopa;->a(I)V

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Lopa;->v(II)I

    move-result v1

    if-eq v1, v9, :cond_6c

    goto :goto_1b

    :cond_6c
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v0, v11}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    :goto_1b
    const/16 v2, 0x65

    if-eq v1, v2, :cond_6e

    const/16 v2, 0x45

    if-ne v1, v2, :cond_73

    :cond_6e
    invoke-virtual {v0, v1}, Lopa;->a(I)V

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_6f

    if-ne v1, v5, :cond_70

    :cond_6f
    invoke-virtual {v0, v1}, Lopa;->a(I)V

    invoke-virtual/range {p0 .. p0}, Lopa;->c()I

    move-result v1

    :cond_70
    invoke-static {v1}, Lopa;->k(I)Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-virtual {v0, v6, v1}, Lopa;->v(II)I

    move-result v1

    if-eq v1, v9, :cond_71

    goto :goto_1c

    :cond_71
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v0, v11}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "missing exponent"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    :goto_1c
    invoke-virtual {v0, v1}, Lopa;->B(I)V

    invoke-virtual/range {p0 .. p0}, Lopa;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lopa;->b:Ljava/lang/String;

    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NUMBER:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    return-object v0

    :cond_74
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {v0, v11}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

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

.method public final s(I)Z
    .locals 1

    invoke-virtual {p0}, Lopa;->f()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget p1, p0, Lopa;->n:I

    iput p1, p0, Lopa;->p:I

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Lopa;->C(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public t()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .locals 2

    invoke-virtual {p0}, Lopa;->i()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lopa;->i()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    move-result-object v0

    goto :goto_0
.end method

.method public final u()I
    .locals 1

    invoke-virtual {p0}, Lopa;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lopa;->B(I)V

    return v0
.end method

.method public final v(II)I
    .locals 3

    invoke-static {p1, p2}, Lopa;->l(II)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lopa;->a(I)V

    invoke-virtual {p0}, Lopa;->c()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return v0

    :cond_0
    :goto_0
    const/16 v1, 0x5f

    if-ne p2, v1, :cond_4

    invoke-virtual {p0}, Lopa;->c()I

    move-result p2

    const/16 v2, 0xa

    if-eq p2, v2, :cond_3

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lopa;->l(II)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p2}, Lopa;->B(I)V

    return v1

    :cond_2
    invoke-virtual {p0, v1}, Lopa;->a(I)V

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, -0x2

    return p0

    :cond_4
    invoke-static {p1, p2}, Lopa;->l(II)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p2}, Lopa;->a(I)V

    invoke-virtual {p0}, Lopa;->c()I

    move-result p2

    if-ne p2, v0, :cond_0

    return v0

    :cond_5
    return p2
.end method

.method public w(Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;)V
    .locals 8

    iget v0, p0, Lopa;->o:I

    const/4 v1, 0x0

    iput v1, p0, Lopa;->d:I

    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    const/4 v3, 0x1

    const-string v4, "msg.unterminated.re.lit"

    if-ne p1, v2, :cond_0

    const/16 p1, 0x3d

    invoke-virtual {p0, p1}, Lopa;->a(I)V

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    if-eq p1, v2, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_1
    invoke-virtual {p0}, Lopa;->u()I

    move-result p1

    const/16 v2, 0x2a

    if-eq p1, v2, :cond_b

    :goto_0
    move p1, v1

    :goto_1
    invoke-virtual {p0}, Lopa;->c()I

    move-result v2

    const/16 v5, 0x2f

    const/4 v6, -0x1

    if-ne v2, v5, :cond_5

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    iget p1, p0, Lopa;->d:I

    :goto_2
    invoke-virtual {p0}, Lopa;->f()I

    move-result v2

    const-string v3, "gimysu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_3

    invoke-virtual {p0, v2}, Lopa;->a(I)V

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lopa;->j(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v2}, Lopa;->C(I)V

    iget v2, p0, Lopa;->d:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lopa;->p:I

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lopa;->c:[C

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lopa;->b:Ljava/lang/String;

    return-void

    :cond_4
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string p1, "msg.invalid.re.flag"

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    const/16 v5, 0xa

    if-eq v2, v5, :cond_a

    if-eq v2, v6, :cond_a

    const/16 v7, 0x5c

    if-ne v2, v7, :cond_7

    invoke-virtual {p0, v2}, Lopa;->a(I)V

    invoke-virtual {p0}, Lopa;->c()I

    move-result v2

    if-eq v2, v5, :cond_6

    if-eq v2, v6, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {p0, v4}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const/16 v5, 0x5b

    if-ne v2, v5, :cond_8

    move p1, v3

    goto :goto_4

    :cond_8
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_9

    move p1, v1

    :cond_9
    :goto_4
    invoke-virtual {p0, v2}, Lopa;->a(I)V

    goto :goto_1

    :cond_a
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {p0, v4}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    iget p1, p0, Lopa;->n:I

    sub-int/2addr p1, v3

    iput p1, p0, Lopa;->p:I

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lopa;->c:[C

    iget v2, p0, Lopa;->d:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lopa;->b:Ljava/lang/String;

    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-direct {p0, v4}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x()V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lopa;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lopa;->B(I)V

    iget v0, p0, Lopa;->n:I

    iput v0, p0, Lopa;->p:I

    return-void
.end method
