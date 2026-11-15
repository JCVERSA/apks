.class public Lcom/transsion/LongClickListener$a;
.super Lqua$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/LongClickListener;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic l:Lcom/transsion/LongClickListener;


# direct methods
.method public constructor <init>(Lcom/transsion/LongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/LongClickListener$a;->l:Lcom/transsion/LongClickListener;

    invoke-direct {p0}, Lqua$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IILandroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/transsion/LongClickListener$a;->l:Lcom/transsion/LongClickListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/transsion/LongClickListener;->mStartTime:J

    iget-object p1, p0, Lcom/transsion/LongClickListener$a;->l:Lcom/transsion/LongClickListener;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/transsion/LongClickListener;->mIsLongClick:Z

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/LongClickListener$a;->l:Lcom/transsion/LongClickListener;

    invoke-static {p0}, Lcom/transsion/LongClickListener;->a(Lcom/transsion/LongClickListener;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method

.method public b(Landroid/view/View;IIIIIIILandroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c(Landroid/view/View;IIIIIIILandroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/LongClickListener$a;->l:Lcom/transsion/LongClickListener;

    invoke-static {p2}, Lcom/transsion/LongClickListener;->a(Lcom/transsion/LongClickListener;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/LongClickListener$a;->l:Lcom/transsion/LongClickListener;

    iget-boolean p2, p1, Lcom/transsion/LongClickListener;->mIsLongClick:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/LongClickListener;->cancelLongClickCallback()V

    iget-object p0, p0, Lcom/transsion/LongClickListener$a;->l:Lcom/transsion/LongClickListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/LongClickListener;->mIsLongClick:Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
