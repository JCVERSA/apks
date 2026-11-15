.class public Lcom/transsion/playercommon/ucrop/UCropActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/ucrop/UCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/ucrop/UCropActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/ucrop/UCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$g;->b:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/ucrop/UCropActivity$g;->b:Lcom/transsion/playercommon/ucrop/UCropActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/playercommon/ucrop/UCropActivity;->A0(Lcom/transsion/playercommon/ucrop/UCropActivity;I)V

    :cond_0
    return-void
.end method
