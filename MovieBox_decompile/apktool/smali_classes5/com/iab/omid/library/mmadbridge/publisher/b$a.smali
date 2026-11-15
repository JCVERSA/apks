.class Lcom/iab/omid/library/mmadbridge/publisher/b$a;
.super Landroid/webkit/WebViewClient;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/mmadbridge/publisher/b;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iab/omid/library/mmadbridge/publisher/b;


# direct methods
.method constructor <init>(Lcom/iab/omid/library/mmadbridge/publisher/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/publisher/b$a;->a:Lcom/iab/omid/library/mmadbridge/publisher/b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "WebView renderer gone: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p2, "for WebView: "

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const-string v0, "NativeBridge"

    .line 31
    .line 32
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/iab/omid/library/mmadbridge/publisher/b$a;->a:Lcom/iab/omid/library/mmadbridge/publisher/b;

    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    if-ne p2, p1, :cond_0

    .line 42
    .line 43
    const-string p2, "Deallocating the Native bridge as it is unusable. No further events will be generated for this session."

    .line 44
    .line 45
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/iab/omid/library/mmadbridge/publisher/b$a;->a:Lcom/iab/omid/library/mmadbridge/publisher/b;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p2, v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->c(Landroid/webkit/WebView;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    return p1
.end method
