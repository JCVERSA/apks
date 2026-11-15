.class public final synthetic Lyi7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyi7;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lyi7;->b:Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;->O0(Lcom/transsion/onlinevideo/search/OnlineVideoSearchActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
