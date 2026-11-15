.class public final synthetic Llyc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llyc;->b:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Llyc;->b:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    check-cast p1, Ljava/util/Locale;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->setAudioLocale(Ljava/util/Locale;)V

    return-void
.end method
