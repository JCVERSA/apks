.class final Lcom/doman/core/ig/proxy/c$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doman/core/ig/proxy/c;-><init>(Lcom/doman/core/ig/proxy/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/doman/core/ig/proxy/c;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/proxy/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/doman/core/ig/proxy/c$1;->a:Lcom/doman/core/ig/proxy/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    iget p0, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xbe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/doman/core/ig/proxy/c;->a:Lcom/doman/core/ig/proxy/c$a;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/doman/core/ig/proxy/c$a;->a(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/doman/core/ig/proxy/c;->a:Lcom/doman/core/ig/proxy/c$a;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/doman/core/ig/proxy/c$a;->b(Landroid/os/Message;)V

    :cond_2
    :goto_0
    return-void
.end method
