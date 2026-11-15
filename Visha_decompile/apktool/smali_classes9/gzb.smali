.class public final synthetic Lgzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgzb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lgzb;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lgzb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object p0, p0, Lgzb;->c:Landroid/net/Uri;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->m0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/net/Uri;Ljava/lang/Long;)V

    return-void
.end method
