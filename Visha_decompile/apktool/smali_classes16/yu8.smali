.class public Lyu8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/drawable/StateListDrawable;

.field public b:Lcv8;

.field public c:Lcv8;

.field public d:Lcv8;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckedDrawable()Lcv8;
    .locals 0

    iget-object p0, p0, Lyu8;->b:Lcv8;

    return-object p0
.end method

.method public getDisabledDrawable()Lcv8;
    .locals 0

    iget-object p0, p0, Lyu8;->d:Lcv8;

    return-object p0
.end method

.method public getNormalDrawable()Lcv8;
    .locals 0

    iget-object p0, p0, Lyu8;->c:Lcv8;

    return-object p0
.end method

.method public getStateListDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    iget-object p0, p0, Lyu8;->a:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method public setCheckedDrawable(Lcv8;)V
    .locals 0

    iput-object p1, p0, Lyu8;->b:Lcv8;

    return-void
.end method

.method public setDisabledDrawable(Lcv8;)V
    .locals 0

    iput-object p1, p0, Lyu8;->d:Lcv8;

    return-void
.end method

.method public setNormalDrawable(Lcv8;)V
    .locals 0

    iput-object p1, p0, Lyu8;->c:Lcv8;

    return-void
.end method

.method public setStateListDrawable(Landroid/graphics/drawable/StateListDrawable;)V
    .locals 0

    iput-object p1, p0, Lyu8;->a:Landroid/graphics/drawable/StateListDrawable;

    return-void
.end method
