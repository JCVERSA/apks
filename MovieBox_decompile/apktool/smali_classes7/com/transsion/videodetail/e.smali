.class public final synthetic Lcom/transsion/videodetail/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic b:Ldw/a;

.field public final synthetic c:Lcom/transsion/videofloat/bean/FloatActionType;

.field public final synthetic d:Lcom/transsion/videodetail/StreamDetailFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Ldw/a;Lcom/transsion/videofloat/bean/FloatActionType;Lcom/transsion/videodetail/StreamDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/videodetail/e;->a:Landroidx/fragment/app/FragmentActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/videodetail/e;->b:Ldw/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsion/videodetail/e;->c:Lcom/transsion/videofloat/bean/FloatActionType;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/transsion/videodetail/e;->d:Lcom/transsion/videodetail/StreamDetailFragment;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/e;->a:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/videodetail/e;->b:Ldw/a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/videodetail/e;->c:Lcom/transsion/videofloat/bean/FloatActionType;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/videodetail/e;->d:Lcom/transsion/videodetail/StreamDetailFragment;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/transsion/videodetail/StreamDetailFragment;->k0(Landroidx/fragment/app/FragmentActivity;Ldw/a;Lcom/transsion/videofloat/bean/FloatActionType;Lcom/transsion/videodetail/StreamDetailFragment;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
