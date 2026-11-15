.class public final synthetic Lcom/transsion/audio/widgets/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/MusicPlayListView$6;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/MusicPlayListView$6;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/audio/widgets/e;->b:Lcom/transsion/audio/widgets/MusicPlayListView$6;

    iput-object p2, p0, Lcom/transsion/audio/widgets/e;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/widgets/e;->b:Lcom/transsion/audio/widgets/MusicPlayListView$6;

    iget-object p0, p0, Lcom/transsion/audio/widgets/e;->c:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/transsion/audio/widgets/MusicPlayListView$6;->a(Lcom/transsion/audio/widgets/MusicPlayListView$6;Landroid/content/Context;)V

    return-void
.end method
