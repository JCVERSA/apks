.class public final synthetic Lvi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/BottomAudioBar;

.field public final synthetic c:Lcom/transsion/playercommon/activities/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/BottomAudioBar;Lcom/transsion/playercommon/activities/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvi0;->b:Lcom/transsion/audio/widgets/BottomAudioBar;

    iput-object p2, p0, Lvi0;->c:Lcom/transsion/playercommon/activities/BaseActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lvi0;->b:Lcom/transsion/audio/widgets/BottomAudioBar;

    iget-object p0, p0, Lvi0;->c:Lcom/transsion/playercommon/activities/BaseActivity;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->S(Lcom/transsion/audio/widgets/BottomAudioBar;Lcom/transsion/playercommon/activities/BaseActivity;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
