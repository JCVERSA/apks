.class public final synthetic Lxi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/BottomAudioBar;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/BottomAudioBar;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxi0;->b:Lcom/transsion/audio/widgets/BottomAudioBar;

    iput p2, p0, Lxi0;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lxi0;->b:Lcom/transsion/audio/widgets/BottomAudioBar;

    iget p0, p0, Lxi0;->c:I

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/widgets/BottomAudioBar;->L(Lcom/transsion/audio/widgets/BottomAudioBar;ILandroid/graphics/Bitmap;)Lzfb;

    move-result-object p0

    return-object p0
.end method
