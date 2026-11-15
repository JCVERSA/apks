.class public final Lbaa$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxn4$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/os/Message;

.field public b:Lbaa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbaa$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lbaa$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lbaa$b;->a:Landroid/os/Message;

    iput-object v0, p0, Lbaa$b;->b:Lbaa;

    invoke-static {p0}, Lbaa;->b(Lbaa$b;)V

    return-void
.end method

.method public b(Landroid/os/Handler;)Z
    .locals 1

    iget-object v0, p0, Lbaa$b;->a:Landroid/os/Message;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    invoke-virtual {p0}, Lbaa$b;->a()V

    return p1
.end method

.method public c(Landroid/os/Message;Lbaa;)Lbaa$b;
    .locals 0

    iput-object p1, p0, Lbaa$b;->a:Landroid/os/Message;

    iput-object p2, p0, Lbaa$b;->b:Lbaa;

    return-object p0
.end method

.method public sendToTarget()V
    .locals 1

    iget-object v0, p0, Lbaa$b;->a:Landroid/os/Message;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lbaa$b;->a()V

    return-void
.end method
