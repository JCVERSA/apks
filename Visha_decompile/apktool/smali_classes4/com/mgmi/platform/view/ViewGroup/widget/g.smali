.class public Lcom/mgmi/platform/view/ViewGroup/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    iput v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/g;->b:I

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/g;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/g;->c:I

    return p0
.end method

.method public d()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/g;->d:Landroid/view/ViewGroup$LayoutParams;

    return-object p0
.end method
