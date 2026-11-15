.class public final synthetic Li6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaads/views/AdItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaads/views/AdItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6;->b:Lcom/transsion/vishaads/views/AdItemView;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p0, p0, Li6;->b:Lcom/transsion/vishaads/views/AdItemView;

    invoke-static {p0, p1}, Lcom/transsion/vishaads/views/AdItemView;->b(Lcom/transsion/vishaads/views/AdItemView;Landroid/media/MediaPlayer;)V

    return-void
.end method
