.class Lcom/mgtv/a/d/f/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/d/f/a/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/f/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/f/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/f/a/a$1;->a:Lcom/mgtv/a/d/f/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/f/a/a$1;->a:Lcom/mgtv/a/d/f/a/a;

    iget p1, p0, Lcom/mgtv/a/d/f/a/a;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/mgtv/a/d/f/a/a;->a:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/mgtv/a/d/f/a/a;->a:I

    :goto_0
    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/mgtv/a/d/f/a/a;->a(Lcom/mgtv/a/d/f/a/a;I)V

    return-void
.end method
