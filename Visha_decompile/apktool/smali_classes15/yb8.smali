.class public final synthetic Lyb8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/PlayingImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgets/PlayingImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyb8;->b:Lcom/transsion/widgets/PlayingImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lyb8;->b:Lcom/transsion/widgets/PlayingImageView;

    invoke-static {p0}, Lcom/transsion/widgets/PlayingImageView;->a(Lcom/transsion/widgets/PlayingImageView;)V

    return-void
.end method
