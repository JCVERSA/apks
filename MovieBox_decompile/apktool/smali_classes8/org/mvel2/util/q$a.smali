.class Lorg/mvel2/util/q$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field final synthetic d:Lorg/mvel2/util/q;


# direct methods
.method public constructor <init>(Lorg/mvel2/util/q;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/util/q$a;->d:Lorg/mvel2/util/q;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lorg/mvel2/util/q$a;->a:I

    .line 7
    .line 8
    iput-object p3, p0, Lorg/mvel2/util/q$a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/mvel2/util/q$a;->c:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/mvel2/util/q$a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/q$a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mvel2/util/q$a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/util/q$a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method
