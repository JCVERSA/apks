.class Lorg/mozilla/javascript/regexp/NativeRegExpCtor;
.super Lorg/mozilla/javascript/BaseFunction;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x4f90e148c40815ceL


# instance fields
.field private inputAttr:I

.field private multilineAttr:I

.field private starAttr:I

.field private underscoreAttr:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->multilineAttr:I

    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->starAttr:I

    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->inputAttr:I

    iput v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->underscoreAttr:I

    return-void
.end method

.method public static b()Lorg/mozilla/javascript/regexp/RegExpImpl;
    .locals 1

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/regexp/RegExpImpl;

    return-object v0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    array-length p3, p4

    if-lez p3, :cond_1

    const/4 p3, 0x0

    aget-object p3, p4, p3

    instance-of v0, p3, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz v0, :cond_1

    array-length v0, p4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    aget-object v0, p4, v1

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    :cond_0
    return-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p4}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 0

    new-instance p0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    sget-object p1, Lorg/mozilla/javascript/TopLevel$Builtins;->RegExp:Lorg/mozilla/javascript/TopLevel$Builtins;

    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setBuiltinProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/TopLevel$Builtins;)V

    return-object p0
.end method

.method public findInstanceIdInfo(Ljava/lang/String;)I
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    const/16 v8, 0x9

    if-eq v0, v8, :cond_2

    const/16 v9, 0xb

    if-eq v0, v9, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "rightContext"

    move v2, v9

    goto/16 :goto_1

    :cond_1
    const-string v0, "leftContext"

    move v2, v8

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x4d

    if-ne v0, v2, :cond_3

    const-string v0, "lastMatch"

    move v2, v5

    goto/16 :goto_1

    :cond_3
    const/16 v2, 0x50

    if-ne v0, v2, :cond_4

    const-string v0, "lastParen"

    const/4 v2, 0x7

    goto/16 :goto_1

    :cond_4
    const/16 v2, 0x69

    if-ne v0, v2, :cond_d

    const-string v0, "multiline"

    move v2, v3

    goto/16 :goto_1

    :cond_5
    const-string v0, "input"

    move v2, v1

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x26

    const/16 v9, 0x24

    if-eq v0, v8, :cond_c

    const/16 v8, 0x27

    if-eq v0, v8, :cond_b

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_a

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_9

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_8

    const/16 v2, 0x60

    if-eq v0, v2, :cond_7

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d

    const/16 v2, 0x15

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d

    const/16 v2, 0x14

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d

    const/16 v2, 0x13

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d

    const/16 v2, 0x12

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d

    const/16 v2, 0x11

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d

    const/16 v2, 0x10

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d

    const/16 v2, 0xf

    goto :goto_2

    :pswitch_7
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d

    const/16 v2, 0xe

    goto :goto_2

    :pswitch_8
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d

    const/16 v2, 0xd

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d

    const/16 v2, 0xa

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d

    move v2, v4

    goto :goto_2

    :cond_9
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d

    const/16 v2, 0x8

    goto :goto_2

    :cond_a
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d

    move v2, v6

    goto :goto_2

    :cond_b
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d

    goto :goto_2

    :cond_c
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_d

    const/4 v2, 0x6

    goto :goto_2

    :cond_d
    :goto_0
    const/4 v0, 0x0

    move v2, v7

    :goto_1
    if-eqz v0, :cond_e

    if-eq v0, p1, :cond_e

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    move v2, v7

    :cond_e
    :goto_2
    if-nez v2, :cond_f

    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_f
    if-eq v2, v3, :cond_13

    if-eq v2, v6, :cond_12

    if-eq v2, v1, :cond_11

    if-eq v2, v4, :cond_10

    goto :goto_3

    :cond_10
    iget v5, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->underscoreAttr:I

    goto :goto_3

    :cond_11
    iget v5, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->inputAttr:I

    goto :goto_3

    :cond_12
    iget v5, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->starAttr:I

    goto :goto_3

    :cond_13
    iget v5, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->multilineAttr:I

    :goto_3
    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v5, p0}, Lorg/mozilla/javascript/IdScriptableObject;->instanceIdInfo(II)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x31
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

.method public getArity()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 0

    const-string p0, "RegExp"

    return-object p0
.end method

.method public getInstanceIdName(I)Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_0

    const/16 v2, 0x15

    if-gt v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, v0, 0x24

    int-to-char p0, v0

    const/4 p1, 0x2

    new-array p1, p1, [C

    const/16 v0, 0x24

    const/4 v2, 0x0

    aput-char v0, p1, v2

    aput-char p0, p1, v1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :pswitch_0
    const-string p0, "$\'"

    return-object p0

    :pswitch_1
    const-string p0, "rightContext"

    return-object p0

    :pswitch_2
    const-string p0, "$`"

    return-object p0

    :pswitch_3
    const-string p0, "leftContext"

    return-object p0

    :pswitch_4
    const-string p0, "$+"

    return-object p0

    :pswitch_5
    const-string p0, "lastParen"

    return-object p0

    :pswitch_6
    const-string p0, "$&"

    return-object p0

    :pswitch_7
    const-string p0, "lastMatch"

    return-object p0

    :pswitch_8
    const-string p0, "$_"

    return-object p0

    :pswitch_9
    const-string p0, "input"

    return-object p0

    :pswitch_a
    const-string p0, "$*"

    return-object p0

    :pswitch_b
    const-string p0, "multiline"

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public getInstanceIdValue(I)Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_1

    const/16 v1, 0x15

    if-gt v0, v1, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->b()Lorg/mozilla/javascript/regexp/RegExpImpl;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, v0, -0xd

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/regexp/RegExpImpl;->getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    :goto_0
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_5
    iget-boolean p0, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getLength()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getMaxInstanceId()I
    .locals 0

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result p0

    add-int/lit8 p0, p0, 0x15

    return p0
.end method

.method public setInstanceIdAttributes(II)V
    .locals 2

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v0

    sub-int v0, p1, v0

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, v0, -0xd

    if-ltz v0, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->setInstanceIdAttributes(II)V

    :pswitch_0
    return-void

    :pswitch_1
    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->underscoreAttr:I

    return-void

    :pswitch_2
    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->inputAttr:I

    return-void

    :pswitch_3
    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->starAttr:I

    return-void

    :pswitch_4
    iput p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->multilineAttr:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setInstanceIdValue(ILjava/lang/Object;)V
    .locals 2

    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getMaxInstanceId()I

    move-result v0

    sub-int v0, p1, v0

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, v0, -0xd

    if-ltz v0, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->setInstanceIdValue(ILjava/lang/Object;)V

    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->b()Lorg/mozilla/javascript/regexp/RegExpImpl;

    move-result-object p0

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    return-void

    :pswitch_2
    invoke-static {}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->b()Lorg/mozilla/javascript/regexp/RegExpImpl;

    move-result-object p0

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
