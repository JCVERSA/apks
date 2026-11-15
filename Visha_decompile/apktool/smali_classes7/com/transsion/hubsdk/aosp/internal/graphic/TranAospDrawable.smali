.class public Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/graphic/ITranDrawableAdapter;


# instance fields
.field private mTranAospDrawableExt:Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawableExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAospDrawable()Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawableExt;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawable;->mTranAospDrawableExt:Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawableExt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawableExt;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawableExt;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawable;->mTranAospDrawableExt:Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawableExt;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawable;->mTranAospDrawableExt:Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawableExt;

    return-object p0
.end method


# virtual methods
.method public setBlurSaturation(Ljava/lang/Object;F)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawable;->getAospDrawable()Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawableExt;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/internal/graphic/TranAospDrawableExt;->setBlurSaturation(Ljava/lang/Object;F)V

    return-void
.end method
