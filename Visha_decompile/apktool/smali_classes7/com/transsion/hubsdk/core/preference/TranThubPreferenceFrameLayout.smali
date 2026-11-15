.class public Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFrameLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/preference/ITranPreferenceFrameLayoutAdapter;


# instance fields
.field private mTranPreferenceFrameLayout:Lcom/transsion/hubsdk/preference/TranPreferenceFrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranPreferenceFrameLayoutImpl()Lcom/transsion/hubsdk/preference/TranPreferenceFrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFrameLayout;->mTranPreferenceFrameLayout:Lcom/transsion/hubsdk/preference/TranPreferenceFrameLayout;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/preference/TranPreferenceFrameLayout;

    invoke-direct {v0}, Lcom/transsion/hubsdk/preference/TranPreferenceFrameLayout;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFrameLayout;->mTranPreferenceFrameLayout:Lcom/transsion/hubsdk/preference/TranPreferenceFrameLayout;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFrameLayout;->mTranPreferenceFrameLayout:Lcom/transsion/hubsdk/preference/TranPreferenceFrameLayout;

    return-object p0
.end method


# virtual methods
.method public setRemoveBorders(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFrameLayout;->getTranPreferenceFrameLayoutImpl()Lcom/transsion/hubsdk/preference/TranPreferenceFrameLayout;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/preference/TranPreferenceFrameLayout;->setRemoveBorders(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void
.end method
