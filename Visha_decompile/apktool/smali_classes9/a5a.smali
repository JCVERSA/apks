.class public final synthetic La5a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5a;->b:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    iput-boolean p2, p0, La5a;->c:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, La5a;->b:Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;

    iget-boolean p0, p0, La5a;->c:Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;->f(Lcom/transsion/magicvideo/subtitle/settings/SubtitleLocalSelectView;ZLjava/lang/Boolean;)V

    return-void
.end method
