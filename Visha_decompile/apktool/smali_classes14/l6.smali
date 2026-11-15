.class public final synthetic Ll6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaads/views/AdItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaads/views/AdItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll6;->b:Lcom/transsion/vishaads/views/AdItemView;

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    iget-object p0, p0, Ll6;->b:Lcom/transsion/vishaads/views/AdItemView;

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/vishaads/views/AdItemView;->d(Lcom/transsion/vishaads/views/AdItemView;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method
