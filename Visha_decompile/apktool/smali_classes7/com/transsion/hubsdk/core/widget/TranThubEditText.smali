.class public Lcom/transsion/hubsdk/core/widget/TranThubEditText;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/widget/ITranEditTextAdapter;


# instance fields
.field private mTranEditText:Lcom/transsion/hubsdk/widget/TranEditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/widget/TranEditText;

    invoke-direct {v0}, Lcom/transsion/hubsdk/widget/TranEditText;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/widget/TranThubEditText;->mTranEditText:Lcom/transsion/hubsdk/widget/TranEditText;

    return-void
.end method


# virtual methods
.method public setSupportCommonPhrase(Landroid/widget/EditText;Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/widget/TranThubEditText;->mTranEditText:Lcom/transsion/hubsdk/widget/TranEditText;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/widget/TranEditText;->setSupportCommonPhrase(Landroid/widget/EditText;Z)V

    return-void
.end method
