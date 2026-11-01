.class Lapp/fast/ssh/dialog/AddTimeDialog$3;
.super Lcom/google/android/gms/ads/AdListener;
.source "AddTimeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/dialog/AddTimeDialog;->initAds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/dialog/AddTimeDialog;


# direct methods
.method constructor <init>(Lapp/fast/ssh/dialog/AddTimeDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/dialog/AddTimeDialog$3;->this$0:Lapp/fast/ssh/dialog/AddTimeDialog;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    iget-object v0, p0, Lapp/fast/ssh/dialog/AddTimeDialog$3;->this$0:Lapp/fast/ssh/dialog/AddTimeDialog;

    invoke-static {v0}, Lapp/fast/ssh/dialog/AddTimeDialog;->access$600(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
