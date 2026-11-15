.class public final synthetic Lcl6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcl6;->b:Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcl6;->b:Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;

    invoke-static {p0, p1, p2}, Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;->a(Lcom/transsion/playercommon/widgets/MediaProgressInfoLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
