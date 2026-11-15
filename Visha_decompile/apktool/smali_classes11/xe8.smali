.class public final synthetic Lxe8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxe8;->b:Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lxe8;->b:Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;->e(Lcom/transsion/onlinevideo/mangotv/shorts/PreviewInfoView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
