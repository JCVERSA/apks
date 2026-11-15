.class public Ltn7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;)V
    .locals 0

    iput-object p1, p0, Ltn7;->b:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Ltn7;->b:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->E0(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
