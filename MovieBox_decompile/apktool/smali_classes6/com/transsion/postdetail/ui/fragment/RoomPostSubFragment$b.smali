.class public final Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lij/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment;->initViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment;->access$getCurExposurePosition$p(Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment;->access$setCurExposurePosition$p(Lcom/transsion/postdetail/ui/fragment/RoomPostSubFragment;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
