.class public final Lcom/android/net/toolbox/k$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/toolbox/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field final b:Lcom/android/net/toolbox/k$d;

.field final c:Ljava/lang/String;

.field final synthetic d:Lcom/android/net/toolbox/k;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/net/toolbox/k;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/android/net/toolbox/k$d;)V
    .locals 0

    iput-object p1, p0, Lcom/android/net/toolbox/k$c;->d:Lcom/android/net/toolbox/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/net/toolbox/k$c;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/net/toolbox/k$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/net/toolbox/k$c;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/net/toolbox/k$c;->b:Lcom/android/net/toolbox/k$d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/android/net/toolbox/k$c;->b:Lcom/android/net/toolbox/k$d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/net/toolbox/k$c;->d:Lcom/android/net/toolbox/k;

    iget-object v0, v0, Lcom/android/net/toolbox/k;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/net/toolbox/k$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/net/toolbox/k$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/net/toolbox/k$a;->a(Lcom/android/net/toolbox/k$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/net/toolbox/k$c;->d:Lcom/android/net/toolbox/k;

    iget-object v0, v0, Lcom/android/net/toolbox/k;->c:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/net/toolbox/k$c;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/net/toolbox/k$c;->d:Lcom/android/net/toolbox/k;

    iget-object v0, v0, Lcom/android/net/toolbox/k;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/net/toolbox/k$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/net/toolbox/k$a;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Lcom/android/net/toolbox/k$a;->a(Lcom/android/net/toolbox/k$c;)Z

    iget-object v0, v0, Lcom/android/net/toolbox/k$a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/net/toolbox/k$c;->d:Lcom/android/net/toolbox/k;

    iget-object v0, v0, Lcom/android/net/toolbox/k;->d:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/net/toolbox/k$c;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
