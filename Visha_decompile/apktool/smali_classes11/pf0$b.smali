.class public Lpf0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpf0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lorg/mozilla/javascript/ObjToIntMap;

.field public b:Lorg/mozilla/javascript/ObjToIntMap;

.field public c:Lpf0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lpf0$b;->a:Lorg/mozilla/javascript/ObjToIntMap;

    .line 3
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjToIntMap;-><init>()V

    iput-object v0, p0, Lpf0$b;->b:Lorg/mozilla/javascript/ObjToIntMap;

    return-void
.end method

.method public synthetic constructor <init>(Lpf0$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lpf0$b;-><init>()V

    return-void
.end method

.method public static e(Lorg/mozilla/javascript/ObjToIntMap;)[Lpf0;
    .locals 4

    invoke-virtual {p0}, Lorg/mozilla/javascript/ObjToIntMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v0

    new-array v0, v0, [Lpf0;

    invoke-virtual {p0}, Lorg/mozilla/javascript/ObjToIntMap;->newIterator()Lorg/mozilla/javascript/ObjToIntMap$Iterator;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->start()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->done()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpf0$b;

    add-int/lit8 v3, v1, 0x1

    iget-object v2, v2, Lpf0$b;->c:Lpf0;

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->next()V

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Lpf0$b;)V
    .locals 1

    iget-object p0, p0, Lpf0$b;->b:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    return-void
.end method

.method public b(Lpf0$b;)V
    .locals 1

    iget-object p0, p0, Lpf0$b;->a:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    return-void
.end method

.method public c()[Lpf0;
    .locals 0

    iget-object p0, p0, Lpf0$b;->b:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-static {p0}, Lpf0$b;->e(Lorg/mozilla/javascript/ObjToIntMap;)[Lpf0;

    move-result-object p0

    return-object p0
.end method

.method public d()[Lpf0;
    .locals 0

    iget-object p0, p0, Lpf0$b;->a:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-static {p0}, Lpf0$b;->e(Lorg/mozilla/javascript/ObjToIntMap;)[Lpf0;

    move-result-object p0

    return-object p0
.end method
