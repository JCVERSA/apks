.class public abstract Lfreemarker/template/DefaultArrayAdapter;
.super Lnpc;
.source "SourceFile"

# interfaces
.implements Lnga;
.implements Lc8;
.implements Llpc;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$BooleanArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$CharArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$DoubleArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$FloatArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$LongArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$IntArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$ShortArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$ByteArrayAdapter;,
        Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;
    }
.end annotation


# direct methods
.method private constructor <init>(Lgc7;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnpc;-><init>(Lgc7;)V

    return-void
.end method

.method public synthetic constructor <init>(Lgc7;Lxz1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/template/DefaultArrayAdapter;-><init>(Lgc7;)V

    return-void
.end method

.method public static adapt(Ljava/lang/Object;Lhc7;)Lfreemarker/template/DefaultArrayAdapter;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$IntArrayAdapter;

    check-cast p0, [I

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$IntArrayAdapter;-><init>([ILgc7;Lxz1;)V

    return-object v0

    :cond_0
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$DoubleArrayAdapter;

    check-cast p0, [D

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$DoubleArrayAdapter;-><init>([DLgc7;Lxz1;)V

    return-object v0

    :cond_1
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$LongArrayAdapter;

    check-cast p0, [J

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$LongArrayAdapter;-><init>([JLgc7;Lxz1;)V

    return-object v0

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$BooleanArrayAdapter;

    check-cast p0, [Z

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$BooleanArrayAdapter;-><init>([ZLgc7;Lxz1;)V

    return-object v0

    :cond_3
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$FloatArrayAdapter;

    check-cast p0, [F

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$FloatArrayAdapter;-><init>([FLgc7;Lxz1;)V

    return-object v0

    :cond_4
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$CharArrayAdapter;

    check-cast p0, [C

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$CharArrayAdapter;-><init>([CLgc7;Lxz1;)V

    return-object v0

    :cond_5
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$ShortArrayAdapter;

    check-cast p0, [S

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$ShortArrayAdapter;-><init>([SLgc7;Lxz1;)V

    return-object v0

    :cond_6
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$ByteArrayAdapter;

    check-cast p0, [B

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$ByteArrayAdapter;-><init>([BLgc7;Lxz1;)V

    return-object v0

    :cond_7
    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$GenericPrimitiveArrayAdapter;-><init>(Ljava/lang/Object;Lgc7;Lxz1;)V

    return-object v0

    :cond_8
    new-instance v0, Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;

    check-cast p0, [Ljava/lang/Object;

    invoke-direct {v0, p0, p1, v2}, Lfreemarker/template/DefaultArrayAdapter$ObjectArrayAdapter;-><init>([Ljava/lang/Object;Lgc7;Lxz1;)V

    return-object v0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not an array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract synthetic get(I)Lzfa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method

.method public final getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lfreemarker/template/DefaultArrayAdapter;->getWrappedObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract synthetic getWrappedObject()Ljava/lang/Object;
.end method

.method public abstract synthetic size()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method
