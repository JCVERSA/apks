.class public final Lyr8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyr8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyr8;

    invoke-direct {v0}, Lyr8;-><init>()V

    sput-object v0, Lyr8;->a:Lyr8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lyr8;->b(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public final b(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V
    .locals 1

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "divView"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p0

    invoke-interface {p0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getReleaseViewVisitor$div_release()Lzr8;

    move-result-object v0

    invoke-static {v0, p1}, Lwv2;->a(Lvv2;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/Div2View;)V
    .locals 1

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "divView"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lpc9;

    move-result-object p0

    invoke-interface {p0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getMediaReleaseViewVisitor$div_release()Ldl6;

    move-result-object v0

    invoke-static {v0, p1}, Lwv2;->a(Lvv2;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method
