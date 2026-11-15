.class public final synthetic Lqxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iput-object p2, p0, Lqxb;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lqxb;->b:Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    iget-object p0, p0, Lqxb;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;->R0(Lcom/transsion/magicvideo/activities/VideoPlayerActivity;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
