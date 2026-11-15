.class public final synthetic Lvub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvub;->a:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lvub;->a:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->q4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Ljava/lang/Boolean;)V

    return-void
.end method
