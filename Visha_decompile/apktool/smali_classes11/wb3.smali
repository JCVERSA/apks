.class public final synthetic Lwb3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwb3;->b:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lwb3;->b:Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;->d(Lcom/transsion/onlinevideo/widgets/view/EpisodesPageView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
