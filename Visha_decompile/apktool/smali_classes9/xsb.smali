.class public final synthetic Lxsb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxsb;->a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    return-void
.end method


# virtual methods
.method public final onOverScrollUpdated(F)V
    .locals 0

    iget-object p0, p0, Lxsb;->a:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->h0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;F)V

    return-void
.end method
