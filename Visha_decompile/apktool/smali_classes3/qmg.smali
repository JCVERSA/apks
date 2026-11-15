.class public final synthetic Lqmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lxqg;


# direct methods
.method public synthetic constructor <init>(Lxqg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqmg;->b:Lxqg;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lqmg;->b:Lxqg;

    invoke-static {p0, p1}, Lxqg;->g(Lxqg;Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method
