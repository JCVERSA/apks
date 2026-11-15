.class public final Lcom/android/net/toolbox/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/toolbox/k$a;,
        Lcom/android/net/toolbox/k$c;,
        Lcom/android/net/toolbox/k$d;,
        Lcom/android/net/toolbox/k$b;
    }
.end annotation


# instance fields
.field final a:Lcom/android/net/o;

.field final b:Lcom/android/net/toolbox/k$b;

.field final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/net/toolbox/k$a;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/net/toolbox/k$a;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Runnable;

.field private f:I

.field private final g:Landroid/os/Handler;


# virtual methods
.method public final a(Ljava/lang/String;Lcom/android/net/toolbox/k$a;)V
    .locals 2

    iget-object v0, p0, Lcom/android/net/toolbox/k;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/net/toolbox/k;->e:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/net/toolbox/k$3;

    invoke-direct {p1, p0}, Lcom/android/net/toolbox/k$3;-><init>(Lcom/android/net/toolbox/k;)V

    iput-object p1, p0, Lcom/android/net/toolbox/k;->e:Ljava/lang/Runnable;

    iget-object p2, p0, Lcom/android/net/toolbox/k;->g:Landroid/os/Handler;

    iget p0, p0, Lcom/android/net/toolbox/k;->f:I

    int-to-long v0, p0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
