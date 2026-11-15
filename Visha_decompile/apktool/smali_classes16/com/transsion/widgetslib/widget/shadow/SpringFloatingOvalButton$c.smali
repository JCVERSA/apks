.class public Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$c;->b:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$c;->b:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->d(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$c;->b:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->d(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Landroid/view/View$OnTouchListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
