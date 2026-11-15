.class public Lcom/transsion/hubsdk/core/preference/TranThubPreferenceFragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/preference/ITranPreferenceFragmentAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListView(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;
    .locals 0

    new-instance p0, Lcom/transsion/hubsdk/preference/TranPreferenceFragmentBridge;

    invoke-direct {p0}, Lcom/transsion/hubsdk/preference/TranPreferenceFragmentBridge;-><init>()V

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/preference/TranPreferenceFragmentBridge;->getListView(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method
