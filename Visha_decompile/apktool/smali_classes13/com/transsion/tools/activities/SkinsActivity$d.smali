.class public Lcom/transsion/tools/activities/SkinsActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/activities/SkinsActivity;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/activities/SkinsActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/activities/SkinsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/activities/SkinsActivity$d;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/activities/SkinsActivity$d;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {v0}, Lcom/transsion/tools/activities/SkinsActivity;->z0(Lcom/transsion/tools/activities/SkinsActivity;)Lcom/transsion/tools/model/SkinsViewModel;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/tools/activities/SkinsActivity$d;->a:Lcom/transsion/tools/activities/SkinsActivity;

    invoke-static {p0}, Lcom/transsion/tools/activities/SkinsActivity;->v0(Lcom/transsion/tools/activities/SkinsActivity;)I

    move-result p0

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1}, Lcom/transsion/tools/model/SkinsViewModel;->getOnlineData(II)V

    return-void
.end method
