.class public Lcom/transsion/tools/activities/SkinsCustomizeActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/CustomTabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsCustomizeActivity;->g2()V
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

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$g;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$g;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->I1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;I)V

    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->getPosition()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "skin_diy_edit_bg_cl"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    const-string v0, "skin_diy_edit_bg_show"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "skin_diy_edit_color_cl"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    const-string v0, "skin_diy_edit_color_show"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "skin_diy_edit_ps_cl"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    const-string v0, "skin_diy_edit_ps_show"

    invoke-static {v0}, Lhb0;->markDirect(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsCustomizeActivity$g;->a:Lcom/transsion/tools/activities/SkinsCustomizeActivity;

    invoke-virtual {p1}, Lcom/transsion/widgets/CustomTabLayout$Tab;->getPosition()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/tools/activities/SkinsCustomizeActivity;->x1(Lcom/transsion/tools/activities/SkinsCustomizeActivity;I)V

    return-void
.end method

.method public onTabUnselected(Lcom/transsion/widgets/CustomTabLayout$Tab;)V
    .locals 0

    return-void
.end method
