.class Lcom/mgtv/a/d/a/a/a$5;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/a/d/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/d/a/a/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/a/a/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/a/a/a$5;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/mgtv/a/d/a/a/a$5;->a:Lcom/mgtv/a/d/a/a/a;

    invoke-static {p0}, Lcom/mgtv/a/d/a/a/a;->j(Lcom/mgtv/a/d/a/a/a;)V

    return-void
.end method
