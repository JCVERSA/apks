.class public final synthetic Lcom/transsion/rewardscenter/ui/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomsheet/c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/bottomsheet/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/rewardscenter/ui/p;->a:Lcom/google/android/material/bottomsheet/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/ui/p;->a:Lcom/google/android/material/bottomsheet/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/rewardscenter/ui/PhoneBottomSheetFragment;->b0(Lcom/google/android/material/bottomsheet/c;Landroid/content/DialogInterface;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
