.class public Lpo7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;)V
    .locals 0

    iput-object p1, p0, Lpo7;->b:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lpo7;->b:Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;

    const p1, 0xc34f

    const-string v0, "switch account"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/xuanniao/account/auth/view/PalmPrevActivity;->c0(ILjava/lang/String;)V

    return-void
.end method
