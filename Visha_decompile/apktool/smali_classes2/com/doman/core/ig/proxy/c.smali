.class public final Lcom/doman/core/ig/proxy/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doman/core/ig/proxy/c$a;
    }
.end annotation


# static fields
.field static a:Lcom/doman/core/ig/proxy/c$a;


# instance fields
.field public final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/doman/core/ig/proxy/c$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/doman/core/ig/proxy/c;->a:Lcom/doman/core/ig/proxy/c$a;

    new-instance p1, Lcom/doman/core/ig/proxy/c$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/doman/core/ig/proxy/c$1;-><init>(Lcom/doman/core/ig/proxy/c;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/doman/core/ig/proxy/c;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Message;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/doman/core/ig/proxy/c;->b:Landroid/os/Handler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    :cond_1
    const/16 v0, 0xc0

    iput v0, p0, Landroid/os/Message;->what:I

    return-object p0
.end method

.method public final a(Landroid/os/Message;J)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/doman/core/ig/proxy/c;->b:Landroid/os/Handler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
