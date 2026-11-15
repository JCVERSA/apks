.class public Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/preference/ITranPreferenceFrameLayoutAdapter;


# instance fields
.field private mExt:Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayoutExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranAospPreferenceFrameLayout()Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayoutExt;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayout;->mExt:Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayoutExt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayoutExt;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayoutExt;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayout;->mExt:Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayoutExt;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayout;->mExt:Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayoutExt;

    return-object p0
.end method


# virtual methods
.method public setRemoveBorders(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayout;->getTranAospPreferenceFrameLayout()Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayoutExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/aosp/preference/TranAospPreferenceFrameLayoutExt;->setRemoveBorders(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void
.end method
