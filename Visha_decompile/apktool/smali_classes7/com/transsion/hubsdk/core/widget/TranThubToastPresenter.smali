.class public Lcom/transsion/hubsdk/core/widget/TranThubToastPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/widget/ITranToastPresenterAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 0

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/widget/TranToastPresenter;->getTextToastView(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
