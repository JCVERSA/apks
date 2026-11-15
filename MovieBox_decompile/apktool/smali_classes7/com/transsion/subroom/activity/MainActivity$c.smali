.class public final Lcom/transsion/subroom/activity/MainActivity$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lzw/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subroom/activity/MainActivity;->R0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subroom/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/transsion/subroom/activity/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/subroom/activity/MainActivity$c;->a:Lcom/transsion/subroom/activity/MainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/subroom/activity/MainActivity$c;->a:Lcom/transsion/subroom/activity/MainActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ldt/a;

    .line 8
    .line 9
    iget-object v0, v0, Ldt/a;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x3

    .line 16
    if-le v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/subroom/activity/MainActivity$c;->a:Lcom/transsion/subroom/activity/MainActivity;

    .line 19
    .line 20
    invoke-static {v0, p1, p2}, Lcom/transsion/subroom/activity/MainActivity;->z0(Lcom/transsion/subroom/activity/MainActivity;II)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
