.class public final synthetic Lsr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;

.field public final synthetic c:Lcom/transsion/playercommon/share/model/SharePlatformInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;Lcom/transsion/playercommon/share/model/SharePlatformInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsr9;->b:Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;

    iput-object p2, p0, Lsr9;->c:Lcom/transsion/playercommon/share/model/SharePlatformInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lsr9;->b:Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;

    iget-object p0, p0, Lsr9;->c:Lcom/transsion/playercommon/share/model/SharePlatformInfo;

    invoke-static {v0, p0, p1}, Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;->b(Lcom/transsion/playercommon/share/view/SocialPlatformAdapter;Lcom/transsion/playercommon/share/model/SharePlatformInfo;Landroid/view/View;)V

    return-void
.end method
