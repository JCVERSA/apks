.class public final Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a;
.super Landroidx/activity/u;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a;->a:Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 5

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "ShortTVFavoriteActivity --> onBackPress --> handleOnBackPressed() --> setResult(RESULT_OK)"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-static {v0, v3, v4, v1, v2}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a;->a:Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/base/activity/BaseCommonActivity;->finish()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
