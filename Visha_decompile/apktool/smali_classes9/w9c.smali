.class public final synthetic Lw9c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomSwipeRefreshLayout$OnChildScrollUpCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw9c;->a:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    return-void
.end method


# virtual methods
.method public final canChildScrollUp(Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lw9c;->a:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    invoke-static {p0, p1, p2}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->o0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Lcom/transsion/widgets/CustomSwipeRefreshLayout;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
