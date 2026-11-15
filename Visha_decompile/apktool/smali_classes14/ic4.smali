.class public final synthetic Lic4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/vishaplayersdk/gsyplayer/utils/NetInfoModule$NetChangeListener;


# instance fields
.field public final synthetic a:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lic4;->a:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;

    return-void
.end method


# virtual methods
.method public final changed(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lic4;->a:Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;

    invoke-static {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;->a(Lcom/transsion/vishaplayersdk/gsyplayer/video/base/GSYVideoStateView;Ljava/lang/String;)V

    return-void
.end method
