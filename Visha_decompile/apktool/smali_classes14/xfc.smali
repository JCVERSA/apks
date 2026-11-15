.class public final synthetic Lxfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxfc;->b:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lxfc;->b:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {p0, p1, p2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->a(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
