.class public final synthetic Lh58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1}, Lcom/transsion/audio/fragments/PlayListFragment;->D2(Lcom/transsion/dbdata/beans/media/AudioItem;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
