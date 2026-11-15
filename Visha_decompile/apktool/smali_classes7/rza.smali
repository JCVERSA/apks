.class public final synthetic Lrza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrza;->a:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    check-cast p1, Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->F(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/app/audio/ITranAudioVolumeListener;)Lcom/transsion/hubsdk/core/app/TranThubActivityManager$TranAudioVolumeListener;

    move-result-object p0

    return-object p0
.end method
