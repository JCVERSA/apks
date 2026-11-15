.class public final synthetic Lzp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzp;->a:Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;

    iput p2, p0, Lzp;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lzp;->a:Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;

    iget p0, p0, Lzp;->b:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;->a(Lcom/transsion/vishaplayersdk/audiofocus/AudioFocusManager;ILjava/lang/Integer;)Landroid/media/AudioFocusRequest;

    move-result-object p0

    return-object p0
.end method
