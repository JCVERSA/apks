.class public Lcom/transsion/playercommon/data/AiSubtitleConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "AiSubtitleConfig"


# instance fields
.field private id:I

.field private subJson:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/transsion/playercommon/data/AiSubtitleConfig;->id:I

    return p0
.end method

.method public getSubJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/data/AiSubtitleConfig;->subJson:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/data/AiSubtitleConfig;->subJson:Ljava/lang/String;

    return-object p0
.end method

.method public setSubJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/data/AiSubtitleConfig;->subJson:Ljava/lang/String;

    return-void
.end method
