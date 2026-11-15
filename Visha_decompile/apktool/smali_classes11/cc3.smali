.class public final synthetic Lcc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;

.field public final synthetic c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc3;->b:Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;

    iput-object p2, p0, Lcc3;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcc3;->b:Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;

    iget-object p0, p0, Lcc3;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v0, p0, p1}, Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;->D(Lcom/transsion/onlinevideo/mangotv/EpisodesWithSeriesExpandDialog;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;)V

    return-void
.end method
