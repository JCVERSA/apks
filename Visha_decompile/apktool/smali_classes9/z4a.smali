.class public final synthetic Lz4a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4a;->b:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    iput-object p2, p0, Lz4a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz4a;->b:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    iget-object p0, p0, Lz4a;->c:Ljava/lang/String;

    check-cast p1, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->c(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;Ljava/lang/String;Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
