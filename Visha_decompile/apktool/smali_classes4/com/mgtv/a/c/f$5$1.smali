.class Lcom/mgtv/a/c/f$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/f$5;->a(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/mgtv/a/c/f$5;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/f$5;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/f$5$1;->b:Lcom/mgtv/a/c/f$5;

    iput-object p2, p0, Lcom/mgtv/a/c/f$5$1;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/a/c/f$5$1;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/c/f$5$1;->b:Lcom/mgtv/a/c/f$5;

    iget-object v1, v0, Lcom/mgtv/a/c/f$5;->b:Lcom/mgtv/a/c/f;

    iget-object v0, v0, Lcom/mgtv/a/c/f$5;->a:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/mgtv/a/c/f$5$1;->a:Ljava/io/File;

    invoke-virtual {v1, v0, p0}, Lcom/mgtv/a/c/f;->a(Landroid/widget/ImageView;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/c/f$5$1;->b:Lcom/mgtv/a/c/f$5;

    iget-object p0, p0, Lcom/mgtv/a/c/f$5;->b:Lcom/mgtv/a/c/f;

    iget-object v0, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    const v1, 0x497cf

    const-string v2, ""

    invoke-interface {v0, p0, v1, v2}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
