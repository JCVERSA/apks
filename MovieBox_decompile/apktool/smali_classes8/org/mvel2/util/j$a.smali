.class Lorg/mvel2/util/j$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lorg/mvel2/util/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mvel2/util/j;->b()Lorg/mvel2/util/j$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/mvel2/util/j;


# direct methods
.method constructor <init>(Lorg/mvel2/util/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/util/j$a;->a:Lorg/mvel2/util/j;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/j$a;->a:Lorg/mvel2/util/j;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/mvel2/util/j;->a(Lorg/mvel2/util/j;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lorg/mvel2/util/j$c;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lorg/mvel2/util/j$c;->d(I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Lorg/mvel2/util/j$c;->b()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_1
    const/4 p1, -0x1

    .line 35
    return p1
.end method
