.class public Lcom/transsion/hubsdk/core/internal/graphic/TranThubDrawable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/graphic/ITranDrawableAdapter;


# instance fields
.field private mDrawable:Lcom/transsion/hubsdk/internal/graphic/TranDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/internal/graphic/TranDrawable;

    invoke-direct {v0}, Lcom/transsion/hubsdk/internal/graphic/TranDrawable;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/internal/graphic/TranThubDrawable;->mDrawable:Lcom/transsion/hubsdk/internal/graphic/TranDrawable;

    return-void
.end method


# virtual methods
.method public setBlurSaturation(Ljava/lang/Object;F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/graphic/TranThubDrawable;->mDrawable:Lcom/transsion/hubsdk/internal/graphic/TranDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/internal/graphic/TranDrawable;->setBlurSaturation(Ljava/lang/Object;F)V

    :cond_0
    return-void
.end method
