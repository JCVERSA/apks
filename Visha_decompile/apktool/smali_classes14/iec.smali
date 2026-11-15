.class public final synthetic Liec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liec;->b:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Liec;->b:Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;

    invoke-static {p0}, Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;->B(Lcom/transsion/vishaplayersdk/vishaplayer/VishaPlayer;)V

    return-void
.end method
