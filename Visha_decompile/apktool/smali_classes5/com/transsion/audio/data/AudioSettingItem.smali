.class public Lcom/transsion/audio/data/AudioSettingItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIconResId:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private resId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private value:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/audio/data/AudioSettingItem;->value:I

    iput p2, p0, Lcom/transsion/audio/data/AudioSettingItem;->mIconResId:I

    return-void
.end method


# virtual methods
.method public getIconResId()I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/data/AudioSettingItem;->mIconResId:I

    return p0
.end method

.method public getResId()I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/data/AudioSettingItem;->resId:I

    return p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/transsion/audio/data/AudioSettingItem;->value:I

    return p0
.end method

.method public setResId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/data/AudioSettingItem;->resId:I

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/audio/data/AudioSettingItem;->value:I

    return-void
.end method
