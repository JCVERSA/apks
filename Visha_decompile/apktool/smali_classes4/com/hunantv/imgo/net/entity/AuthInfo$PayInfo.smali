.class public Lcom/hunantv/imgo/net/entity/AuthInfo$PayInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/net/entity/AuthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PayInfo"
.end annotation


# instance fields
.field public preview_end:Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;

.field public preview_playing:Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;

.field public preview_starting:Lcom/hunantv/imgo/net/entity/AuthInfo$SceneData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
