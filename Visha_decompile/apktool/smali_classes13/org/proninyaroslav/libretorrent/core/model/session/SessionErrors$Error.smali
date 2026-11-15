.class Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors$Error;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field errCode:I

.field errMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors$Error;->errCode:I

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionErrors$Error;->errMsg:Ljava/lang/String;

    return-void
.end method
