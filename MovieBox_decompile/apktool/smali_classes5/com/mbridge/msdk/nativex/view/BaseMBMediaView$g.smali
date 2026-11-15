.class Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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
    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

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
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Landroid/content/Context;)Lcom/mbridge/msdk/nativex/view/mbfullview/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->M(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->z(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->E(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->A(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->B(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->C(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$g;->a:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->orientation(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "BaseMBMediaView"

    .line 91
    .line 92
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_2
    return-void
.end method
