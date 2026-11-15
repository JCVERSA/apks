.class public final synthetic Lwu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwu;->b:Ljava/lang/String;

    iput-object p2, p0, Lwu;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lwu;->b:Ljava/lang/String;

    iget-object p0, p0, Lwu;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    check-cast p1, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->u0(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method
