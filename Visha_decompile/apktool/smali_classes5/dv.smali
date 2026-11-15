.class public final synthetic Ldv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldv;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iput-object p2, p0, Ldv;->c:Ljava/lang/String;

    iput-object p3, p0, Ldv;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ldv;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v1, p0, Ldv;->c:Ljava/lang/String;

    iget-object p0, p0, Ldv;->d:Ljava/lang/String;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->q0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
