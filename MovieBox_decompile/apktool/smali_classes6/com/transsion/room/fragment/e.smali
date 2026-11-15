.class public final synthetic Lcom/transsion/room/fragment/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/room/fragment/RoomBaseFragment$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/fragment/RoomBaseFragment$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/room/fragment/e;->a:Lcom/transsion/room/fragment/RoomBaseFragment$a;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsion/room/fragment/e;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/room/fragment/e;->a:Lcom/transsion/room/fragment/RoomBaseFragment$a;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/room/fragment/e;->b:I

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/transsion/room/fragment/RoomBaseFragment$a;->i(Lcom/transsion/room/fragment/RoomBaseFragment$a;ILandroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
