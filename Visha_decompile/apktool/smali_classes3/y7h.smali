.class public final Ly7h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnkg;


# instance fields
.field public a:Landroid/os/Message;


# direct methods
.method public synthetic constructor <init>(Ly8h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Message;Lz9h;)Ly7h;
    .locals 0

    iput-object p1, p0, Ly7h;->a:Landroid/os/Message;

    return-object p0
.end method

.method public final b(Landroid/os/Handler;)Z
    .locals 1

    iget-object v0, p0, Ly7h;->a:Landroid/os/Message;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    const/4 v0, 0x0

    iput-object v0, p0, Ly7h;->a:Landroid/os/Message;

    invoke-static {p0}, Lz9h;->h(Ly7h;)V

    return p1
.end method

.method public final zza()V
    .locals 1

    iget-object v0, p0, Ly7h;->a:Landroid/os/Message;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Ly7h;->a:Landroid/os/Message;

    invoke-static {p0}, Lz9h;->h(Ly7h;)V

    return-void
.end method
