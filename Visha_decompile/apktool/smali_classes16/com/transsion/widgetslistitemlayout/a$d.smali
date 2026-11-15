.class public Lcom/transsion/widgetslistitemlayout/a$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslistitemlayout/a;->f(Ljava/util/List;Landroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslistitemlayout/a;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslistitemlayout/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/a$d;->b:Lcom/transsion/widgetslistitemlayout/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/a$d;->b:Lcom/transsion/widgetslistitemlayout/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/widgetslistitemlayout/a;->b(Lcom/transsion/widgetslistitemlayout/a;Z)V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/a$d;->b:Lcom/transsion/widgetslistitemlayout/a;

    invoke-static {p0, v0}, Lcom/transsion/widgetslistitemlayout/a;->c(Lcom/transsion/widgetslistitemlayout/a;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/a$d;->b:Lcom/transsion/widgetslistitemlayout/a;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/widgetslistitemlayout/a;->b(Lcom/transsion/widgetslistitemlayout/a;Z)V

    return-void
.end method
