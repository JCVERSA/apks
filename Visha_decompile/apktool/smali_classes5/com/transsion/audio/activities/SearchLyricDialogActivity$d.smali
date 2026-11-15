.class public Lcom/transsion/audio/activities/SearchLyricDialogActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/SearchLyricDialogActivity;->r0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$d;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$d;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->popPage()Z

    return-void
.end method
