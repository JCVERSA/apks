.class public final synthetic Lfna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfna;->b:Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lfna;->b:Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;->Q(Lcom/transsion/onlinevideo/tiktokweb/TiktokWebFragement;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
