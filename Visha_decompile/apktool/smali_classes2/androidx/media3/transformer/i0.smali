.class public final synthetic Landroidx/media3/transformer/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Landroidx/media3/transformer/TransformerInternal;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/TransformerInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/i0;->b:Landroidx/media3/transformer/TransformerInternal;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/transformer/i0;->b:Landroidx/media3/transformer/TransformerInternal;

    invoke-static {p0, p1}, Landroidx/media3/transformer/TransformerInternal;->a(Landroidx/media3/transformer/TransformerInternal;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
