.class Lcom/mgtv/a/c/b$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lckd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->a(Ljava/lang/String;Landroid/widget/ImageView;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mgtv/a/c/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/b$16;->b:Lcom/mgtv/a/c/b;

    iput-object p2, p0, Lcom/mgtv/a/c/b$16;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/c/b$16;->b:Lcom/mgtv/a/c/b;

    invoke-static {v0}, Lcom/mgtv/a/c/b;->b(Lcom/mgtv/a/c/b;)V

    iget-object v0, p0, Lcom/mgtv/a/c/b$16;->b:Lcom/mgtv/a/c/b;

    iget-object v0, v0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/c/b$16;->a:Ljava/lang/String;

    const v1, 0x497cd

    invoke-interface {v0, p0, v1, p0}, Lcom/mgtv/a/c/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
