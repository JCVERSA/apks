.class public final synthetic Lavb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavb;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lavb;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    check-cast p1, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->h4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
