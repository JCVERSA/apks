.class public final synthetic Lg8c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8c;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lg8c;->a:Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;->l0(Lcom/transsion/magicvideo/widgets/VideoTouchLayoutNew;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
