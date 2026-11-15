.class public final synthetic Luzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Lcom/transsion/playercommon/adapter/SettingMenuAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/playercommon/adapter/SettingMenuAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luzb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Luzb;->c:Lcom/transsion/playercommon/adapter/SettingMenuAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Luzb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object p0, p0, Luzb;->c:Lcom/transsion/playercommon/adapter/SettingMenuAdapter;

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->L0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/playercommon/adapter/SettingMenuAdapter;)V

    return-void
.end method
