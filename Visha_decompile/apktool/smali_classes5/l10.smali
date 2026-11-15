.class public final synthetic Ll10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/adapter/SpeedAdapter$a;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lcom/transsion/audio/activities/AudioSpeedSettingActivity;

.field public final synthetic c:Lcom/transsion/playercommon/widgets/SeekView;

.field public final synthetic d:Lcom/transsion/playercommon/adapter/SpeedAdapter;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/transsion/audio/activities/AudioSpeedSettingActivity;Lcom/transsion/playercommon/widgets/SeekView;Lcom/transsion/playercommon/adapter/SpeedAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll10;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Ll10;->b:Lcom/transsion/audio/activities/AudioSpeedSettingActivity;

    iput-object p3, p0, Ll10;->c:Lcom/transsion/playercommon/widgets/SeekView;

    iput-object p4, p0, Ll10;->d:Lcom/transsion/playercommon/adapter/SpeedAdapter;

    return-void
.end method


# virtual methods
.method public final onItemClick(I)V
    .locals 3

    iget-object v0, p0, Ll10;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Ll10;->b:Lcom/transsion/audio/activities/AudioSpeedSettingActivity;

    iget-object v2, p0, Ll10;->c:Lcom/transsion/playercommon/widgets/SeekView;

    iget-object p0, p0, Ll10;->d:Lcom/transsion/playercommon/adapter/SpeedAdapter;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/audio/activities/AudioSpeedSettingActivity;->f0(Ljava/util/ArrayList;Lcom/transsion/audio/activities/AudioSpeedSettingActivity;Lcom/transsion/playercommon/widgets/SeekView;Lcom/transsion/playercommon/adapter/SpeedAdapter;I)V

    return-void
.end method
