.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsCustomizeActivity;->f2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$l;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;IFZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$l;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->Z0(Lcom/transsion/tools/activities/SkinsCustomizeActivity;)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->O1(I)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$l;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->D1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;Z)V

    return-void
.end method

.method public onStopTrackingTouch(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 0

    return-void
.end method
