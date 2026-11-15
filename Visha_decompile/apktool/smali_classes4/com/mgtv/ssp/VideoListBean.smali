.class public Lcom/mgtv/ssp/VideoListBean;
.super Lcom/hunantv/imgo/net/entity/JsonEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/VideoListBean$DataBean;
    }
.end annotation


# instance fields
.field public data:Lcom/mgtv/ssp/VideoListBean$DataBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/imgo/net/entity/JsonEntity;-><init>()V

    return-void
.end method
