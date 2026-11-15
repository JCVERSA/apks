.class public final synthetic Lvac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideosFragment;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvac;->b:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iput-object p2, p0, Lvac;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lvac;->b:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget-object p0, p0, Lvac;->c:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/fragments/VideosFragment;->a2(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/lang/Runnable;)V

    return-void
.end method
