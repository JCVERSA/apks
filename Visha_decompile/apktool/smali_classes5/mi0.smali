.class public final synthetic Lmi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/BottomAudioBar;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/BottomAudioBar;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmi0;->b:Lcom/transsion/audio/widgets/BottomAudioBar;

    iput-wide p2, p0, Lmi0;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmi0;->b:Lcom/transsion/audio/widgets/BottomAudioBar;

    iget-wide v1, p0, Lmi0;->c:J

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->O(Lcom/transsion/audio/widgets/BottomAudioBar;JLcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;

    move-result-object p0

    return-object p0
.end method
