.class public Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$d;->a:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$d;->a:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->a(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$d;->a:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;->a(Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;->onClick(Landroid/view/View;Z)V

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton$d;->a:Lcom/transsion/widgetslib/widget/shadow/SpringFloatingOvalButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    return-void
.end method
