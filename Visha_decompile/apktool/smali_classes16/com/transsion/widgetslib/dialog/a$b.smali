.class public Lcom/transsion/widgetslib/dialog/a$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/a;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/a$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/a$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/dialog/a;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/a;->c(Lcom/transsion/widgetslib/dialog/a;)Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/a;->c(Lcom/transsion/widgetslib/dialog/a;)Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->finishEditing()V

    :cond_1
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/dialog/a;->e(Lcom/transsion/widgetslib/dialog/a;Z)V

    :cond_2
    return-void
.end method
