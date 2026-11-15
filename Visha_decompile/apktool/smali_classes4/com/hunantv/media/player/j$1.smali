.class Lcom/hunantv/media/player/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/media/player/j;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/j$1;->a:Lcom/hunantv/media/player/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTsSkip(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const v0, 0xc38e9

    if-ne p1, v0, :cond_0

    const-string v0, "101"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/hunantv/media/player/j;->a:Z

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/j$1;->a:Lcom/hunantv/media/player/j;

    invoke-static {v0}, Lcom/hunantv/media/player/j;->a(Lcom/hunantv/media/player/j;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/hunantv/media/player/j$1;->a:Lcom/hunantv/media/player/j;

    invoke-static {p0}, Lcom/hunantv/media/player/j;->a(Lcom/hunantv/media/player/j;)Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/MgtvPlayerListener$OnWarningListener;->onWarning(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
