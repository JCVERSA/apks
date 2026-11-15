.class public Lorg/mozilla/javascript/NativeObject$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/NativeObject$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:[Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:I

.field public final synthetic e:Lorg/mozilla/javascript/NativeObject$a;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/NativeObject$a;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeObject$a$a;->e:Lorg/mozilla/javascript/NativeObject$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lorg/mozilla/javascript/NativeObject$a;->b:Lorg/mozilla/javascript/NativeObject;

    invoke-virtual {p1}, Lorg/mozilla/javascript/ScriptableObject;->getIds()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/NativeObject$a$a;->b:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/NativeObject$a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/javascript/NativeObject$a$a;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeObject$a$a;->b:[Ljava/lang/Object;

    iget v1, p0, Lorg/mozilla/javascript/NativeObject$a$a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/NativeObject$a$a;->d:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/mozilla/javascript/NativeObject$a$a;->c:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeObject$a$a;->e:Lorg/mozilla/javascript/NativeObject$a;

    iget-object v1, v1, Lorg/mozilla/javascript/NativeObject$a;->b:Lorg/mozilla/javascript/NativeObject;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lorg/mozilla/javascript/NativeObject$a$a$a;

    invoke-direct {v2, p0, v0, v1}, Lorg/mozilla/javascript/NativeObject$a$a$a;-><init>(Lorg/mozilla/javascript/NativeObject$a$a;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/NativeObject$a$a;->d:I

    iget-object p0, p0, Lorg/mozilla/javascript/NativeObject$a$a;->b:[Ljava/lang/Object;

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeObject$a$a;->a()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeObject$a$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/NativeObject$a$a;->e:Lorg/mozilla/javascript/NativeObject$a;

    iget-object v1, v1, Lorg/mozilla/javascript/NativeObject$a;->b:Lorg/mozilla/javascript/NativeObject;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/NativeObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeObject$a$a;->c:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
