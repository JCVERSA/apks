.class public final Lorg/mozilla/javascript/NativeArrayIterator;
.super Lorg/mozilla/javascript/ES6Iterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;
    }
.end annotation


# static fields
.field private static final ITERATOR_TAG:Ljava/lang/String; = "ArrayIterator"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private arrayLike:Lorg/mozilla/javascript/Scriptable;

.field private index:I

.field private type:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/ES6Iterator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;)V
    .locals 1

    .line 2
    const-string v0, "ArrayIterator"

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ES6Iterator;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    .line 4
    iput-object p2, p0, Lorg/mozilla/javascript/NativeArrayIterator;->arrayLike:Lorg/mozilla/javascript/Scriptable;

    .line 5
    iput-object p3, p0, Lorg/mozilla/javascript/NativeArrayIterator;->type:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/ScriptableObject;Z)V
    .locals 2

    new-instance v0, Lorg/mozilla/javascript/NativeArrayIterator;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeArrayIterator;-><init>()V

    const-string v1, "ArrayIterator"

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/ES6Iterator;->init(Lorg/mozilla/javascript/ScriptableObject;ZLorg/mozilla/javascript/IdScriptableObject;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "Array Iterator"

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ArrayIterator"

    return-object p0
.end method

.method public isDone(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2

    iget p2, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    int-to-long v0, p2

    iget-object p0, p0, Lorg/mozilla/javascript/NativeArrayIterator;->arrayLike:Lorg/mozilla/javascript/Scriptable;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lorg/mozilla/javascript/NativeArray;->getLengthProperty(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method

.method public nextValue(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeArrayIterator;->type:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    sget-object v1, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->KEYS:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    if-ne v0, v1, :cond_0

    iget p1, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArrayIterator;->arrayLike:Lorg/mozilla/javascript/Scriptable;

    iget v1, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    invoke-interface {v0, v1, v0}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/NativeArrayIterator;->type:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    sget-object v2, Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;->ENTRIES:Lorg/mozilla/javascript/NativeArrayIterator$ARRAY_ITERATOR_TYPE;

    if-ne v1, v2, :cond_2

    iget v1, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    :cond_2
    iget p1, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mozilla/javascript/NativeArrayIterator;->index:I

    return-object v0
.end method
