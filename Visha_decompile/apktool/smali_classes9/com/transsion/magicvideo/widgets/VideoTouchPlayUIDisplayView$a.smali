.class public Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView$a;->b:Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView$a;->b:Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoTouchPlayUIDisplayView;->g0()V

    :goto_0
    return-void
.end method
