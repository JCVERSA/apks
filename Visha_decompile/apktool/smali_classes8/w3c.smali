.class public final synthetic Lw3c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

.field public final synthetic c:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3c;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    iput-object p2, p0, Lw3c;->c:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lw3c;->b:Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    iget-object p0, p0, Lw3c;->c:Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    invoke-static {v0, p0}, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;->k1(Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V

    return-void
.end method
