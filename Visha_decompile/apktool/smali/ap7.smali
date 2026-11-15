.class public Lap7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;)V
    .locals 0

    iput-object p1, p0, Lap7;->b:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lap7;->b:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->onCancel()V

    iget-object p1, p0, Lap7;->b:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->f:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    :cond_0
    iget-object p0, p0, Lap7;->b:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
