.class public Lorg/mozilla/javascript/NativeCollectionIterator;
.super Lorg/mozilla/javascript/ES6Iterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/NativeCollectionIterator$Type;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6275f047db483dc3L


# instance fields
.field private className:Ljava/lang/String;

.field private transient iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/mozilla/javascript/Hashtable$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/mozilla/javascript/ES6Iterator;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    .line 3
    iput-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->className:Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    .line 5
    sget-object p1, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->BOTH:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    iput-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/NativeCollectionIterator$Type;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/NativeCollectionIterator$Type;",
            "Ljava/util/Iterator<",
            "Lorg/mozilla/javascript/Hashtable$Entry;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ES6Iterator;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    .line 8
    iput-object p2, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->className:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    .line 10
    iput-object p3, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lorg/mozilla/javascript/NativeCollectionIterator;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/NativeCollectionIterator;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, v0, p1}, Lorg/mozilla/javascript/ES6Iterator;->init(Lorg/mozilla/javascript/ScriptableObject;ZLorg/mozilla/javascript/IdScriptableObject;Ljava/lang/String;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->className:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    iput-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->className:Ljava/lang/String;

    return-object p0
.end method

.method public isDone(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public nextValue(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Hashtable$Entry;

    sget-object v1, Lorg/mozilla/javascript/NativeCollectionIterator$a;->a:[I

    iget-object p0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    iget-object p0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    iget-object v0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    iget-object p0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    return-object p0

    :cond_2
    iget-object p0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    return-object p0
.end method
