.class public final Lzt/h$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/impl/PingPongHelper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzt/h;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzt/h;


# direct methods
.method constructor <init>(Lzt/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzt/h$c;->a:Lzt/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/b0;)V
    .locals 2

    .line 1
    const-string v0, "remoteIp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "socket"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lzt/h;->v()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lzt/h$c;->a:Lzt/h;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "server detach socket has closed, clientIp: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p2, ", delay check again"

    .line 42
    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lzt/h$c;->a:Lzt/h;

    .line 47
    .line 48
    invoke-static {p2}, Lzt/h;->q(Lzt/h;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    iget-object p2, p0, Lzt/h$c;->a:Lzt/h;

    .line 55
    .line 56
    invoke-static {p2}, Lzt/h;->w(Lzt/h;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lzt/h$c;->a:Lzt/h;

    .line 64
    .line 65
    invoke-static {p1}, Lzt/h;->s(Lzt/h;)Landroid/os/Handler;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p2, p0, Lzt/h$c;->a:Lzt/h;

    .line 70
    .line 71
    invoke-static {p2}, Lzt/h;->o(Lzt/h;)Ljava/lang/Runnable;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const-wide/16 v0, 0xbb8

    .line 76
    .line 77
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void
.end method
