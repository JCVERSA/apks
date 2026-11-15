.class public final synthetic Lm10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/SeekView$b;


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/adapter/SpeedAdapter;

.field public final synthetic b:Lcom/transsion/audio/activities/AudioSpeedSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/adapter/SpeedAdapter;Lcom/transsion/audio/activities/AudioSpeedSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm10;->a:Lcom/transsion/playercommon/adapter/SpeedAdapter;

    iput-object p2, p0, Lm10;->b:Lcom/transsion/audio/activities/AudioSpeedSettingActivity;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lm10;->a:Lcom/transsion/playercommon/adapter/SpeedAdapter;

    iget-object p0, p0, Lm10;->b:Lcom/transsion/audio/activities/AudioSpeedSettingActivity;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/audio/activities/AudioSpeedSettingActivity;->g0(Lcom/transsion/playercommon/adapter/SpeedAdapter;Lcom/transsion/audio/activities/AudioSpeedSettingActivity;ILjava/lang/String;)V

    return-void
.end method
