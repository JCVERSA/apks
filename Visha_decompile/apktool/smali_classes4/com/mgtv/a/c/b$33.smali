.class Lcom/mgtv/a/c/b$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/b;->b(Lcom/mgmi/model/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/b;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/b$33;->a:Lcom/mgtv/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lz9d;)V
    .locals 0

    iget-object p1, p0, Lcom/mgtv/a/c/b$33;->a:Lcom/mgtv/a/c/b;

    iget-object p2, p1, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    iget-object p1, p1, Lcom/mgtv/a/c/b;->x:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    invoke-static {p2, p1}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object p1, p0, Lcom/mgtv/a/c/b$33;->a:Lcom/mgtv/a/c/b;

    invoke-static {p1}, Lcom/mgtv/a/c/b;->b(Lcom/mgtv/a/c/b;)V

    iget-object p0, p0, Lcom/mgtv/a/c/b$33;->a:Lcom/mgtv/a/c/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mgtv/a/c/b;->x:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    iput-object p1, p0, Lcom/mgtv/a/c/b;->y:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgtv/a/c/b;->F:Z

    invoke-static {p0}, Lcom/mgtv/a/c/b;->c(Lcom/mgtv/a/c/b;)V

    return-void
.end method
