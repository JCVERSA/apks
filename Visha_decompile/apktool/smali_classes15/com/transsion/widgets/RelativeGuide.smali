.class public Lcom/transsion/widgets/RelativeGuide;
.super Lsr8;
.source "SourceFile"


# instance fields
.field private mListener:Ldf7;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsr8;-><init>(II)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lsr8;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onLayoutInflated(Landroid/view/View;Lcom/app/hubert/guide/core/Controller;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lsr8;->onLayoutInflated(Landroid/view/View;Lcom/app/hubert/guide/core/Controller;)V

    iget-object p0, p0, Lcom/transsion/widgets/RelativeGuide;->mListener:Ldf7;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Ldf7;->a(Landroid/view/View;Lcom/app/hubert/guide/core/Controller;)V

    :cond_0
    return-void
.end method

.method public setOnLayoutInflatedListener(Ldf7;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/RelativeGuide;->mListener:Ldf7;

    return-void
.end method
