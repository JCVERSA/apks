.class Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;->c(Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;)Lcom/transsion/shorttv_pugc/base/widget/toast/core/i;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/i;->a()Landroid/app/Activity;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    :goto_0
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;->c(Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;)Lcom/transsion/shorttv_pugc/base/widget/toast/core/i;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/i;->c()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;->g(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    :try_start_1
    const-string v2, "window"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/view/WindowManager;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;->b(Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;)Los/a;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v2}, Los/a;->getView()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    :goto_1
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;->c(Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;)Lcom/transsion/shorttv_pugc/base/widget/toast/core/i;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/i;->c()V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;->g(Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    goto :goto_3

    .line 70
    :catch_0
    move-exception v1

    .line 71
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :goto_2
    return-void

    .line 76
    :goto_3
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;

    .line 77
    .line 78
    invoke-static {v2}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;->c(Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;)Lcom/transsion/shorttv_pugc/base/widget/toast/core/i;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/i;->c()V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;

    .line 86
    .line 87
    invoke-virtual {v2, v0}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/ToastImpl;->g(Z)V

    .line 88
    .line 89
    .line 90
    throw v1
.end method
