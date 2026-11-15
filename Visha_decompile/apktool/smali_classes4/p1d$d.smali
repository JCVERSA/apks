.class public Lp1d$d;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp1d;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp1d;


# direct methods
.method public constructor <init>(Lp1d;)V
    .locals 0

    iput-object p1, p0, Lp1d$d;->a:Lp1d;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lp1d$d;->a:Lp1d;

    invoke-virtual {v0, p1, p2}, Lp1d;->c(Landroid/view/View;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lp1d$d;->a:Lp1d;

    invoke-static {p1}, Lp1d;->a(Lp1d;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lp1d$d;->a:Lp1d;

    invoke-static {p0}, Lp1d;->a(Lp1d;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p2}, Lh2d;->h(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return v0
.end method
