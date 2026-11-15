.class Lcom/mgtv/a/c/a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/a/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/a$1;->a:Lcom/mgtv/a/c/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mgtv/a/c/a$1;->a:Lcom/mgtv/a/c/a;

    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->g()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/mgtv/a/c/a$1;->a:Lcom/mgtv/a/c/a;

    iget-object p1, p0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz p1, :cond_3

    const v0, 0x324b0

    iget-object p0, p0, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/mgtv/a/c/e;->a(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
