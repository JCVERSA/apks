.class public final synthetic Lzp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/videomodel/SmartEditViewModel;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/videomodel/SmartEditViewModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzp9;->b:Lcom/transsion/playercommon/videomodel/SmartEditViewModel;

    iput-object p2, p0, Lzp9;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lzp9;->b:Lcom/transsion/playercommon/videomodel/SmartEditViewModel;

    iget-object p0, p0, Lzp9;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/playercommon/videomodel/SmartEditViewModel;->a(Lcom/transsion/playercommon/videomodel/SmartEditViewModel;Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MusicBrainzResponseBean;

    move-result-object p0

    return-object p0
.end method
