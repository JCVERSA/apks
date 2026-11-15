.class final Lcom/pgl/ssdk/w$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgl/ssdk/w;->a(Landroid/view/MotionEvent;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pgl/ssdk/w$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput p2, p0, Lcom/pgl/ssdk/w$a;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/pgl/ssdk/w$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pgl/ssdk/w;->a(Landroid/content/Context;)Landroid/hardware/input/InputManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v1, p0, Lcom/pgl/ssdk/w$a;->b:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Lcom/pgl/ssdk/w;->a()V

    .line 17
    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lcom/pgl/ssdk/w;->b()I

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/pgl/ssdk/w;->c()I

    .line 25
    .line 26
    .line 27
    const-string v0, "nihc"

    .line 28
    .line 29
    invoke-static {v0}, Lcom/pgl/ssdk/w;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-static {}, Lcom/pgl/ssdk/w;->d()I

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/pgl/ssdk/w;->e()I

    .line 43
    .line 44
    .line 45
    const-string v0, "vihc"

    .line 46
    .line 47
    invoke-static {v0}, Lcom/pgl/ssdk/w;->a(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 v2, 0x1d

    .line 54
    .line 55
    if-lt v1, v2, :cond_3

    .line 56
    .line 57
    invoke-static {v0}, Lcom/pgl/ssdk/d1;->a(Landroid/view/InputDevice;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-static {}, Lcom/pgl/ssdk/w;->f()I

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/pgl/ssdk/w;->g()I

    .line 67
    .line 68
    .line 69
    const-string v0, "eihc"

    .line 70
    .line 71
    invoke-static {v0}, Lcom/pgl/ssdk/w;->a(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    return-void
.end method
