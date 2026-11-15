.class Lcom/mgmi/ads/api/e/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnAVPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/e/a/a;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/e/a/a;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/e/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/e/a/a$1;->a:Lcom/mgmi/ads/api/e/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAVPauseOrPlay(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a$1;->a:Lcom/mgmi/ads/api/e/a/a;

    invoke-static {p0}, Lcom/mgmi/ads/api/e/a/a;->a(Lcom/mgmi/ads/api/e/a/a;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/e/a/a$1;->a:Lcom/mgmi/ads/api/e/a/a;

    invoke-static {p0}, Lcom/mgmi/ads/api/e/a/a;->b(Lcom/mgmi/ads/api/e/a/a;)V

    :goto_0
    return-void
.end method
