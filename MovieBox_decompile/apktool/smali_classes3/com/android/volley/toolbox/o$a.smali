.class Lcom/android/volley/toolbox/o$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/android/volley/toolbox/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/o;->b(Landroid/content/Context;Lcom/android/volley/f;)Lcom/android/volley/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/volley/toolbox/o$a;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/volley/toolbox/o$a;->a:Ljava/io/File;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public get()Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/o$a;->a:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/volley/toolbox/o$a;->b:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "volley"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/volley/toolbox/o$a;->a:Ljava/io/File;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/volley/toolbox/o$a;->a:Ljava/io/File;

    .line 21
    .line 22
    return-object v0
.end method
