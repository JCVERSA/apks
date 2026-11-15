.class public final synthetic Lcom/transsion/room/helper/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ldf/c;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/room/helper/i;->a:Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/room/helper/i;->b:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(ZLjava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/room/helper/i;->a:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/room/helper/i;->b:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/room/helper/LocationPlaceHelper;->a(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;ZLjava/util/List;Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
