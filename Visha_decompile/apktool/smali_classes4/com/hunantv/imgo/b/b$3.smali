.class Lcom/hunantv/imgo/b/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/imgo/b/b;->e()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/imgo/b/b;


# direct methods
.method public constructor <init>(Lcom/hunantv/imgo/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/b/b$3;->a:Lcom/hunantv/imgo/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/hunantv/imgo/b/b$3;->a:Lcom/hunantv/imgo/b/b;

    invoke-static {p1}, Lcom/hunantv/imgo/b/b;->a(Lcom/hunantv/imgo/b/b;)Lcom/hunantv/imgo/b/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hunantv/imgo/b/b$3;->a:Lcom/hunantv/imgo/b/b;

    invoke-static {p0}, Lcom/hunantv/imgo/b/b;->a(Lcom/hunantv/imgo/b/b;)Lcom/hunantv/imgo/b/b$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/hunantv/imgo/b/b$a;->b()V

    :cond_0
    return-void
.end method
