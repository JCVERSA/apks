.class final Lcom/google/android/datatransport/runtime/e$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/datatransport/runtime/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;)Lcom/google/android/datatransport/runtime/u$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/e$b;->b(Landroid/content/Context;)Lcom/google/android/datatransport/runtime/e$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Landroid/content/Context;)Lcom/google/android/datatransport/runtime/e$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lw8/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/content/Context;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/e$b;->a:Landroid/content/Context;

    .line 8
    .line 9
    return-object p0
.end method

.method public build()Lcom/google/android/datatransport/runtime/u;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/e$b;->a:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lw8/d;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/android/datatransport/runtime/e$c;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/e$b;->a:Landroid/content/Context;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/google/android/datatransport/runtime/e$c;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/e$a;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
