.class public final synthetic Lkv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkv;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iput-object p2, p0, Lkv;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkv;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object p0, p0, Lkv;->c:Ljava/lang/String;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->g0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
