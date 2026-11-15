.class public final synthetic Lqh9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

.field public final synthetic c:Landroid/view/GestureDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Landroid/view/GestureDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqh9;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    iput-object p2, p0, Lqh9;->c:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lqh9;->b:Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;

    iget-object p0, p0, Lqh9;->c:Landroid/view/GestureDetector;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;->S(Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailFragment;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
