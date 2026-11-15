.class public final Lbjj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lohj;


# instance fields
.field public final synthetic a:Ldjj;


# direct methods
.method public synthetic constructor <init>(Ldjj;Lcjj;)V
    .locals 0

    iput-object p1, p0, Lbjj;->a:Ldjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    invoke-static {v0, v1, p1}, Lzrg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lbjj;->a:Ldjj;

    invoke-static {p0}, Ldjj;->N0(Ldjj;)Lchj;

    move-result-object p0

    invoke-virtual {p0, p1}, Lchj;->n(Ljava/lang/Exception;)V

    return-void
.end method
