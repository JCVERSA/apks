.class public final synthetic Lg2c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg2c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;

    iput p2, p0, Lg2c;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lg2c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;

    iget p0, p0, Lg2c;->c:I

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;->a(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n0;I)V

    return-void
.end method
