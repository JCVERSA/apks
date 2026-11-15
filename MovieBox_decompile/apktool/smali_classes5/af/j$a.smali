.class Laf/j$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laf/j;


# direct methods
.method constructor <init>(Laf/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Laf/j$a;->a:Laf/j;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_decode:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Laf/j$a;->a:Laf/j;

    .line 8
    .line 9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Laf/r;

    .line 12
    .line 13
    invoke-static {v0, p1}, Laf/j;->a(Laf/j;Laf/r;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget p1, Lcom/google/zxing/client/android/R$id;->zxing_preview_failed:I

    .line 18
    .line 19
    if-ne v0, p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Laf/j$a;->a:Laf/j;

    .line 22
    .line 23
    invoke-static {p1}, Laf/j;->b(Laf/j;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 27
    return p1
.end method
