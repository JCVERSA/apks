.class Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$d;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$d;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->c(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Z)Z

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$d;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$d;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->u(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/widget/TextView;

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
