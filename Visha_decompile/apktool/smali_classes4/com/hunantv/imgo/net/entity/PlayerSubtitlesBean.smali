.class public Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;
    }
.end annotation


# static fields
.field public static final NONE:I = -0x1


# instance fields
.field public partId:Ljava/lang/String;

.field public title:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
