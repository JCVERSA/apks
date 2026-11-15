.class final Lcom/hunantv/imgo/util/k$1;
.super Lcom/hunantv/imgo/b/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/imgo/util/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/hunantv/imgo/util/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/imgo/b/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/hunantv/imgo/util/k$a;


# direct methods
.method public constructor <init>(Lcom/hunantv/imgo/b/b;Lcom/hunantv/imgo/b/b;Ljava/lang/String;Landroid/content/Context;Lcom/hunantv/imgo/util/k$a;)V
    .locals 0

    iput-object p2, p0, Lcom/hunantv/imgo/util/k$1;->a:Lcom/hunantv/imgo/b/b;

    iput-object p3, p0, Lcom/hunantv/imgo/util/k$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/hunantv/imgo/util/k$1;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/hunantv/imgo/util/k$1;->d:Lcom/hunantv/imgo/util/k$a;

    invoke-direct {p0, p1}, Lcom/hunantv/imgo/b/b$b;-><init>(Lcom/hunantv/imgo/b/b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/hunantv/imgo/b/b$b;->a()V

    iget-object p0, p0, Lcom/hunantv/imgo/util/k$1;->a:Lcom/hunantv/imgo/b/b;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-super {p0}, Lcom/hunantv/imgo/b/b$b;->b()V

    iget-object v0, p0, Lcom/hunantv/imgo/util/k$1;->a:Lcom/hunantv/imgo/b/b;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/hunantv/imgo/util/k$1;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/imgo/util/k$1;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/hunantv/imgo/util/k$1;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/imgo/util/k$1;->d:Lcom/hunantv/imgo/util/k$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/hunantv/imgo/util/k$a;->a()V

    :cond_0
    return-void
.end method
