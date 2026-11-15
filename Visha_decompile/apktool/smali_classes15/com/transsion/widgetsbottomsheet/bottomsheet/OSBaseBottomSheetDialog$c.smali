.class public final Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$c;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "child"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$c;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->access$updateTitleMasks(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "child"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog$c;->b:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;

    invoke-static {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->access$updateTitleMasks(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;)V

    return-void
.end method
