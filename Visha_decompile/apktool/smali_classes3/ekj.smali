.class public final Lekj;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lgkj;


# direct methods
.method public constructor <init>(Lgkj;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lekj;->a:Lgkj;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lekj;->a:Lgkj;

    invoke-static {p0, p1}, Lgkj;->d(Lgkj;Landroid/os/Message;)V

    return-void
.end method
