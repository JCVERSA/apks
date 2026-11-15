.class public final synthetic Lr28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr28;->b:Ljava/lang/String;

    iput-object p2, p0, Lr28;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr28;->b:Ljava/lang/String;

    iget-object p0, p0, Lr28;->c:Ljava/lang/String;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->l(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method
