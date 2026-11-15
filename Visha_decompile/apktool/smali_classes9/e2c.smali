.class public final synthetic Le2c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2c;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Le2c;->b:Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$l0;->a(Ljava/lang/Boolean;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
