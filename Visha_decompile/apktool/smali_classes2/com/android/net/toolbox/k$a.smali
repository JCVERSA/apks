.class final Lcom/android/net/toolbox/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/toolbox/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Lcom/android/net/u;

.field final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/net/toolbox/k$c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/android/net/toolbox/k;

.field private final e:Lcom/android/net/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/net/n<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/net/toolbox/k;Lcom/android/net/n;Lcom/android/net/toolbox/k$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/net/n<",
            "*>;",
            "Lcom/android/net/toolbox/k$c;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/net/toolbox/k$a;->d:Lcom/android/net/toolbox/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/net/toolbox/k$a;->c:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/android/net/toolbox/k$a;->e:Lcom/android/net/n;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/net/toolbox/k$c;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/net/toolbox/k$a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/net/toolbox/k$a;->c:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/net/toolbox/k$a;->e:Lcom/android/net/n;

    invoke-virtual {p0}, Lcom/android/net/n;->a()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
